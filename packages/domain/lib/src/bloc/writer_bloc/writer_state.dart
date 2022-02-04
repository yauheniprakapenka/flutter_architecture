import '../../../domain.dart';

class WriterState {
  final List<Writer> writers;
  final Set<int> bookmarkedWritersId;
  final bool isLoading;

  const WriterState({
    this.writers = const [],
    this.isLoading = true,
    this.bookmarkedWritersId = const <int>{},
  });

  WriterState copyWith({
    List<Writer>? writers,
    Set<int>? bookmarkedWritersId,
    bool? isLoading,
  }) {
    return WriterState(
      writers: writers ?? this.writers,
      bookmarkedWritersId: bookmarkedWritersId ?? this.bookmarkedWritersId,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
