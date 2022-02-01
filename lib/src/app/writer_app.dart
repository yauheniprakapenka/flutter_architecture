import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/features/writer_verses/bloc/writer_bloc/writer_bloc.dart';
import '../ui/features/writer_verses/bloc/writer_bloc/writer_events/events/get_all_writers_event.dart';
import '../ui/features/writer_verses/pages/writers_list_page.dart';
import 'theme/writer_theme.dart';

class WriterApp extends StatelessWidget {
  const WriterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WriterBloc>(
          create: (_) => WriterBloc()..add(GetAllWritersEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: const WritersListPage(),
      ),
    );
  }
}
