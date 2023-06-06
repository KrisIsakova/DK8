unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TKalk }

  TKalk = class(TForm)
    Chisla1: TButton;
    Chisla0: TButton;
    Znaki1: TButton;
    Znaki2: TButton;
    Znaki3: TButton;
    Znaki4: TButton;
    Znak_MOD: TButton;
    Znak_CE: TButton;
    Znak_C: TButton;
    Znak_DIV: TButton;
    Chisla2: TButton;
    Chisla3: TButton;
    Chisla4: TButton;
    Chisla5: TButton;
    Chisla6: TButton;
    Chisla7: TButton;
    Chisla8: TButton;
    Chisla9: TButton;
    OknoChisel: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Znaki4Click(Sender: TObject);
    procedure Znak_CEClick(Sender: TObject);
    procedure Znak_CClick(Sender: TObject);
    procedure ClickButton(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
  private

  public

  end;

var
  Kalk: TKalk;
  a, b, c : Integer;
  znak : String;

implementation

{$R *.lfm}

{ TKalk }

procedure TKalk.ClickZnak(Sender: TObject);
begin
  a := StrToInt(OknoChisel.Text);
  OknoChisel.Clear;

  znak :=(Sender as TButton).Caption;


end;


procedure TKalk.ClickButton(Sender: TObject);
begin

  OknoChisel.Text:=OknoChisel.Text + (Sender as TButton).Caption;

end;


procedure TKalk.Znaki4Click(Sender: TObject);
begin
  b :=StrToInt(OknoChisel.Text);
  OknoChisel.Clear;
  case znak of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  'Mod':c:=a mod b;
  'Div':c:=a div b;
  end;

  OknoChisel.Text:= IntToStr(c);

end;

procedure TKalk.FormCreate(Sender: TObject);
begin
  ScaleBy(420, 480);
end;

procedure TKalk.Znak_CEClick(Sender: TObject);
begin
  OknoChisel.Clear;
end;

procedure TKalk.Znak_CClick(Sender: TObject);
begin
  OknoChisel.Clear;
  a:=0;
  b:=0;
  c:=0;
end;



end.

