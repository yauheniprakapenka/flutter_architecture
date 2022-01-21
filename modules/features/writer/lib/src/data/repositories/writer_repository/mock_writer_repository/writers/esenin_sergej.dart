import '../../../../../domain/entities/poem.dart';
import '../../../../../domain/entities/writer.dart';

const eseninSergej = Writer(
  name: 'Сергей Есенин',
  avatar: 'modules/features/writer/assets/writers/esenin.jpg',
  poem: [
    _letterToWoman,
    _dontRegretdontCalldontCry,
  ],
);

const _letterToWoman = Poem(
  title: 'Письмо женщине',
  poem: '''
Вы помните,
Вы всё, конечно, помните,
Как я стоял,
Приблизившись к стене,
Взволнованно ходили вы по комнате
И что-то резкое
В лицо бросали мне.

Вы говорили:
Нам пора расстаться,
Что вас измучила
Моя шальная жизнь,
Что вам пора за дело приниматься,
А мой удел —
Катиться дальше, вниз.
''',
);

const _dontRegretdontCalldontCry = Poem(
  title: 'Не жалею, не зову, не плачу…',
  poem: '''
Не жалею, не зову, не плачу,
Все пройдет, как с белых яблонь дым.
Увяданья золотом охваченный,
Я не буду больше молодым.

Ты теперь не так уж будешь биться,
Сердце, тронутое холодком,
И страна березового ситца
Не заманит шляться босиком.

Дух бродяжий! ты все реже, реже
Расшевеливаешь пламень уст
О моя утраченная свежесть,
Буйство глаз и половодье чувств.  
''',
);
