import '../../../domain/entities/i_ascii_image.dart';

class CatAsciiImage implements IAsciiImage {
  @override
  String get name => 'cat';

  @override
  String get image => r'''
       ,
       \\`-._           __
        \\  `-..____,.'  `.
         :`.         /    \\`.
         :  )       :      : \\
          ;'        '   ;  |  :
          )..      .. .:.`.;  :
         /::...  .:::...   ` ;
         ; _ '    __        /:\\
         `:o>   /\\o_>      ;:. `.
        `-`.__ ;   __..--- /:.   \\
        === \\_/   ;=====_.':.     ;
         ,/'`--'...`--....        ;
              ;                    ;
            .'  Writers App         ;
          .'      by Yauheni Prakapenka
        .'     ..     ,      .       ;
       :       ::..  /      ;::.     |
      /      `.;::.  |       ;:..    ;
     :         |:.   :       ;:.    ;
     :         ::     ;:..   |.    ;
      :       :;      :::....|     |
      /\\     ,/ \\      ;:::::;     ;
    .:. \\:..|    :     ; '.--|     ;
   ::.  :''  `-.,,;     ;'   ;     ;
.-'. _.'\\      / `;      \\,__:      \\
`---'    `----'   ;      /    \\,.,,,/
                   `----`              
''';
}
