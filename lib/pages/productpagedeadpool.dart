import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/downloadPage/downdeadpool.dart';
import 'package:odev4/productspecs.dart';
import 'package:odev4/colors.dart';

class ProductPageDeadpool extends StatefulWidget {
  ProductSpecs specs;

  ProductPageDeadpool({required this.specs});
  @override
  State<ProductPageDeadpool> createState() => _ProductPageDeadpoolState();
}

class _ProductPageDeadpoolState extends State<ProductPageDeadpool> {
  @override
  Widget build(BuildContext context) {
    var d=AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text("${widget.specs.name}"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
        backgroundColor: mainColor1,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(d!.deadpoolTitle, style: TextStyle(color: mainColor1,fontSize: 34,fontFamily: "Silkscreen",), ),
              Stack(children: [
                Image.asset("images/squareFrame.png"),
                Padding(
                  padding: const EdgeInsets.only(left:75,top: 75),
                  child: SizedBox(width: 250,height: 250,
                      child: Image.asset("images/deadpool.png")),
                ),

              ],),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Text("${d.nameText} :",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Text(" ${widget.specs.name}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("${d.authorName}:",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Text("${widget.specs.author}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("${d.resolution}:",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          Text("${widget.specs.resolution}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("${d.priceText}:",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          Text("${widget.specs.price}₺ ${d.freeText}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("${d.downloadableText}:",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          Text("${widget.specs.downloadable}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("${d.downloadedText}:",
                            style: TextStyle(
                                color: typeColor2,

                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          Text("${widget.specs.downloaded}",
                            style: TextStyle(
                                color: typeColor2,
                                fontFamily: "Raleway",
                                fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: (){

                        setState(() {
                          var specs=ProductSpecs(name: d.deadpoolTitle, author: "Rayn Reynolds", resolution: "1000x1000", price: 0.00, downloaded: 310, downloadable: true);
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>SpaceXDownloadPage()),);
                          Navigator.pushReplacement(context, //pushReplacement: bu sayfayı BagStack yığınından kaldırır
                              MaterialPageRoute(builder: (context)=> DeadpoolDownloadPage(specs: specs))); //context: buradaki sayfaya ait olduğunu belirtir

                        });

                      },
                        child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),
                      ),



                    ],
                  ),
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
