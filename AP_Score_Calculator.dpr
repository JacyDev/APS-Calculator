program AP_Score_Calculator;

uses
  Vcl.Forms,
  APS_SCORE_CALC_u in 'APS_SCORE_CALC_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
