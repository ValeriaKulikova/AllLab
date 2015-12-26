unit Lab3Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Lab3Unit2;

type
  TLab3Form = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
  co:tnew;
  public
    { Public declarations }
  end;

var
  Lab3Form: TLab3Form;
  prov:boolean;

implementation

{$R *.dfm}

procedure TLab3Form.BitBtn1Click(Sender: TObject);
begin
  close();
end;

procedure TLab3Form.BitBtn2Click(Sender: TObject);
begin
  if prov=false then
  co:=tnew.Create(true)
  else
  prov:=false;
  co.Resume;
  co.Priority:=tpLower;
end;

procedure TLab3Form.BitBtn3Click(Sender: TObject);
begin
  co.Suspend;
  prov:=true;
end;

procedure TLab3Form.BitBtn4Click(Sender: TObject);
begin
  co.Terminate;
  co.Free;
end;

end.
