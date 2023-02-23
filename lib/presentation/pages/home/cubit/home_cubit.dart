import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/use_cases/get_movies_use_case.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getMoviesUseCase) : super(const HomeState.initial());

  final GetMoviesUseCase _getMoviesUseCase;

  Future<void> init() => _getMovies();

  Future<void> _getMovies() async {
    final result = await _getMoviesUseCase();
    result.fold(
      (l) => emit(HomeState.error(l)),
      (r) => const HomeState.success(),
    );
  }
}
