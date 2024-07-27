import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/hadeth_details.dart';
import 'package:untitled/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    loadHadethFile();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/hadith_header.png",
          height: 219,
        ),
        Divider(
        ),
        Text(
          "أحاديث",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Divider(
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap:() {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                  arguments: allAhadeth[index]);

                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,

                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (value) {
        List<String> ahadeth = value.split("#");
        for (int i = 0; i < ahadeth.length; i++) {
          String hadethOne = ahadeth[i];
          List<String> hadethLines = hadethOne.trim().split("\n");
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> content = hadethLines;
          HadethModel hadethModel = HadethModel(title, content);
          allAhadeth.add(hadethModel);
          print(hadethModel.title);
        }
        setState(() {});
      },
    );
  }
}
