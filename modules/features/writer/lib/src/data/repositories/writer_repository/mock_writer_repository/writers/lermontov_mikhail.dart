import '../../../../../domain/entities/poem.dart';
import '../../../../../domain/entities/writer.dart';

const lermontovMikhail = Writer(
  name: 'Михаил Лермонтов',
  avatar: 'modules/features/writer/assets/writers/lermontov.jpg',
  poem: [
    _borodino,
  ],
);

const _borodino = Poem(
  title: 'Бородино',
  poem: '''
— Скажи-ка, дядя, ведь не даром
Москва, спаленная пожаром,
Французу отдана?
Ведь были ж схватки боевые,
Да, говорят, еще какие!
Недаром помнит вся Россия
Про день Бородина!

— Да, были люди в наше время,
Не то, что нынешнее племя:
Богатыри — не вы!
Плохая им досталась доля:
Немногие вернулись с поля…
Не будь на то господня воля,
Не отдали б Москвы!
''',  
);
