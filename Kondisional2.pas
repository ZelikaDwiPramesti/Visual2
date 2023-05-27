unit Kondisional2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e6: TEdit;
    e7: TEdit;
    e8: TEdit;
    e11: TEdit;
    e12: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    e4: TEdit;
    e5: TEdit;
    e9: TEdit;
    e10: TEdit;
    e13: TEdit;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.b1Click(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, hasil : real;
  bb1, bb2, bb3, bb4, bb5 : real;
  grade, ket : string;

begin
//berfungsi untuk mengambil data nilai
        nil1 := StrToFloat(e1.Text);
        nil2 := StrToFloat(e2.Text);
        nil3 := StrToFloat(e3.Text);
        nil4 := StrToFloat(e4.Text);
        nil5 := StrToFloat(e5.Text);
  //mengambil pesan data bobot
        bb1 := StrToFloat(e6.text)/100;
        bb2 := StrToFloat(e7.text)/100;
        bb3 := StrToFloat(e8.text)/100;
        bb4 := StrToFloat(e9.text)/100;
        bb5 := StrToFloat(e10.text)/100;
  //menghitung nilai akhir
        hasil := nil1*bb1 + nil2*bb2 + nil3*bb3 + nil4*bb4 + nil5*bb5;
  //menentukan grade nilai
        if (hasil >= 80) then
        grade := 'A'
        else
        if (hasil >= 70) then
        grade := 'B'
        else
        if (hasil >= 60) then
        grade := 'C'
        else
        if (hasil >= 50) then
        grade := 'D'
        else
        grade := 'E';
  //menentukan keterangan hasil
        if ((grade = 'A')or(grade='B')or(grade='C')) then
          ket := 'LULUS'
        else
          ket := 'TIDAK LULUS';
  //hasil dari proses...
        e11.Text := FloatToStr(hasil);
        e12.Text := grade;
        e13.Text := ket;

end;

procedure TForm5.b2Click(Sender: TObject);
begin
e1.Text := '0';
e2.Text := '0';
e3.Text := '0';
e4.Text := '0';
e5.Text := '0';
e11.Text := '0';
e12.Text := '';
e13.Text := '';

e1.SetFocus;
end;

procedure TForm5.b3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
