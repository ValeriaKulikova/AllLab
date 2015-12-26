library DllLibrary;

uses
  SysUtils,
  Classes;

function lol(r: real): real; stdcall;
begin
  result:=r*2;
end;

{$R *.res}

exports
  lol index 1;
begin

end.
