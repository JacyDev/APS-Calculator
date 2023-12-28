unit APS_SCORE_CALC_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnlWITS_APS: TPanel;
    lblHeading: TLabel;
    lblHeading2: TLabel;
    edtMaths: TEdit;
    edtEng: TEdit;
    edtLo: TEdit;
    edtOtherLang: TEdit;
    edtSubject1: TEdit;
    edtSubject2: TEdit;
    edtSubject3: TEdit;
    btn8th: TButton;
    edtSubject4: TEdit;
    btnNext: TButton;
    Label1: TLabel;
    pnlAPSdisplay: TPanel;
    lblAPStxt: TLabel;
    lblAPS: TLabel;
    pnlNWU_APS: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtMathsNWU: TEdit;
    edtEngNWU: TEdit;
    edtOtherNWU: TEdit;
    edtEL2NWU: TEdit;
    edtEL1NWU: TEdit;
    edtEL3NWU: TEdit;
    btnNextNWU: TButton;
    Label5: TLabel;
    pnlSelectUNI: TPanel;
    cmbUNI: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    BtnUNIselect: TButton;
    procedure btn8thClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure edtMathsClick(Sender: TObject);
    procedure edtLoClick(Sender: TObject);
    procedure edtEngClick(Sender: TObject);
    procedure edtOtherLangClick(Sender: TObject);
    procedure edtSubject1Click(Sender: TObject);
    procedure edtSubject2Click(Sender: TObject);
    procedure edtSubject3Click(Sender: TObject);
    procedure edtSubject4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtMathsNWUClick(Sender: TObject);
    procedure edtEngNWUClick(Sender: TObject);
    procedure edtEL1NWUClick(Sender: TObject);
    procedure edtOtherNWUClick(Sender: TObject);
    procedure edtEL2NWUClick(Sender: TObject);
    procedure edtEL3NWUClick(Sender: TObject);
    procedure btnNextNWUClick(Sender: TObject);
    procedure BtnUNIselectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn8thClick(Sender: TObject);
begin
//Enable 8th subject
edtSubject4.Enabled := True;
btn8th.Hide;
end;

procedure TForm1.btnNextClick(Sender: TObject);
var
  iEngAPS, iMathsAPS, iLoAPS, iOtherAPS : Integer;
  iSubject1APS, iSubject2APS, iSubject3APS, iSubject4APS : Integer;
  iEng, iMaths, iLo, iOther : Integer;
  iSubject1, iSubject2, iSubject3, iSubject4 : Integer;
  iAPS8, iAPS7 : Integer;
begin
//Hide 1st Panel
pnlWITS_APS.Hide;

//Assign values
iMaths := StrToInt(edtMaths.Text);
iEng := StrToInt(edtEng.Text);
iLo := StrToInt(edtLo.Text);
iOther := StrToInt(edtOtherLang.Text);
iSubject1 := StrToInt(edtSubject1.Text);
iSubject2 := StrToInt(edtSubject2.Text);
iSubject3 := StrToInt(edtSubject3.Text);
iSubject4 := StrToInt(edtSubject4.Text);
lblAPS.Caption := '00';

//Initialize APS var
iEngAPS := 0;
iMathsAPS := 0;
iLoAPS := 0;
iOtherAPS := 0;
iSubject1APS := 0;
iSubject2APS := 0;
iSubject3APS := 0;
iSubject4APS := 0;
iAPS8 := 0;
iAPS7 := 0;

//Calculate the APS score of Maths
if iMaths >= 90
  then iMathsAPS := 10
else if iMaths >= 80
  then iMathsAPS := 9
else if iMaths >= 70
  then iMathsAPS := 8
else if iMaths >= 60
  then iMathsAPS := 7
else if iMaths >= 50
  then iMathsAPS := 4
else if iMaths >= 40
  then iMathsAPS := 3
else if iMaths >= 30
  then iMathsAPS := 0
else if iMaths >= 0
  then iMathsAPS := 0;

//Calculate the APS score of English
if iEng >= 90
  then iEngAPS := 10
else if iEng >= 80
  then iEngAPS := 9
else if iEng >= 70
  then iEngAPS := 8
else if iEng >= 60
  then iEngAPS := 7
else if iEng >= 50
  then iEngAPS := 4
else if iEng >= 40
  then iEngAPS := 3
else if iEng >= 30
  then iEngAPS := 0
else if iEng >= 0
  then iEngAPS := 0;

//Calculate the APS score of Lo
if iLo >= 90
  then iLoAPS := 4
else if iLo >= 80
  then iLoAPS := 3
else if iLo >= 70
  then iLoAPS := 2
else if iLo >= 60
  then iLoAPS := 1
else if iLo >= 50
  then iLoAPS := 0
else if iLo >= 40
  then iLoAPS := 0
else if iLo >= 30
  then iLoAPS := 0
else if iLo >= 0
  then iLoAPS := 0;

