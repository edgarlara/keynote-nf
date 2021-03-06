unit kn_TemplateMng;

interface
uses wideStrings;

var
    Template_Folder : wideString;
    Template_LastWasFormatted : boolean;
    LastTemplateUsed : wideString;

    // template functions
    procedure CreateTemplate;
    procedure InsertTemplate( tplFN : wideString );
    procedure LoadTemplateList;
    procedure RemoveTemplate;
    function GetTemplateIconIndex( const fn : wideString ) : integer;


implementation
uses
    Forms, Classes, Controls, Dialogs, StdCtrls, SysUtils,
    gf_misc, gf_files, gf_miscvcl,
    kn_Global, kn_Const, kn_Info, kn_Main, kn_RTFUtils, kn_NewTemplate, kn_NoteFileMng,
    TntClasses, TntSysUtils;

resourcestring
  STR_01 = 'Template "%s" already exists. Overwrite existing template?';
  STR_02 = 'Template "%s" created.';
  STR_03 = 'Select template to insert';
  STR_04 = 'OK to delete selected template "%s"?';


procedure LoadTemplateList;
var
  i : integer;
  list : TWideStringList;
begin
  with Form_Main do begin
      ListBox_ResTpl.Items.BeginUpdate;
      list := TWideStringList.Create;
      try
        try
          ListBox_ResTpl.Items.Clear;

          // we must run GetFilesInFolder twice:
          // once for *.rtf, and once for *.txt files
          // This RELIES on the fact that GetFilesInFolder
          // does NOT clear the TStrings passed to it.
          GetFilesInFolder(
            Template_Folder,
            '*'+Ext_RTF,
            false,
            false,
            list
          );
          GetFilesInFolder(
            Template_Folder,
            '*'+Ext_TXT,
            false,
            false,
            list
          );

          for i := 1 to list.Count do
          begin
            ListBox_ResTpl.AddItem(
              list[pred( i )],
              cbUnchecked,
              GetTemplateIconIndex( list[pred( i )] )
            );
          end;

        except
        end;
      finally
        ListBox_ResTpl.Items.EndUpdate;
        if ( ListBox_ResTpl.Items.Count > 0 ) then
          ListBox_ResTpl.ItemIndex := 0;
        List.Free;
      end;
  end;
end; // LoadTemplateList

function GetTemplateIconIndex( const fn : wideString ) : integer;
begin
  result := TEMPLATE_IMAGE_BASE;
  if ( WideExtractfileext( lowercase( fn )) <> ext_RTF ) then
    inc( result );
end; // GetTemplateIconIndex

procedure CreateTemplate;
var
  Form_Template : TForm_Template;
  UseSelection, ReplaceExisting : boolean;
  fn: wideString;
  s : string;
  F: TStream;
  i : integer;
begin
  with Form_Main do begin
      if ( not HaveNotes( true, true )) then exit;
      if ( not assigned( ActiveNote )) then exit;

      UseSelection := ( ActiveNote.Editor.SelLength > 0 );
      ReplaceExisting := false;

      if ( not checkfolder( 'Template', Template_Folder, true, true )) then
        exit;

      Form_Template := TForm_Template.Create( Form_Main );

      try
        with Form_Template do
        begin
          if UseSelection then
          begin
            RG_Source.ItemIndex := 0;
            Edit_Name.Text := MakeValidFilename( ActiveNote.Editor.SelTextW, [' '], MAX_FILENAME_LENGTH );
          end
          else
          begin
            RG_Source.ItemIndex := 1;
            RG_Source.Enabled := false;
            Edit_Name.Text := MakeValidFilename( ActiveNote.Name, [' '], MAX_FILENAME_LENGTH );
          end;
          CB_Formatted.Checked := Template_LastWasFormatted;
        end;
        if ( Form_Template.ShowModal = mrOK ) then
        begin
          with Form_Template do
          begin
            fn := trim( Edit_Name.Text );
            Template_LastWasFormatted := CB_Formatted.Checked;
            UseSelection := (( RG_Source.ItemIndex = 0 ) and ( RG_Source.Enabled ));
          end;

          if Template_LastWasFormatted then
            fn := Template_Folder + fn + ext_RTF
          else
            fn := Template_Folder + fn + ext_TXT;

          if WideFileexists( fn ) then
          begin
            if ( DoMessageBox( WideFormat(
                STR_01,
                [WideExtractFilename( fn )]
              ), mtConfirmation, [mbOK,mbCancel], 0 ) <> mrOK ) then
              exit
            else
              ReplaceExisting := true;
          end;

          if ReplaceExisting then
          begin
            i := ListBox_ResTpl.Items.IndexOf( WideExtractFilename( fn ));
            if ( i >= 0 ) then
              ListBox_ResTpl.Items.Delete( i );
          end;

          s := GetRichText(
            ActiveNote.Editor,
            Template_LastWasFormatted,
            UseSelection
          );

          if ( s <> '' ) then
          begin
            try
              F:= TTntFileStream.Create( fn, ( fmCreate or fmShareExclusive ));
            except
              on E : Exception do
              begin
                messagedlg( E.Message, mtError, [mbOK], 0 );
                exit;
              end;
            end;

            try
              try
                F.WriteBuffer(PChar(s)^, length(s));
                if KeyOptions.ResPanelShow then
                begin
                  i := ListBox_ResTpl.AddItem(
                    WideExtractFilename( fn ),
                    cbUnchecked,
                    GetTemplateIconIndex( fn )
                  );
                  ListBox_ResTpl.ItemIndex := i;
                end;
                StatusBar.Panels[PANEL_HINT].Text := Format(
                    STR_02,
                    [WideExtractFilename( fn )]
                  );
              except
                on E : Exception do
                begin
                  messagedlg( E.Message, mtError, [mbOK], 0 );
                  exit;
                end;
              end;
            finally
              F.Free;
            end;
          end;

        end;
      finally
        Form_Template.Free;
      end;
  end;

