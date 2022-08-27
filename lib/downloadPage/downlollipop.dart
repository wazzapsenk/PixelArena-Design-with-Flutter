import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';

class LollipopDownloadPage extends StatefulWidget {
  ProductSpecs specs;

  LollipopDownloadPage({required this.specs});

  @override
  State<LollipopDownloadPage> createState() => _LollipopDownloadPageState();
}

class _LollipopDownloadPageState extends State<LollipopDownloadPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/lollipop.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/lollipop.png");
                });
              }, child: Text("${d!.downloadButton}",style: TextStyle(color: typeColor1,),),
              ),

            ],
          ),
        ),
      ),


    );
  }


}
