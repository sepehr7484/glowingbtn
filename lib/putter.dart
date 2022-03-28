// ignore_for_file: unused_import

import 'dart:io';
// ignore: unused_import
import 'package:puppeteer/puppeteer.dart';

puter() async {
  final browsers = await puppeteer.launch(headless: false);
  await browsers.close();
}
