import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spaces/app/theme/app_colors/i_app_color.dart';

class SpaceColorAppImpl implements IAppColor {
  @override
  Color get background => Colors.black12;

  @override
  Color get onSurface => Colors.amber;
}
