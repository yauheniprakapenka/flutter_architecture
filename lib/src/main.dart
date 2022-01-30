import 'package:flutter/material.dart';

import 'app/services/service_locator.dart';
import 'app/writer_app.dart';

void main() {
  ServiceLocator.instance.initialize();
  runApp(const WriterApp());
}
