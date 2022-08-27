import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';

class TotoroDownloadPage extends StatefulWidget {
  ProductSpecs specs;

  TotoroDownloadPage({required this.specs});
  @override
  State<TotoroDownloadPage> createState() => _TotoroDownloadPageState();
}

class _TotoroDownloadPageState extends State<TotoroDownloadPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/totoro.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/totoro.png");
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
