import 'package:flutter/material.dart';
import 'package:untitled/home/buttom_sheets/theme_buttomsheet.dart';

import '../../app_colors.dart';
import '../buttom_sheets/language_bottomsheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap:() {
              showModalBottomSheet(context: context,
                isScrollControlled: true,
                isDismissible: true,
                backgroundColor: Colors.white,
                builder:(context) {

                return ThemeBottomSheet();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: AppColors.primary)),
              child: Text("Light"),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Text("Language"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return LanguageBottomSheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: AppColors.primary)),
              child: Text("Arabic"),
            ),
          )
        ],
      ),
    );
  }
}