end; // CreateTemplate

procedure InsertTemplate( tplFN : wideString );
var
  oldFilter : string;
  list : TTntStringList;
  asRTF : boolean;
begin
  with Form_Main do begin
      if ( not HaveNotes( true, true )) then exit;
      if ( not assigned( ActiveNote )) then exit;

      if ( not checkfolder( 'Template', Template_Folder, true, false )) then
        exit;

      if ( tplFN <> '' ) then
      begin
        if ( pos( '\', tplFN ) = 0 ) then
          tplFN := Template_Folder + tplFN;
      end
      else
      begin

        with OpenDlg do
        begin
          oldFilter := Filter;
          Filter := FILTER_TEMPLATES;
          FilterIndex := 1;
          Title := STR_03;
          Options := Options - [ofAllowMultiSelect];
          InitialDir := Template_Folder;
          FileName := LastTemplateUsed;
        end;

        try
          if OpenDlg.Execute then
          begin
            tplFN := normalFN( OpenDlg.FileName );
          end
          else
          begin
            exit;
          end;
        finally
          OpenDlg.Filter := oldFilter;
        end;

      end;

      if ( not WideFileexists( tplFN )) then exit;

      asRTF := ExtIsRTF( WideExtractfileext( tplFN ));

      LastTemplateUsed := WideExtractFilename( tplFN );

      list := TTntStringList.Create;
      try
        try
          list.LoadFromFile( tplFN );
          PutRichText(
            list.Text,
            ActiveNote.Editor,
            asRTF,
            true
          );
        except
          on E : Exception do
          begin
            messagedlg( E.Message, mtError, [mbOK], 0 );
            exit;
          end;
        end;
      finally
        NoteFile.Modified := true;
        UpdateNoteFileState( [fscModified] );
        list.free;
      end;
  end;

end; // InsertTemplate

procedure RemoveTemplate;
var
  i : integer;
  fn : wideString;
begin
  with Form_Main do begin
      i := ListBox_ResTpl.ItemIndex;
      if ( i < 0 ) then exit;
      fn := Template_Folder + ListBox_ResTpl.Items[i];
      if ( DoMessageBox( Format(
        STR_04,
        [ListBox_ResTpl.Items[i]]
      ), mtConfirmation, [mbOK, mbCancel], 0 ) <> mrOK ) then exit;

      ListBox_ResTpl.Items.Delete( i );
      WideDeleteFile( fn );

      if ( ListBox_ResTpl.Items.Count > 0 ) then
        ListBox_ResTpl.ItemIndex := 0;
  end;

end; // RemoveTemplate

Initialization
    Template_Folder := properfoldername( extractfilepath( application.exename ) + _TEMPLATE_FOLDER );
    Template_LastWasFormatted := true;
    LastTemplateUsed := '';


end.
