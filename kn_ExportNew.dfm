�
 TFORM_EXPORTNEW 08  TPF0TForm_ExportNewForm_ExportNewLeftJTop� HelpContextNBorderStylebsDialogCaptionExport notesClientHeight�ClientWidth8Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenterShowHint	
OnActivateFormActivateOnCloseQueryFormCloseQueryOnCreate
FormCreatePixelsPerInch`
TextHeight 
TTntButton	Button_OKLeftToplWidthKHeightHintBegin exporting notesCaptionE&xportDefault	TabOrder OnClickButton_OKClick  
TTntButtonButton_CancelLeftdToplWidthKHeightHint Cancel and close this dialog boxCancel	CaptionCloseModalResultTabOrder  
TTntButtonButton_HelpLeft� ToplWidthKHeightCaptionHelpTabOrderOnClickButton_HelpClick  TPage95ControlPagesLeftTopWidth-Height\
ActivePageTab_OptionsHotTrackTabInactiveColor	clBtnFaceTabInactiveFont.CharsetDEFAULT_CHARSETTabInactiveFont.ColorclWindowTextTabInactiveFont.Height�TabInactiveFont.NameTahomaTabInactiveFont.Style TabOrder TTab95SheetTab_MainCaptionSource and target	GripAligngaLeft
ImageIndex�StaticPageIndex�
TabVisible	ExplicitLeft ExplicitTop ExplicitWidth ExplicitHeight8 TTntGroupBoxGroupBox_SourceLeftTopWidthHeight� Caption Source: What to export? TabOrder  TTntRadioButtonRB_CurrentNoteLeftTopWidth� HeightHint Click to export active note onlyCaption&Current noteChecked	TabOrder TabStop	  TTntRadioButtonRB_AllNotesLeftTopAWidthwHeightHint%Click to export all notes in the fileCaption
&All notesTabOrder  TTntRadioButtonRB_SelectedNotesLeftTopUWidthtHeightHint#Click to export only selected notesCaption&Selected notesTabOrder  
TTntButtonButton_SelectLeft� TopKWidthoHeightHintChoose which notes to exportCaptionSelect &Notes...TabOrderOnClickButton_SelectClick  TTntComboBoxCombo_TreeSelectionLeft#Top(Width� HeightHint2For tree notes, select what part of tree to exportStylecsDropDownList
ItemHeight TabOrder  TTntCheckBoxCheckBox_ExcludeHiddenNodesLeftTopqWidth� HeightHintDon't export nodes hiddenCaptionExclude &hidden nodesTabOrder   TTntGroupBoxGroupBox_TargetLeftTop� WidthHeight� Caption# Target: Where and how to export?  TabOrder 	TTntLabelLabel1LeftTopWidth|HeightCaption&Format for exported files:FocusControlCombo_Format  	TTntLabelLabel2LeftTopAWidth� HeightCaption&Directory for exported files:FocusControlEdit_Folder  TToolbarButton97TB_OpenDlgDirLeft� TopPWidthHeight
AllowAllUp	
GroupIndexFlat
ImageIndexImagesForm_Main.IMG_ToolbarRepeatIntervaleOnClickTB_OpenDlgDirClick  TTntComboBoxCombo_FormatLeftTop#Width� HeightHint Select format for exported filesStylecsDropDownList
ItemHeight TabOrder OnClickCombo_FormatClick  TTntCheckBoxCheckBox_PromptOverwriteLeftTopnWidth� HeightHint,Warn if file by the same name already existsCaption &Prompt before overwriting filesChecked	State	cbCheckedTabOrder  TTntEditEdit_FolderLeftTopPWidth� HeightHint*Folder where exported files will be placedFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder  TTntCheckBoxCheckBox_AskLeftTop� Width� HeightHint+Manually supply name for each exported fileCaption Pro&mpt for individual filenamesTabOrder    TTab95SheetTab_OptionsCaptionOptions	GripAligngaLeft
ImageIndex�StaticPageIndex�
TabVisible	ExplicitLeft ExplicitTop ExplicitWidth ExplicitHeight  TTntGroupBox	GroupBox1LeftTopWidthHeight� Caption Optional headings TabOrder  TTntCheckBoxCB_IncNoteHeadingLeftTopWidth� HeightCaptionInclude &note headingsTabOrder   TTntCheckBoxCB_IncNodeHeadingLeftTopAWidth� HeightCaptionInclude no&de headingsTabOrder  TTntComboBoxEdit_NodeHeadLeft#TopUWidth� HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ItemHeight 
ParentFontTabOrder  TTntComboBoxEdit_NoteHeadLeft#Top(Width� HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ItemHeight 
ParentFontTabOrder  TBitBtn
Btn_TknHlpLeft#TopsWidth� HeightHintHelp for auto-naming tree nodesCaption&Help on headingsTabOrderOnClickBtn_TknHlpClick
Glyph.Data
�   �   BM�       v   (               �                       �  �   �� �   � � ��  ��� ���   � ���  �� �   ��� ��  ��� ������
ڭ��������wwwڭ�   � }���������D�����������G�����t������G���G�D���D�D����DH�������������
��     �   TTntRadioGroupRG_NodeModeLeftTop� WidthHeightBCaption# &When exporting tree-type notes...	ItemIndex Items.Strings*Put all tree nodes in a single target file*Export each node to a separate target file TabOrder  TTntRadioGroupRG_HTMLLeftTop� Width HeightQMargins.TopMargins.BottomCaption &Method for exporting HTML: TabOrderOnClickRG_HTMLClick   TTab95SheetTab_TreePadCaptionTreePad options	GripAligngaLeft
ImageIndex�StaticPageIndex�
TabVisible	ExplicitLeft ExplicitTop ExplicitWidth ExplicitHeight  TTntRadioGroupRG_TreePadVersionLeftTopWidthHeightBCaption Target &TreePad version 	ItemIndex Items.Strings&Export to TreePad freeware (text only),Export to Treepad shareware (formatted text) TabOrder   TTntRadioGroupRG_TreePadModeLeftTopKWidthHeightBCaption T&arget file mode 	ItemIndex Items.Strings,Create a TreePad file for each exported note3Create a Treepad file containing all exported notes TabOrder  TTntRadioGroupRG_TreePadMasterLeftTop� WidthHeightBCaption &Compatibility top-level node 	ItemIndex Items.StringsCreate only when necessaryAlways create TabOrder    TTntSaveDialogSaveDlgOptionsofHideReadOnlyofPathMustExist TitleSelect target filenameLeft	Topl   