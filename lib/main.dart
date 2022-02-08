import  'package:flutter/material.dart';

void  main(){
  runApp();

}

class MyApp extends StatelessWidget {
  const MyApp ({Key key}) : super (key: key);

  @override
  Widget build (BuildContext context)
  {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false;
      title: "dassh",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders:{
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue
      )
      home: SiteLayout(),
    );
  }
}