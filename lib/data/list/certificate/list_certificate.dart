import 'package:ariski_portfolio/data/model/certificate.dart';

List<Certificate> listCertificate() {
  Certificate memulaiPemogramanDenganDart = Certificate();
  memulaiPemogramanDenganDart.title = 'Memulai Pemograman Dengan Dart';
  memulaiPemogramanDenganDart.company = 'Dicoding';
  memulaiPemogramanDenganDart.linkCertificate = '';

  Certificate belajarPrinsipPemogramanSolid = Certificate();
  belajarPrinsipPemogramanSolid.title = 'Belajar Prinsip Pemograman Solid';
  belajarPrinsipPemogramanSolid.company = 'Dicoding';
  belajarPrinsipPemogramanSolid.linkCertificate = '';

  Certificate belajarDasarVisualisasiData = Certificate();
  belajarDasarVisualisasiData.title = 'Belajar Dasar Visualisasi Data';
  belajarDasarVisualisasiData.company = 'Dicoding';
  belajarDasarVisualisasiData.linkCertificate = '';

  Certificate belajarDasarPemogramanWeb = Certificate();
  belajarDasarPemogramanWeb.title = 'Belajar Dasar Pemograman Web';
  belajarDasarPemogramanWeb.company = 'Dicoding';
  belajarDasarPemogramanWeb.linkCertificate = '';

  Certificate belajarDasarPemogramanJavascript = Certificate();
  belajarDasarPemogramanJavascript.title =
      'Belajar Dasar Pemograman Javascript';
  belajarDasarPemogramanJavascript.company = 'Dicoding';
  belajarDasarPemogramanJavascript.linkCertificate = '';

  return [
    memulaiPemogramanDenganDart,
    belajarPrinsipPemogramanSolid,
    belajarDasarVisualisasiData,
    belajarDasarPemogramanWeb,
    belajarDasarPemogramanJavascript
  ];
}
