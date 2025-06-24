import 'package:finance_app/common/app_colors.dart';
import 'package:finance_app/common/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app/modules/home/views/home_view.dart';
import '../common/app_images.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeView(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> _iconPaths = AppImages.navBarImages;

  final List<String> _titles = AppTexts.navBarTexts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(color: Colors.black12, blurRadius: 8),
            // ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_iconPaths.length, (index) {
              final isSelected = index == _selectedIndex;
              return GestureDetector(
                onTap: () => _onItemTapped(index),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                    border: isSelected
                        ? Border(top: BorderSide(color: AppColors.primaryColor, width: 3))
                        : null,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        _iconPaths[index],
                        color: isSelected ? AppColors.primaryColor : AppColors.black
                      ),
                      SizedBox(height: 4),
                      Text(
                        _titles[index],
                        style: GoogleFonts.jost(
                          textStyle:  TextStyle(
                            fontSize: 12,
                            color: isSelected ?AppColors.primaryColor : Colors.grey,
                            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