//Calculate the APS score of Subject 1
if iSubject1 >= 90
  then iSubject1APS := 8
else if iSubject1 >= 80
  then iSubject1APS := 7
else if iSubject1 >= 70
  then iSubject1APS := 6
else if iSubject1 >= 60
  then iSubject1APS := 5
else if iSubject1 >= 50
  then iSubject1APS := 4
else if iSubject1 >= 40
  then iSubject1APS := 3
else if iSubject1 >= 30
  then iSubject1APS := 0
else if iSubject1 >= 0
  then iSubject1APS := 0;

//Calculate the APS score of Subject 2
if iSubject2 >= 90
  then iSubject2APS := 8
else if iSubject2 >= 80
  then iSubject2APS := 7
else if iSubject2 >= 70
  then iSubject2APS := 6
else if iSubject2 >= 60
  then iSubject2APS := 5
else if iSubject2 >= 50
  then iSubject2APS := 4
else if iSubject2 >= 40
  then iSubject2APS := 3
else if iSubject2 >= 30
  then iSubject2APS := 0
else if iSubject2 >= 0
  then iSubject2APS := 0;

//Calculate the APS score of Subject 3
if iSubject3 >= 90
  then iSubject3APS := 8
else if iSubject3 >= 80
  then iSubject3APS := 7
else if iSubject3 >= 70
  then iSubject3APS := 6
else if iSubject3 >= 60
  then iSubject3APS := 5
else if iSubject3 >= 50
  then iSubject3APS := 4
else if iSubject3 >= 40
  then iSubject3APS := 3
else if iSubject3 >= 30
  then iSubject3APS := 0
else if iSubject3 >= 0
  then iSubject3APS := 0;

//Calculate the APS score of Subject 4
if iSubject4 >= 90
  then iSubject4APS := 8
else if iSubject4 >= 80
  then iSubject4APS := 7
else if iSubject4 >= 70
  then iSubject4APS := 6
else if iSubject4 >= 60
  then iSubject4APS := 5
else if iSubject4 >= 50
  then iSubject4APS := 4
else if iSubject4 >= 40
  then iSubject4APS := 3
else if iSubject4 >= 30
  then iSubject4APS := 0
else if iSubject4 >= 0
  then iSubject4APS := 0;

//Assign total AP Score (8 Subjects) and (7 Subjects)
if (edtSubject4.Enabled = True)
  then iAPS8 := iMathsAPS + iEngAPS + iLoAPS + iOtherAPS + iSubject1APS + iSubject2APS +
       iSubject3APS + iSubject4APS
else if (edtSubject4.Enabled = False)
  then iAPS7 := iMathsAPS + iEngAPS + iLoAPS + iOtherAPS + iSubject1APS + iSubject2APS +
       iSubject3APS;

if edtSubject4.Enabled = true
  then lblAPS.Caption := IntToStr(iAPS8)
else if edtSubject4.Enabled = false
  then lblAPS.Caption := IntToStr(iAPS7);


end;

procedure TForm1.btnNextNWUClick(Sender: TObject);
var
  iMathsNWU, iEngNWU, iOtherNWU, iEl1NWU, iEl2NWU, iEl3NWU : Integer;
  iApsMathsNWU, iApsEngNWU, iApsOtherNWU, iApsEl1NWU, iApsEl2NWU, iApsEl3NWU : Integer;
begin
//NWU
//Declare Values
iMathsNWU := StrToInt(edtMathsNWU.Text);
iEngNWU := StrToInt(edtEngNWU.Text);
iOtherNWU := StrToInt(edtOtherNWU.Text);
iEl1NWU := StrToInt(edtEl1NWU.Text);
iEl2NWU := StrToInt(edtEL2NWU.Text);
iEl3NWU := StrToInt(edtEL3NWU.Text);

iMathsNWU := 0;
iEngNWU := 0;
iOtherNWU := 0;
iEl1NWU := 0;
iEl2NWU := 0;
iEl3NWU := 0;

//Percent to APS
//NWU Maths
if iMathsNWU >= 90 then
iApsMathsNWU := 8
else if iMathsNWU >= 80 then
iApsMathsNWU := 7
else if iMathsNWU >= 70 then
iApsMathsNWU := 6
else if iMathsNWU >= 60 then
iApsMathsNWU := 5
else if iMathsNWU >= 50 then
iApsMathsNWU := 4
else if iMathsNWU >= 40 then
iApsMathsNWU := 3
else if iMathsNWU >= 30 then
iApsMathsNWU := 2
else if iMathsNWU >= 0 then
iApsMathsNWU := 1;

