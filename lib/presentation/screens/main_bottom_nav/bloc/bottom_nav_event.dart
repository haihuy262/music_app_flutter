part of 'bottom_nav_bloc.dart';

sealed class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends BottomNavEvent {
  final int index;

  const TabChange({required this.index});
}
