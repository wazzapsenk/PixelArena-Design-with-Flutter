import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';
class DeadpoolDownloadPage extends StatefulWidget {
  ProductSpecs specs;

  DeadpoolDownloadPage({required this.specs});
  @override
  State<DeadpoolDownloadPage> createState() => _DeadpoolDownloadPageState();
}

class _DeadpoolDownloadPageState extends State<DeadpoolDownloadPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/deadpool.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/deadpool.png");
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
