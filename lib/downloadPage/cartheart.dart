import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';

class CartHeartPage extends StatefulWidget {
  ProductSpecs specs;

  CartHeartPage({required this.specs});

  @override
  State<CartHeartPage> createState() => _CartHeartPageState();
}

class _CartHeartPageState extends State<CartHeartPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/heart.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/heart.png");
                });
              }, child: Text("${d!.buyButton}",style: TextStyle(color: typeColor1,),),
              ),

            ],
          ),
        ),
      ),


    );
  }


}
