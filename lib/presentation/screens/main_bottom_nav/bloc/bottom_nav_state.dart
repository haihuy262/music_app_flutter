part of 'bottom_nav_bloc.dart';

sealed class BottomNavState extends Equatable {
  final int indexState;
  const BottomNavState({required this.indexState});
  @override
  List<Object> get props => [indexState];
}

final class BottomNavInitial extends BottomNavState {
  const BottomNavInitial({required super.indexState});
}
