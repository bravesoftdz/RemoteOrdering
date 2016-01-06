unit fRemoteLocations;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.CheckLst, ORCtrls, fODBase; //fODBase;

type
  TfrmSelectLocalRemote = class(TfrmODBase)
    Panel1: TPanel;
    btnSelect: TButton;
    btnClose: TButton;
    CaptionCheckListBox1: TCaptionCheckListBox;
    Label1: TLabel;
    procedure CaptionCheckListBox1ClickCheck(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  published

  end;
Var
 RMLocNmes: String;

implementation

uses fODLab;

{$R *.dfm}


procedure TfrmSelectLocalRemote.btnSelectClick(Sender: TObject);
var
 i: integer;
begin
  inherited;

  RmteName.SetIsRmteNameSet(false);

  for i := 0 to CaptionCheckListBox1.Items.Count - 1 do
   begin

    if CaptionCheckListBox1.Checked[i] then
      begin
       RmteName.SetSiteName(CaptionCheckListBox1.Items.Strings[i]);
       RmteName.SetIsRmteNameSet(true);
      end;
   end;

end;
procedure TfrmSelectLocalRemote.CaptionCheckListBox1ClickCheck(Sender: TObject);
var
 i: integer;
 ODLab: TfrmODLab;
begin
  for i := 0 to CaptionCheckListBox1.Items.Count-1 do
   begin
     if CaptionCheckListBox1.Checked[i] then
      begin
      // ODLab.RMLocationName :=CaptionCheckListBox1.Items.Strings[i];
       btnSelect.Enabled:=true;
       break;
      end;
   end;


end;


end.
