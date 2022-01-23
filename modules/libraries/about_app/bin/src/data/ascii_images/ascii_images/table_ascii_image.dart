import '../../../domain/entities/i_ascii_image.dart';

class TableImage implements IAsciiImage {
  @override
  String get name => 'table';

  @override
  String get image => '''
    _____
   /    /|_ ___________________________________________
  /    // /|                                          /|
 (====|/ //   Writers App                  _QP_      / |
  (=====|/      by Yauheni Prakapenka     (  ' )    / .|
 (====|/                                   \\__/    / /||
/_________________________________________________/ / ||
|  _____________________________________________  ||  ||
| ||                                            | ||
| ||                                            | ||
| |                                             | | 
''';
}
