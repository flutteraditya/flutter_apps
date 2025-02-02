import 'package:flutter/material.dart';
import 'package:hrms365/res/components/custom_app_bar.dart';
import 'package:hrms365/res/components/custom_navigation_bar.dart';

class QuickSectionsScreen extends StatefulWidget {
  const QuickSectionsScreen({super.key});

  @override
  State<QuickSectionsScreen> createState() => _QuickSectionsScreenState();
}

class _QuickSectionsScreenState extends State<QuickSectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appTitle: "Quick Sections"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          children: [
            
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}