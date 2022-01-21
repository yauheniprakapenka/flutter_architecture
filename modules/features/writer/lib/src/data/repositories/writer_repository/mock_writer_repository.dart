import '../../../domain/entities/poem.dart';
import '../../../domain/entities/writer.dart';
import '../../../domain/repositories/writer_repository/i_writer_repository.dart';

class MockWriterRepository implements IWriterRepository {
  @override
  Future<List<Writer>> getAllWriters() async {
    return Future.delayed(const Duration(seconds: 1)).then((value) {
      return _allWriters;
    });
  }
}

const _allWriters = [
  Writer(
    name: 'Михаил Лермонтов',
    avatar: 'modules/features/writer/assets/writers/lermontov.jpg',
    poem: [
      _borodino,
    ],
  ),
  Writer(
    name: 'Сергей Есенин',
    avatar: 'modules/features/writer/assets/writers/esenin.jpg',
    poem: [
      _letterToWoman,
    ],
  ),
];

const _borodino = Poem(
  title: 'Бородино',
  poem:
      '— Скажи-ка, дядя, ведь не даром Москва, спаленная пожаром, Французу отдана? Ведь были ж схватки боевые, Да, говорят, еще какие! Недаром помнит вся Россия Про день Бородина!',
);

const _letterToWoman = Poem(
  title: 'Письмо женщине',
  poem:
      'Вы помните, Вы всё, конечно, помните, Как я стоял, Приблизившись к стене, Взволнованно ходили вы по комнате И что-то резкое В лицо бросали мне.',
);
