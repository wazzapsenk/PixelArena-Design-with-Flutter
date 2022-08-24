import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:odev3_tasarim/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("en",""),
        Locale("tr","")
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.deepPurple,
      ),
      home: const PixelArena(

      ),
    );
  }
}
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
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
                        child: Image.asset("images/rocket.png"),
                      ),
                    ],),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(d!.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
                      style: TextButton.styleFrom(backgroundColor: sideColor1),

                  ),

                  Text(d.spacexTitle,style: TextStyle(
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

            ),
            SizedBox(width: ekranGenisligi/2,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 175,height: 200,
                    child: Stack(children: [
                      Image.asset("images/squareFrame.png"),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Image.asset("images/moonjar.png"),
                      ),
                    ],),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
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
            ),

          ],
        ),
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
                        child: Image.asset("images/purplecat.png"),
                      ),
                    ],),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(d.downloadButton,style: TextStyle(color: typeColor1,fontSize: 14),),
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

            ),
            SizedBox(width: ekranGenisligi/2,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 175,height: 200,
                    child: Stack(children: [
                      Image.asset("images/squareFrame.png"),

                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Image.asset("images/deadpool.png"),
                      ),
                    ],),
                  ),
                  TextButton(
                    onPressed: (){},
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
            ),

          ],
        )





      ],


      ),
    );
  }
}


