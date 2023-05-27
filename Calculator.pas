unit Calculator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    b1: TButton;
    b2: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
    e3.text:=IntToStr(StrToInt(e1.text)+strtoint(e2.Text));
end;

procedure TForm2.b2Click(Sender: TObject);
begin
   Close;
end;

end.
