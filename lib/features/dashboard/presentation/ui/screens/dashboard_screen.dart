import 'package:clean_architecture/features/dashboard/presentation/ui/widgets/bottom_navigator_widget.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: const CustomButtonNavBar(),
    );
  }
}
