unit LatihanDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids,
  DBGrids, StdCtrls, Buttons, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    b1: TBitBtn;
    dg1: TDBGrid;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    b3: TButton;
    b4: TButton;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    qry2: TADOQuery;
    b5: TButton;
    frxdDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxDetailJadwal: TfrxReport;
    frxdDBDataJadwal: TfrxDBDataset;
    procedure b1Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses TambahDataLat;

{$R *.dfm}

procedure TForm8.b1Click(Sender: TObject);
var i:Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
qry2.Open;
cht1.Series[0].Clear;
for i:=1 to qry1.RecordCount do
begin
cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.Fields[2].AsString);
qry2.Next;
end;
dg1.Columns[2].Width:=150;
end;

procedure TForm8.b3Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;
dg1.columns[0].Width:=25;
dg1.columns[1].Width:=50;
dg1.columns[2].Width:=50;
dg1.Columns[3].Width:=130;
dg1.columns[4].Width:=90;
dg1.Columns[5].Width:=60;
dg1.Columns[6].Width:=150;
dg1.Columns[7].Width:=110;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
dg1.columns[0].Width:=25;
dg1.columns[1].Width:=50;
dg1.columns[2].Width:=50;
dg1.Columns[3].Width:=130;
dg1.columns[4].Width:=90;
dg1.Columns[5].Width:=60;
dg1.Columns[6].Width:=150;
dg1.Columns[7].Width:=110;
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
end;

procedure TForm8.b5Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm8.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
     qry2.SQL.clear;
     qry2.SQL.add('select * from jadwal_table where kelas="'+view.tagstr+'"');
     qry2.Open;

    frxDetailJadwal.ShowReport();
  end;
end;

procedure TForm8.b4Click(Sender: TObject);
begin
Form9.ShowModal;
end;

end.
