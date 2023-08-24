import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState(pageIndex: 0));

  void changeTab(int index) {
    emit(state.copyWith(pageIndex: index));
  }
}
