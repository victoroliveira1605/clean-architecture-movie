import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class GetAllNewShowingEvent extends MoviesEvent {
  GetAllNewShowingEvent();
}

class GetAllSoonEvent extends MoviesEvent {
  GetAllSoonEvent();
}
