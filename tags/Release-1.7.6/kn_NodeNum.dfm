�
 TFORM_NODENUM 0p  TPF0TForm_NodeNumForm_NodeNumLeft4Top� BorderStylebsDialogCaptionOutline node numberingClientHeight� ClientWidth�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenter
OnActivateFormActivateOnCloseQueryFormCloseQueryOnCreate
FormCreatePixelsPerInch`
TextHeight TButton	Button_OKLeft
Top� WidthKHeightHintAccept settings and executeCaptionOKDefault	ModalResultTabOrder  TButtonButton_CancelLeftZTop� WidthKHeightHintCancelCancel	CaptionCancelModalResultTabOrder  TRadioGroupRG_ScopeLeftTop Width� Height8Caption &Numbering scope 	ItemIndex Items.StringsApply numbering to whole tree"Apply numbering to current subtree TabOrder   TRadioGroup	RG_CurNumLeft� Top Width� HeighttCaption &Current numbering state 	ItemIndexItems.StringsNode names are not yet numberedNode names are already numbered!Auto-detect existing node numbers TabOrder  TRadioGroup	RG_MethodLeftTop<Width� Height8Caption Numbering &method 	ItemIndex Items.StringsAdd numbers to node namesReplace node names with numbers TabOrderOnClickRG_MethodClick  	TGroupBox	GroupBox1Left� TopxWidth� HeightGCaption Numbering style TabOrder TLabelLabel1Left
TopWidth^HeightCaption&Begin numbering at:FocusControlSpin_StartNum  	TSpinEditSpin_StartNumLeft
Top(Width=Height	MaxLengthMaxValue'MinValueTabOrder Value   	TGroupBox	GroupBox2LeftTopxWidth� HeightGCaption Numbering depthTabOrder TLabelLB_DepthLeft
Top-WidthOHeightCaption&Limit level depth:FocusControl
Spin_Depth  	TSpinEdit
Spin_DepthLeftdTop(Width=HeightEnabled	MaxLengthMaxValue'MinValueTabOrder Value  	TCheckBoxCB_FullDepthLeft
TopWidth� HeightCaption&Apply numbering to all levelsState	cbCheckedTabOrderOnClickCB_FullDepthClick   TButton
Btn_RemoveLeftTop� Width� HeightHint&Remove existing numbers from ALL nodesCaption&Remove numberingModalResult
TabOrder   