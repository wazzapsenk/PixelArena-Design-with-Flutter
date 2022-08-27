import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';

class SpaceXDownloadPage extends StatefulWidget {
  ProductSpecs specs;

  SpaceXDownloadPage({required this.specs});

  @override
  State<SpaceXDownloadPage> createState() => _SpaceXDownloadPageState();
}

class _SpaceXDownloadPageState extends State<SpaceXDownloadPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/rocket.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/rocket.png");
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
