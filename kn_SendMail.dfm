�
 TFORM_MAIL 0�  TPF0
TForm_Mail	Form_MailLeft�TopHelpContext�BorderStylebsDialogCaptionSend note via E-mailClientHeight<ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter
OnActivateFormActivateOnClose	FormCloseOnCloseQueryFormCloseQueryOnCreate
FormCreate	OnKeyDownFormKeyDownPixelsPerInch`
TextHeight 	TTntLabelLabel_StatusLeftTopWidth0HeightCaptionReady.Font.CharsetDEFAULT_CHARSET
Font.ColorclHighlightFont.Height�	Font.NameCourier New
Font.StylefsBold 
ParentFont  
TTntButton	Button_OKLeftTopWidthlHeightHintAccept settings and send noteCaption&E-mail noteDefault	TabOrder OnClickButton_OKClick  
TTntButtonButton_CancelLeft� TopWidthlHeightHint&Close dialog box without sending emailCaptionCancelTabOrderOnClickButton_CancelClick  TPageControlPagesLeftTopWidth�Height� 
ActivePageTab_SendTabOrder 	TTabSheetTab_SendCaptionMessage settings TTntGroupBoxGroupBox_SourceLeftTop Width� HeightmCaption What to send? TabOrder  TTntRadioButton
RB_CurrentLeftTopWidth� HeightHint Email only currently active noteCaption&Current noteChecked	TabOrder TabStop	  TTntRadioButtonRB_AllLeftTop(Width� HeightHint&Email ALL notes in currently open fileCaption
&All notesTabOrder  TTntRadioButtonRB_FileLeftTop<Width� HeightHintEmail the whole KeyNote fileCaption)&Whole file (recipient must have KeyNote)TabOrder  TTntCheckBoxCheckBox_ExcludeHiddenNodesLeftTopSWidth� HeightHintDon't export nodes hiddenCaptionExclude &hidden nodesTabOrder   TTntGroupBox	GroupBox1LeftTop Width� HeightmCaption Format TabOrder 	TTntLabelLabel7Left
TopFWidth?Height	AlignmenttaRightJustifyAutoSizeCaption
C&odepage:FocusControlCombo_Charset  TTntRadioButtonRB_PlainTextLeft
TopWidth� HeightHint%Send note text without RTF formattingCaptionAs &plain text (inline)Checked	TabOrder TabStop	  TTntRadioButtonRB_RTFLeft
Top(Width� HeightHint"Send formatted text as an RTF fileCaptionAs &RTF (attachment)TabOrder  TTntComboBoxCombo_CharsetLeftNTopAWidth~HeightHint)Codepage (KeyNote performs NO conversion)
ItemHeightTabOrderItems.Strings
ISO-8859-1
ISO-8859-2
ISO-8859-5
ISO-8859-9Windows-1250Windows-1251Windows-1253    TTntGroupBox	GroupBox2LeftTopsWidth�HeighteCaption Message information TabOrder 	TTntLabelLabel1LeftTopWidth5HeightAutoSizeCaption&To:FocusControlCombo_TO  	TTntLabelLabel2LeftTopKWidth5HeightAutoSizeCaption	&Subject:FocusControlEdit_Subject  	TTntLabelLabel3LeftTop2Width5HeightAutoSizeCaption&Cc:FocusControlCombo_CC  TTntComboBoxCombo_TOLeftHTopWidth�HeightHint.Enter recipient's address, or select from list
ItemHeightTabOrder   TTntEditEdit_SubjectLeftHTopFWidth�HeightHint+Enter the Subject line for the mail messageTabOrder  TTntComboBoxCombo_CCLeftHTop-Width�HeightHint1Enter additional address(es), or select from list
ItemHeightTabOrder    	TTabSheetTab_SMTPCaptionSMTP server settings TTntGroupBox	GroupBox3LeftTop Width�Height� TabOrder  	TTntLabelLabel4LeftTopWidthAHeightCaption&SMTP server:FocusControlEdit_SMTPServer  	TTntLabelLabel5LeftcTopWidthHeightCaption&Port:FocusControl	Edit_Port  	TTntLabelLabel6LeftTopFWidthzHeightCaption&From (your email address):FocusControl	Edit_From  	TTntLabelLabel8LeftTopsWidth|HeightCaption&Text to place before notesFocusControlEdit_FirstLine  TTntEditEdit_SMTPServerLeftTop#Width2HeightHint2Name of email server used for dispatching messages	MaxLengthTabOrder   TTntEdit	Edit_PortLeftcTop#Width3HeightHint(Mail server port number (or type "smtp")	MaxLengthTabOrder  TTntEdit	Edit_FromLeftTopUWidth2HeightHint%Your email address (The "From" field)	MaxLengthTabOrder  TTntCheckBoxCheckBox_LogLeftTop� Width2HeightHint,Keep a log of communication with SMTP serverCaption&Log exchange with SMTP serverTabOrder  TTntEditEdit_FirstLineLeftTop� Width2HeightHint6Optional text to be placed in the message before notes	MaxLengthTabOrder     
TTntButtonButton_HelpLeft�TopWidthlHeightCaption&HelpTabOrderOnClickButton_HelpClick  TSmtpCliSmtpCliTag 	LocalAddr0.0.0.0PortsmtpAuthTypesmtpAuthNoneCharSet
iso-8859-1ContentTypesmtpPlainText
OwnHeaders	OnDisplaySmtpCliDisplayOnHeaderLineSmtpCliHeaderLineOnRequestDoneSmtpCliRequestDoneLeft�Top  TGFLogGFLogActive	MaxLines	DateStamp	TimeStamp	UniqueFileNameAppendToFile	
ShowErrors	DeactivateOnError	Separator----- LOG SESSION ENDS -----Left�Top   