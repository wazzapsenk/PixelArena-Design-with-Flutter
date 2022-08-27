import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:odev4/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:odev4/downloadPage/cartcat.dart';
import 'package:odev4/downloadPage/cartdodger.dart';
import 'package:odev4/downloadPage/cartheart.dart';
import 'package:odev4/downloadPage/cartmooninthejar.dart';
import 'package:odev4/downloadPage/downlollipop.dart';
import 'package:odev4/downloadPage/downspacex.dart';
import 'package:odev4/pages/productpagecat.dart';
import 'package:odev4/pages/productpagedeadpool.dart';
import 'package:odev4/pages/productpagedodgers.dart';
import 'package:odev4/pages/productpageheart.dart';
import 'package:odev4/pages/productpagelollipop.dart';
import 'package:odev4/pages/productpagemooninthejam.dart';
import 'package:odev4/pages/productpagespacex.dart';
import 'package:odev4/pages/productpagetotoro.dart';
import 'package:odev4/productspecs.dart';


class PixelArena extends StatefulWidget {
  const PixelArena({Key? key}) : super(key: key);

  @override
  State<PixelArena> createState() => _PixelArenaState();
}

class _PixelArenaState extends State<PixelArena> {

  @override
  Widget build(BuildContext context) {
    var d=AppLocalizations.of(context);
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;
    print("Genişlik: $ekranGenisligi");
    print("Yükseklik: $ekranYuksekligi");

    return Scaffold(


      appBar: AppBar(

        title: Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'PIXEL',
                style: TextStyle(
                  fontFamily: "Silkscreen",
                  fontSize: 28,
                  color: typeColor1,
                ),
              ),
              TextSpan(
                text: 'ARENA',
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: typeColor2,

                ),
              ),
            ],
          ),

        ),





        backgroundColor: mainColor1, //renk tanımladık
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 150,height: 150,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/rocket.png"),
                          ),

                        ],),

                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d!.spacexTitle, author: "Elon Brom", resolution: "900x900", price: 0.00,  downloaded: 124, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageSpaceX(specs: specs)),
                          );
                        },
                        child: Text(d!.inspectButton,),),
                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.spacexTitle, author: "Elon Brom", resolution: "900x900", price: 0.00,  downloaded: 124, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SpaceXDownloadPage(specs: specs)),
                          );
                        },
                        child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.spacexTitle,style: TextStyle(
                        fontSize: 22,
                        color: typeColor2,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold,),

                      ),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),

                ), //SpaceXRocket
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 150,height: 150,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/moonjar.png"),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.moonTitle, author: "One Gogh", resolution: "3000x3000", price: 4.99, downloaded: 101, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageMoonintheJam(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.moonTitle, author: "One Gogh", resolution: "3000x3000", price: 4.99, downloaded: 101, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartMoonPage(specs: specs)),
                          );
                        },
                        child: Text(d.buyButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),
                      Text(d.moonTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),
                ), //Moon
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 175,height: 175,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/purplecat.png"),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.catTitle, author: "Garfield Jim Davis", resolution: "1200x1200", price: 4.99, downloaded: 101, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageCat(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){   var specs=ProductSpecs(name: d.catTitle, author: "Garfield Jim Davis", resolution: "1200x1200", price: 4.99,  downloaded: 101, downloadable: false);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CartCatPage(specs: specs)),
                        );
                        },
                        child: Text(d.buyButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.catTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),

                ), //Cat
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 175,height: 175,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),

                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 30),
                            child: SizedBox(width: 100,height: 100,
                                child: Image.asset("images/deadpool.png")),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.deadpoolTitle, author: "Rayn Reynolds", resolution: "1000x1000", price: 0.00, downloaded: 310, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageDeadpool(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.deadpoolTitle, author: "Rayn Reynolds", resolution: "1000x1000", price: 0.00, downloaded: 310, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SpaceXDownloadPage(specs: specs)),
                          );
                        },
                        child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.deadpoolTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],


                  ),
                ), //Deadpool
              ],
            ), //2.Satır
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 175,height: 200,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/lollipop.png"),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.lolllipopTitle, author: "Lola Bithes", resolution: "1000x1000", price: 0.00, downloaded: 809, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageLollipop(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.lolllipopTitle, author: "Lola Bithes", resolution: "1000x1000", price: 0.00, downloaded: 809, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LollipopDownloadPage(specs: specs)),
                          );
                        },
                        child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.lolllipopTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),

                ), //Lollipop
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 175,height: 200,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),

                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/dodgers.png"),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.dodgersTitle, author: "Da Cekici", resolution: "1500x1500", price: 1.99, downloaded: 151, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageDodger(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.dodgersTitle, author: "Da Cekici", resolution: "1500x1500", price: 1.99, downloaded: 151, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartDodgerPage(specs: specs)),
                          );
                        },
                        child: Text(d.buyButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.dodgersTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],


                  ),
                ), //Dodgers
              ],
            ), //3.Satır
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 150,height: 150,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/heart.png"),
                          ),

                        ],),

                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.heartTitle, author: "Katangg", resolution: "3000x3000", price: 9.99, downloaded: 803, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageHeart(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),
                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.heartTitle, author: "Katangg", resolution: "3000x3000", price: 9.99, downloaded: 803, downloadable: false);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartHeartPage(specs: specs)),
                          );
                        },
                        child: Text(d.buyButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),

                      Text(d.heartTitle,style: TextStyle(
                        fontSize: 22,
                        color: typeColor2,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold,),

                      ),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),

                ), //Heart
                SizedBox(width: ekranGenisligi/2,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 150,height: 150,
                        child: Stack(children: [
                          Image.asset("images/squareFrame.png"),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Image.asset("images/totoro.png"),
                          ),
                        ],),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.totoroTitle, author: "Hayao Miyazaki", resolution: "1000x1000", price: 0.00, downloaded: 101, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageTotoro(specs: specs)),
                          );
                        },
                        child: Text(d.inspectButton,),),

                      TextButton(
                        onPressed: (){
                          var specs=ProductSpecs(name: d.totoroTitle, author: "Hayao Miyazaki", resolution: "1000x1000", price: 0.00, downloaded: 101, downloadable: true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPageHeart(specs: specs)),
                          );
                        },
                        child: Text(d.downloadButton,
                          style: TextStyle(
                              color: typeColor1,
                              fontSize: 14),),
                        style: TextButton.styleFrom(backgroundColor: sideColor1),

                      ),
                      Text(d.totoroTitle,style: TextStyle(
                          fontSize: 22,
                          color: typeColor2,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold)
                        ,),
                      SizedBox(width: 175,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context,_)=>Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating){print(rating);},
                        ),
                      ),
                    ],
                  ),
                ), //Totoro
              ],
            ),
          ],
        ),
      ),
    );
  }
}


