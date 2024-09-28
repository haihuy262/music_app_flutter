import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavInitial(indexState: 0)) {
    on<TabChange>(_onTabChange);
  }
  void _onTabChange(TabChange event, Emitter<BottomNavState> emit) {
    emit(BottomNavInitial(indexState: event.index));
  }
}
