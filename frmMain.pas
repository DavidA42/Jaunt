unit Main;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls;

type
  TfrmMain = class(TForm)
    mnuMain: TMainMenu;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    FilePrintItem: TMenuItem;
    FilePrintSetupItem: TMenuItem;
    FileExitItem: TMenuItem;
    EditUndoItem: TMenuItem;
    EditCutItem: TMenuItem;
    EditCopyItem: TMenuItem;
    EditPasteItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpContentsItem: TMenuItem;
    HelpSearchItem: TMenuItem;
    HelpHowToUseItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    StatusLine: TStatusBar;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    PrintSetupDialog: TPrinterSetupDialog;
    SpeedBar: TPanel;
    btnNew: TSpeedButton;
    btnOpen: TSpeedButton;
    btnSave: TSpeedButton;
    btnCut: TSpeedButton;
    btnCopy: TSpeedButton;
    btnPaste: TSpeedButton;
    pnlCode: TPanel;
    pnlResults: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    tshData: TTabSheet;
    tshGraphics: TTabSheet;
    btnRun: TSpeedButton;  { &Paste }
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FileNew(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FileSaveAs(Sender: TObject);
    procedure FilePrint(Sender: TObject);
    procedure FilePrintSetup(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure EditUndo(Sender: TObject);
    procedure EditCut(Sender: TObject);
    procedure EditCopy(Sender: TObject);
    procedure EditPaste(Sender: TObject);
    procedure WindowTile(Sender: TObject);
    procedure WindowCascade(Sender: TObject);
    procedure WindowArrange(Sender: TObject);
    procedure HelpContents(Sender: TObject);
    procedure HelpSearch(Sender: TObject);
    procedure HelpHowToUse(Sender: TObject);
    procedure HelpAbout(Sender: TObject);
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

procedure TfrmMain.ShowHint(Sender: TObject);
begin
  StatusLine.SimpleText := Application.Hint;
end;

procedure TfrmMain.FileNew(Sender: TObject);
begin
  { Add code to create a new file }
end;

procedure TfrmMain.FileOpen(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    { Add code to open OpenDialog.FileName }
  end;
end;

procedure TfrmMain.FileSave(Sender: TObject);
begin
   { Add code to save current file under current name }
end;

procedure TfrmMain.FileSaveAs(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    { Add code to save current file under SaveDialog.FileName }
  end;
end;

procedure TfrmMain.FilePrint(Sender: TObject);
begin
  if PrintDialog.Execute then
  begin
    { Add code to print current file }
  end;
end;

procedure TfrmMain.FilePrintSetup(Sender: TObject);
begin
  PrintSetupDialog.Execute;
end;

procedure TfrmMain.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.EditUndo(Sender: TObject);
begin
  { Add code to perform Edit Undo }
end;

procedure TfrmMain.EditCut(Sender: TObject);
begin
  { Add code to perform Edit Cut }
end;

procedure TfrmMain.EditCopy(Sender: TObject);
begin
  { Add code to perform Edit Copy }
end;

procedure TfrmMain.EditPaste(Sender: TObject);
begin
  { Add code to perform Edit Paste }
end;

procedure TfrmMain.WindowTile(Sender: TObject);
begin
  Tile;
end;

procedure TfrmMain.WindowCascade(Sender: TObject);
begin
  Cascade;
end;

procedure TfrmMain.WindowArrange(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TfrmMain.HelpContents(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TfrmMain.HelpSearch(Sender: TObject);
const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

procedure TfrmMain.HelpHowToUse(Sender: TObject);
begin
  Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TfrmMain.HelpAbout(Sender: TObject);
begin
  { Add code to show program's About Box }
end;

end.



