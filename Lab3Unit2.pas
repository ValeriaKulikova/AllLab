unit Lab3Unit2;

interface

uses
  Classes, SysUtils;

type
  tnew = class(TThread)
  private
  index:integer;
    procedure UpdateLabel;
  protected
    procedure Execute; override;
  end;

implementation

uses Lab3Unit;
procedure tnew.UpdateLabel;
begin
Lab3Form.Label1.Caption:=IntToStr(Index);
end;

procedure tnew.Execute;
begin
  index:=1;
  while index>0 do
  begin
  Synchronize(UpdateLabel);
  Inc(index);
  if index>100000 then
  index:=0;
  if terminated then exit;
  end;
end;

end.