program ProjDesafioDelphi;

uses
  Vcl.Forms,
  View.FormMain in 'View\View.FormMain.pas' {MainForm},
  Model.DownloadHTTP in 'Model\Model.DownloadHTTP.pas',
  Model.Download in 'Model\Model.Download.pas',
  Controller.Download in 'Controller\Controller.Download.pas',
  Model.ObserverInterface in 'Model\Model.ObserverInterface.pas',
  Model.DownloadStatus in 'Model\Model.DownloadStatus.pas',
  Model.DownloadConst in 'Model\Model.DownloadConst.pas',
  DAO.DMConexaoBD in 'DAO\DAO.DMConexaoBD.pas' {DMConexaoBD: TDataModule},
  Model.DownloadLog in 'Model\Model.DownloadLog.pas',
  View.HistoricoDownloadForm in 'Win32\View.HistoricoDownloadForm.pas' {FormHistoricoDownload};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexaoBD, DMConexaoBD);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
