unit Lab1Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, StdCtrls, ExtCtrls, FileCtrl, Buttons;

type
  TLab1Form = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ImageList1: TImageList;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Panel1: TPanel;
    StaticText1: TStaticText;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    StaticText2: TStaticText;
    Panel4: TPanel;
    FileListBox2: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    DriveComboBox2: TDriveComboBox;
    FilterComboBox2: TFilterComboBox;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    FileListBox3: TFileListBox;
    DirectoryListBox3: TDirectoryListBox;
    DriveComboBox3: TDriveComboBox;
    FilterComboBox3: TFilterComboBox;
    StaticText3: TStaticText;
    BitBtn3: TBitBtn;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DirectoryListBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lab1Form: TLab1Form;
  a,b,c,d: string;

implementation

{$R *.dfm}

procedure TLab1Form.BitBtn1Click(Sender: TObject);
begin
  Close();
end;

procedure TLab1Form.Button1Click(Sender: TObject);
begin
  a:=FileListBox2.FileName;
  b:=a;
  showmessage('Вы выбрали файл: '+b);
end;

procedure TLab1Form.Button2Click(Sender: TObject);
begin
  c:=DirectoryListBox2.Directory;
  d:=c+'\'+extractfilename(b);
  showmessage('Копируем в папку: '+d);
end;

procedure TLab1Form.DirectoryListBox2Change(Sender: TObject);
begin
  c:=DirectoryListBox2.Directory;
end;

procedure TLab1Form.Button3Click(Sender: TObject);
begin
  copyfile(pchar(b),pchar(d), true);
  showmessage('Копирование прошло успешно');
end;

procedure TLab1Form.Button4Click(Sender: TObject);
var
  e: TextFile;
begin
  assignfile (e, 'NewFile.txt');
  rewrite(e);
  showmessage('Новый файл создан')
end;

procedure TLab1Form.Button5Click(Sender: TObject);
begin
  createdir(PChar(DirectoryListBox3.Directory + '\' + edit1.Text));
  showmessage('Новая папка создана');
end;

procedure TLab1Form.Button6Click(Sender: TObject);
begin
  deleteFile(PChar(FileListBox3.FileName));
  showmessage('Файл успешно удалён');
end;

function DeleteDir(Dir: string): boolean;
Var
  Found: integer;
  SearchRec: TSearchRec;
begin
  result:=false;
  if IOResult<>0 then;
  ChDir(Dir);
  if IOResult<>0 then begin
  ShowMessage('Не могу войти в каталог: '+Dir); exit;
  end;
  Found:= FindFirst('*.*', faAnyFile, SearchRec);
  while Found = 0 do begin
  if (SearchRec.Name<>'.')and(SearchRec.Name<>'..') then
  if (SearchRec.Attr and faDirectory)<>0 then begin
  if not DeleteDir(SearchRec.Name) then exit;
  end else
  if not DeleteFile(SearchRec.Name) then begin
  ShowMessage('Не могу удалить файл: '+SearchRec.Name); exit;
  end;
  Found:= FindNext(SearchRec);
  end;
  FindClose(SearchRec);
  ChDir('..'); RmDir(Dir);
  result:=IOResult=0;
end;

procedure TLab1Form.Button7Click(Sender: TObject);
begin
  deleteDir(PChar(DirectoryListBox3.Directory + '\' ));
  showmessage('Папка успешно удалена');
end;


end.
