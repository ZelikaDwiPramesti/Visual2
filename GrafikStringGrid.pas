unit GrafikStringGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    cbb1: TComboBox;
    e1: TEdit;
    cbb2: TComboBox;
    b1: TButton;
    b2: TButton;
    SG1: TStringGrid;
    cht1: TChart;
    psrs1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
SG1.RowCount    := 1;
SG1.ColCount    := 4;
SG1.Cells [0,0] := 'NO';
SG1.Cells [1,0] := 'JUMLAH TERDAFTAR';
SG1.Cells [2,0] := 'FAKULTAS';
SG1.Cells [3,0] := 'TAHUN ANGKATAN';

SG1.ColWidths[0] := 30;
SG1.ColWidths[1] := 170;
SG1.ColWidths[2] := 90;
SG1.ColWidths[3] := 170;
end;

procedure TForm6.b1Click(Sender: TObject);
begin
SG1.RowCount := SG1.RowCount+1;
SG1.Cells[0,SG1.RowCount -1] := IntToStr(SG1.RowCount-1);
SG1.Cells[1,SG1.RowCount -1] := e1.Text;
SG1.Cells[2,SG1.RowCount -1] := cbb2.Text;
SG1.Cells[3,SG1.RowCount -1] := cbb1.Text;
end;

procedure TForm6.b2Click(Sender: TObject);
var i:Integer;
begin
for i := 1 to SG1.RowCount-1 do
    begin
      cht1.Series[0].Add(StrToFloat(SG1.Cells[1,i]), SG1.Cells[2,i]);
end;

end;
end.

