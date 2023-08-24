import 'package:clean_architecture/features/dashboard/presentation/controller/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ],
            currentIndex: state.pageIndex,
            onTap: (value) {
              //trigger the event from this line
              context.read<DashboardCubit>().changeTab(value);
            },
          );
        },
      ),
    );
  }
}
