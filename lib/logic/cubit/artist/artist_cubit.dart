import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit() : super(ArtistInitial());
}
