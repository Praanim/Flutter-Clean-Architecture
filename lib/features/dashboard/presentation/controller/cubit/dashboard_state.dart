part of 'dashboard_cubit.dart';

class DashboardState {
  int pageIndex;
  DashboardState({
    required this.pageIndex,
  });

  DashboardState copyWith({
    int? pageIndex,
  }) {
    return DashboardState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }
}
