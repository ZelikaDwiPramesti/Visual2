unit Operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    e1: TEdit;
    e2: TEdit;
    b1: TButton;
    grp1: TGroupBox;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.b1Click(Sender: TObject);
begin
e3.text:= IntToStr(StrToInt(e1.Text)+strtoint(e2.text));
e4.text:= IntToStr(StrToInt(e1.Text)-strtoint(e2.text));
e5.text:= IntToStr(StrToInt(e1.Text)*strtoint(e2.text));
e6.text:= FloatToStr(StrTofloat(e1.Text)/strtofloat(e2.text));
end;

procedure TForm3.b2Click(Sender: TObject);
begin
e3.text:= IntToStr(StrToInt(e1.Text)+strtoint(e2.text));
end;

procedure TForm3.b3Click(Sender: TObject);
begin
  e4.text:= IntToStr(StrToInt(e1.Text)-strtoint(e2.text));
end;

procedure TForm3.b4Click(Sender: TObject);
begin
e5.text:= IntToStr(StrToInt(e1.Text)*strtoint(e2.text));
end;

procedure TForm3.b5Click(Sender: TObject);
begin
e6.text:= FloatToStr(StrTofloat(e1.Text)/strtofloat(e2.text));
end;

end.
