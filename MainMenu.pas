unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    File1: TMenuItem;
    Latihan1: TMenuItem;
    Database1: TMenuItem;
    Latihan11: TMenuItem;
    Latihan21: TMenuItem;
    Kondisional11: TMenuItem;
    Kondisional21: TMenuItem;
    GrafikStringGrid1: TMenuItem;
    GrafikStringGridRevisi1: TMenuItem;
    LatihanDatabase1: TMenuItem;
    Keluar1: TMenuItem;
    procedure Latihan11Click(Sender: TObject);
    procedure Latihan21Click(Sender: TObject);
    procedure Kondisional11Click(Sender: TObject);
    procedure Kondisional21Click(Sender: TObject);
    procedure GrafikStringGrid1Click(Sender: TObject);
    procedure GrafikStringGridRevisi1Click(Sender: TObject);
    procedure LatihanDatabase1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Calculator, Operator, Kondisional1, Kondisional2, GrafikStringGrid,
  GrafikStringGridRevisi, LatihanDatabase;

{$R *.dfm}

procedure TForm1.Latihan11Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.Latihan21Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.Kondisional11Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.Kondisional21Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.GrafikStringGrid1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.GrafikStringGridRevisi1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.LatihanDatabase1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.Keluar1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
