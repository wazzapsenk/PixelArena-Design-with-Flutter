import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/colors.dart';
import '../productspecs.dart';

class CartCatPage extends StatefulWidget {
  ProductSpecs specs;

  CartCatPage({required this.specs});
  @override
  State<CartCatPage> createState() => _CartCatPageState();
}

class _CartCatPageState extends State<CartCatPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/purplecat.png"),

              ElevatedButton(onPressed: () {
                setState(() {
                  NetworkImage("https://github.com/wazzapsenk/PixelArena-Design-with-Flutter/blob/master/images/purplecat.png");
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
