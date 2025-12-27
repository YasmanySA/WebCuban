program WebCuban;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form34},
  onat in 'onat.pas' {fOnat},
  frame in 'frame.pas' {appframe: TFrame},
  minjus in 'minjus.pas' {f_minjus},
  data in 'data.pas' {dm: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  JsonDataObjects in 'JsonDataObjects.pas',
  uJsonHandler in 'uJsonHandler.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TfOnat, fOnat);
  Application.CreateForm(Tf_minjus, f_minjus);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
