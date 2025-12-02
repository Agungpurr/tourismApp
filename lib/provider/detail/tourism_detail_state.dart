import 'package:tourism_app/data/model/tourism.dart';

sealed class TourismDetailResultState {}

class TourismDetailNoneState extends TourismDetailResultState {}

class TourismDetailLoadingState extends TourismDetailResultState {}

class TourismDetailErrorState extends TourismDetailResultState {
  final String message;
  TourismDetailErrorState(this.message);
}

class TourismDetailLoadedState extends TourismDetailResultState {
  final Tourism place;
  TourismDetailLoadedState(this.place);
}
