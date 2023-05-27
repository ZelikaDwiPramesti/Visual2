program MenuUtama;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form1},
  Calculator in 'Calculator.pas' {Form2},
  Operator in 'Operator.pas' {Form3},
  Kondisional1 in 'Kondisional1.pas' {Form4},
  Kondisional2 in 'Kondisional2.pas' {Form5},
  GrafikStringGrid in 'GrafikStringGrid.pas' {Form6},
  GrafikStringGridRevisi in 'GrafikStringGridRevisi.pas' {Form7},
  LatihanDatabase in 'LatihanDatabase.pas' {Form8},
  TambahDataLat in 'TambahDataLat.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
