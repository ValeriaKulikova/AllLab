unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, StdCtrls, ExtCtrls, Buttons, jpeg;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    ImageList1: TImageList;
    Help: TMenuItem;
    About: TMenuItem;
    Lab1Button: TRadioButton;
    Lab2Button: TRadioButton;
    Panel1: TPanel;
    Lab3Button: TRadioButton;
    Label1: TLabel;
    Panel2: TPanel;
    Bevel1: TBevel;
    ChooseButton: TBitBtn;
    Image1: TImage;
    Bevel2: TBevel;
    ExitButton: TBitBtn;
    Lab4Button: TRadioButton;
    Lab5Button: TRadioButton;
    Lab6Button: TRadioButton;
    Lab7Button: TRadioButton;
    procedure AboutClick(Sender: TObject);
    procedure ChooseButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  AboutUnit, Lab1Unit, Lab2Unit, Lab3Unit, Lab4Unit, Lab5Unit, Lab6Unit,
  Lab7Unit;

{$R *.dfm}

procedure TMainForm.AboutClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

procedure TMainForm.ChooseButtonClick(Sender: TObject);
begin
  if Lab1Button.Checked then
    Lab1Form.ShowModal;
  if Lab2Button.Checked then
    Lab2Form.ShowModal;
  if Lab3Button.Checked then
    Lab3Form.ShowModal;
  if Lab4Button.Checked then
    Lab4Form.ShowModal;
  if Lab5Button.Checked then
    Lab5Form.ShowModal;
  if Lab6Button.Checked then
    Lab6Form.ShowModal;
  if Lab7Button.Checked then
    Lab7Form.ShowModal;
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  Close();
end;

end.
