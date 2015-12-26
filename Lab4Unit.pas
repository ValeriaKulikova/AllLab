unit Lab4Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ImgList, ComCtrls;

type
  Tlol=function(r:real): real; stdcall;
  TLab4Form = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    Panel1: TPanel;
    StaticText1: TStaticText;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    StaticText2: TStaticText;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lab4Form: TLab4Form;

implementation
  function lol(r: real): real; stdcall; external 'DllLibrary';
{$R *.dfm}

procedure TLab4Form.Button1Click(Sender: TObject);
begin
  ShowMessage(FloatToStr(lol(10.5)));
end;

procedure TLab4Form.BitBtn1Click(Sender: TObject);
begin
  close();
end;

procedure TLab4Form.Button2Click(Sender: TObject);
var
  hndDLLHandle: THandle;
  lol: Tlol;
begin
// загружаем dll динамически
  hndDLLHandle := loadLibrary ('DllLibrary.dll');
  if hndDLLHandle <> 0 then
  begin
// получаем адрес функции
  @lol:=getProcAddress(hndDLLHandle,'lol');
// если адрес функции найден
  if addr (lol) <> nil then
  begin
  showMessage (floatToStr(lol(10.5)));
  end
  else
  showMessage ('Функция не существует');
  end
  else
  showMessage ('DLL не найдена');
end;

end.
