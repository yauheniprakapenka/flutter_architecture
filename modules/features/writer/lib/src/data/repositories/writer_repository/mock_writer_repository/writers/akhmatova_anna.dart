import '../../../../../data/dto/poem_dto.dart';
import '../../../../../data/dto/writer_dto.dart';

final akhmatovaAnna = WriterDTO(
  name: 'Анна Ахматова',
  avatar: 'modules/features/writer/assets/writers/ahmatova.jpg',
  bio:
      'Она стала свидетелем смены эпох — пережила две мировые войны, революцию и блокаду Ленинграда. Свое первое стихотворение Ахматова написала в 11 лет — с тех пор и до конца жизни она не переставала заниматься поэзией.',
  poem: [
    _chatterbox,
    _soOnSo,
  ],
);

const _chatterbox = PoemDTO(
  title: 'Болтунья',
  poem: '''
Что болтунья Лида, мол,
Это Вовка выдумал.
А болтать-то мне когда?
Мне болтать-то некогда!

Драмкружок, кружок по фото,
Хоркружок — мне петь охота,
За кружок по рисованью
Тоже все голосовали.

А Марья Марковна сказала,
Когда я шла вчера из зала:
«Драмкружок, кружок по фото
Это слишком много что-то.
''',
);

const _soOnSo = PoemDTO(
  title: 'Так на так',
  poem: '''
Решили два Ивана 
Меняться без обмана.

А что менять —
Не в этом суть,
Хоть что-нибудь
На что-нибудь.

Игрушечного зайку
На гвоздики и гайку,
А гвоздики и гайку
Потом опять на зайку.

Друзья не ищут выгод,
Им пошуметь, попрыгать,
Кричать: — Меняю кошку
На сломанную брошку,
А сломанную брошку
Потом опять на кошку!  
''',
);
