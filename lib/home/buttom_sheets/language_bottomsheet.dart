import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Arabic",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:
              AppColors.primary),),
              Icon(Icons.done,color: AppColors.primary,),

            ],
          ),
          SizedBox(
            height:24 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English"),


            ],
          )
        ],
      ),
    );
  }
}
