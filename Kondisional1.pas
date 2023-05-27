unit Kondisional1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    e7: TEdit;
    e8: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.b1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : Real;
  bb1, bb2, bb3 : Real;
  grade : string;

begin
//berfungsi untuk mengambil data nilai
      nil1 := StrToFloat(e1.Text);
      nil2 := StrToFloat(e2.Text);
      nil3 := StrToFloat(e3.Text);
//mengambil pesan data bobot
      bb1 := StrToFloat(e4.Text)/100;
      bb2 := StrToFloat(e5.Text)/100;
      bb3 := StrToFloat(e6.Text)/100;
//menghitung nilai akhir
      hasil := nil1*bb1 + nil2*bb2 + nil3*bb3;
//menentukan grade nilai
      if (hasil >= 80) then
      grade :='A'
      else
      if (hasil >= 70) then
      grade :='B'
      else
      if (hasil >= 60) then
      grade :='C'
      else
      if (hasil >= 50) then
      grade :='D'
      else
      grade :='E';
//Hasil dari proses...
e7.Text := FloatToStr(hasil);
e8.Text := grade;
end;

procedure TForm4.b2Click(Sender: TObject);
begin
e1.Text := '0';
e2.Text := '0';
e3.Text := '0';
e7.Text := '0';
e8.Text := '0';

e1.SetFocus;
end;

procedure TForm4.b3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
