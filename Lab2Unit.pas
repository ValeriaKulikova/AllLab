unit Lab2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FileCtrl, ExtCtrls;

type
  TLab2Form = class(TForm)
    Panel1: TPanel;
    StaticText1: TStaticText;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Panel2: TPanel;
    FileListBox2: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    DriveComboBox2: TDriveComboBox;
    FilterComboBox2: TFilterComboBox;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lab2Form: TLab2Form;

implementation

{$R *.dfm}



procedure TLab2Form.BitBtn1Click(Sender: TObject);
begin
  close();
end;

procedure TLab2Form.Button1Click(Sender: TObject);
var S,D:TFileStream;
begin
  S:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  D:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite OR fmCreate);
  D.CopyFrom(S,S.Size);
  D.Free;
  S.Free;
  showmessage('Копирование прошло успешно');
end;

procedure TLab2Form.Button2Click(Sender: TObject);
var s,d:TFileStream;
a:integer;
begin
  s:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  d:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite or fmCreate);
   for a:=1 to s.Size do   //Вместо s.size можно вставить любое число(кол-во копируемых символов)
   begin
     d.CopyFrom(s,1);
     end;
  showmessage('Копирование по частям прошло успешно');
  d.Free;
  s.Free;
end;

end.
