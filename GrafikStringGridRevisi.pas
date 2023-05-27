unit GrafikStringGridRevisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm7 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    cbb1: TComboBox;
    e1: TEdit;
    cbb2: TComboBox;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    SG1: TStringGrid;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    procedure b1Click(Sender: TObject);
    procedure charadd;
    procedure b2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.b1Click(Sender: TObject);
begin
SG1.RowCount := SG1.RowCount+1;
SG1.Cells[0,SG1.RowCount -1] := IntToStr(SG1.RowCount-1);
SG1.Cells[1,SG1.RowCount -1] := e1.Text;
SG1.Cells[2,SG1.RowCount -1] := cbb2.Text;
SG1.Cells[3,SG1.RowCount -1] := cbb1.Text;
charadd;
end;

procedure TForm7.charadd;
var i : Integer;
begin
cht1.series[0].Clear;
 for i := 1 to SG1.RowCount-1 do
 begin
   cht1.Series[0].Add(StrToFloat(SG1.Cells[1,i]),SG1.Cells[2,i]);
 end;
end;

procedure TForm7.b2Click(Sender: TObject);
var a,b : Integer;
begin
 a:=SG1.Selection.Bottom - SG1.Selection.Top+0;
    for b:= SG1.Selection.Bottom+2 to SG1.RowCount-1 do
    SG1.Rows[b-a] := SG1.Rows[b];
    SG1.RowCount := SG1.RowCount-1;
    charadd;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
SG1.RowCount := 1;
SG1.ColCount := 4;
SG1.Cells [0,0] := 'NO';
SG1.Cells [1,0] := 'JUMLAH TERDAFTAR';
SG1.Cells [2,0] := 'FAKULTAS';
SG1.Cells [3,0] := 'TAHUN ANGKATAN';

SG1.ColWidths[0] := 20;
SG1.ColWidths[1] := 170;
SG1.ColWidths[2] := 100;
SG1.ColWidths[3] := 120;
end;

procedure TForm7.b3Click(Sender: TObject);
begin
SG1.RowCount := SG1.RowCount-MAX_PATH;
charadd;
end;

end.
