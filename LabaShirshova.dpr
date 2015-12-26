program LabaShirshova;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  Lab1Unit in 'Lab1Unit.pas' {Lab1Form},
  Lab2Unit in 'Lab2Unit.pas' {Lab2Form},
  Lab3Unit in 'Lab3Unit.pas' {Lab3Form},
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  Lab4Unit in 'Lab4Unit.pas' {Lab4Form},
  Lab5Unit in 'Lab5Unit.pas' {Lab5Form},
  Lab6Unit in 'Lab6Unit.pas' {Lab6Form},
  Lab7Unit in 'Lab7Unit.pas' {Lab7Form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLab1Form, Lab1Form);
  Application.CreateForm(TLab2Form, Lab2Form);
  Application.CreateForm(TLab3Form, Lab3Form);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TLab4Form, Lab4Form);
  Application.CreateForm(TLab5Form, Lab5Form);
  Application.CreateForm(TLab6Form, Lab6Form);
  Application.CreateForm(TLab7Form, Lab7Form);
  Application.Run;
end.