//NWU Eng
if iEngNWU >= 90 then
iApsEngNWU := 8
else if iEngNWU >= 80 then
iApsEngNWU := 7
else if iEngNWU >= 70 then
iApsEngNWU := 6
else if iEngNWU >= 60 then
iApsEngNWU := 5
else if iEngNWU >= 50 then
iApsEngNWU := 4
else if iEngNWU >= 40 then
iApsEngNWU := 3
else if iEngNWU >= 30 then
iApsEngNWU := 2
else if iEngNWU >= 0 then
iApsEngNWU := 1;

//NWU other
if iOtherNWU >= 90 then
iApsOtherNWU := 8
else if iOtherNWU >= 80 then
iApsOtherNWU := 7
else if iOtherNWU >= 70 then
iApsOtherNWU := 6
else if iOtherNWU >= 60 then
iApsEngNWU := 5
else if iOtherNWU >= 50 then
iApsOtherNWU := 4
else if iOtherNWU >= 40 then
iApsOtherNWU := 3
else if iOtherNWU >= 30 then
iApsOtherNWU := 2
else if iOtherNWU >= 0 then
iApsOtherNWU := 1;

//NWU El1
if iEl1NWU >= 90 then
iApsEl1NWU := 8
else if iEl1NWU >= 80 then
iApsEl1NWU := 7
else if iEl1NWU >= 70 then
iApsEl1NWU := 6
else if iEl1NWU >= 60 then
iApsEl1NWU := 5
else if iEl1NWU >= 50 then
iApsEl1NWU := 4
else if iEl1NWU >= 40 then
iApsEl1NWU := 3
else if iEl1NWU >= 30 then
iApsEl1NWU := 2
else if iEl1NWU >= 0 then
iApsEl1NWU := 1;

//NWU El2
if iEl2NWU >= 90 then
iApsEl2NWU := 8
else if iEl2NWU >= 80 then
iApsEl2NWU := 7
else if iEl2NWU >= 70 then
iApsEl2NWU := 6
else if iEl2NWU >= 60 then
iApsEl2NWU := 5
else if iEl2NWU >= 50 then
iApsEl2NWU := 4
else if iEl2NWU >= 40 then
iApsEl2NWU := 3
else if iEl2NWU >= 30 then
iApsEl2NWU := 2
else if iEl2NWU >= 0 then
iApsEl2NWU := 1;

//El3
if iEl3NWU >= 90 then
iApsEl3NWU := 8
else if iEl3NWU >= 80 then
iApsEl3NWU := 7
else if iEl3NWU >= 70 then
iApsEl3NWU := 6
else if iEl3NWU >= 60 then
iApsEl3NWU := 5
else if iEl3NWU >= 50 then
iApsEl3NWU := 4
else if iEl3NWU >= 40 then
iApsEl3NWU := 3
else if iEl3NWU >= 30 then
iApsEl3NWU := 2
else if iEl3NWU >= 0 then
iApsEl3NWU := 1;

end;

procedure TForm1.BtnUNIselectClick(Sender: TObject);
begin
//Select Univerity
if cmbUni.ItemIndex = 0 then
  begin
    pnlWITS_APS.BringToFront;
    pnlSelectUNI.Hide;
    pnlWITS_APS.Show;
    pnlNWU_APS.Hide;
  end
else if cmbUNI.ItemIndex = 1 then
  begin
    pnlNWU_APS.BringToFront;
    pnlWITS_APS.Hide;
    pnlNWU_APS.Show;
    pnlSelectUNI.Hide;
  end;
end;

procedure TForm1.edtEL1NWUClick(Sender: TObject);
begin
edtEL1NWU.Clear;
end;

procedure TForm1.edtEL2NWUClick(Sender: TObject);
begin
edtEL2NWU.Clear;
end;

procedure TForm1.edtEL3NWUClick(Sender: TObject);
begin
edtEL3NWU.Clear;
end;

procedure TForm1.edtEngClick(Sender: TObject);
begin
edtEng.Clear;
end;

procedure TForm1.edtEngNWUClick(Sender: TObject);
begin
edtEngNWU.Clear;
end;

procedure TForm1.edtLoClick(Sender: TObject);
begin
edtLo.Clear;
end;

procedure TForm1.edtMathsClick(Sender: TObject);
begin
edtMaths.Clear;
end;

procedure TForm1.edtMathsNWUClick(Sender: TObject);
begin
edtMathsNWU.Clear;
end;

procedure TForm1.edtOtherLangClick(Sender: TObject);
begin
edtOtherLang.Clear;
end;

procedure TForm1.edtOtherNWUClick(Sender: TObject);
begin
edtOtherNWU.Clear;
end;

procedure TForm1.edtSubject1Click(Sender: TObject);
begin
edtSubject1.Clear;
end;

procedure TForm1.edtSubject2Click(Sender: TObject);
begin
edtSubject2.Clear;
end;

procedure TForm1.edtSubject3Click(Sender: TObject);
begin
edtSubject3.Clear;
end;

procedure TForm1.edtSubject4Click(Sender: TObject);
begin
edtSubject4.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
edtSubject4.Enabled := false;
end;

end.
