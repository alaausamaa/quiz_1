import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final pageControl=PageController(
      initialPage: 0 ,
    );

    return  Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 50),
        child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child:Row(
                      children:[
                        Container( margin: EdgeInsets.only(right: 10 ,left: 10),
                          child: Image.asset('assets/images/logo.png'),
                        ),


                        Container(child: Text( "MOODY" , style: theme.textTheme.titleLarge,),


                        )],
                    ) ,
                  ) ,
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Stack(   alignment: Alignment.topRight,
                      children: [ImageIcon(
                        AssetImage("assets/images/noti.png" ),
                        color: Color(0xFF027A48), size: 40,
                      ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Text("", style: TextStyle(fontSize:5  , fontWeight: FontWeight.w400),
                          ),

                        ),
                      ],

                    ),
                  ),

                ],
              ),

              Container(
                  child: Column(
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("Hello ," , style: theme.textTheme.bodyMedium!.copyWith(color: Color(0xFF371B34)), ),
                            Text("Loly >>" , style: theme.textTheme.titleLarge!.copyWith(color: Color(0xFF371B34)),)
                          ],
                        ),
                      ),
                        //   SizedBox(height: 10,) ,
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(alignment: Alignment.topLeft,
                            child: Text("How are you feeling today?" , style: theme.textTheme.bodyMedium!.copyWith(color: Color(0xFF371B34)),) ,



                          ),
                        ) ,
                        //    SizedBox(height: 10,) ,
                        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container( //width:  MediaQuery.of(context).size.width/4,
                              child:Column(
                                children:[
                                  Container( margin: EdgeInsets.only(right: 10 ,left: 10),
                                    child: Image.asset('assets/images/love.png'),
                                  ), Text("Love")
                                ],
                              ),
                            ),           Container(
                              child:Column(
                                children:[
                                  Container( margin: EdgeInsets.only(right: 10 ,left: 10),
                                    child: Image.asset('assets/images/cool.png'),
                                  ), Text("Cool")
                                ],
                              ),
                            ),           Container(
                              child:Column(
                                children:[
                                  Container( margin: EdgeInsets.only(right: 10 ,left: 10),
                                    child: Image.asset('assets/images/happy.png'),
                                  ), Text("Happy")
                                ],
                              ),
                            ),           Container(
                              child:Column(
                                children:[
                                  Container( margin: EdgeInsets.only(right: 10 ,left: 10),
                                    child: Image.asset('assets/images/sad.png'),
                                  ), Text("Sad")
                                ],
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 5,) ,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Feature" , style: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),


                              Container(
                                child: Row(
                                  children: [
                                    Text("See more" , style: TextStyle(color: Color(0xFF027A48),fontWeight: FontWeight.bold),),
                                    Icon(Icons.chevron_right_outlined , color: Color(0xFF027A48), size: 40,)
                                  ],
                                ) ,
                              ),


                            ],),
                        ),
                      /* CarouselSlider(
                          options: CarouselOptions(height: 168.0),
                          items: [1,2,3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFECFDF3)
                                        ),
                                        child: Expanded(
                                          child: Row(// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                children: [
                                                  Container( padding: EdgeInsets.only(left: 5),
                                                    child: const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Positive vibes" , style: TextStyle(color: Color(0xFF344054)
                                                            , fontWeight: FontWeight.w600),),
                                                        Text("Boost your Mood with" , style: TextStyle(fontSize: 20),)
                                                        ,  Text("Positive vibes" , style: TextStyle(fontSize: 20),)


                                                        , Row(
                                                          children: [
                                                            Icon(Icons.play_circle_fill_outlined , size: 30 , color: Color(0xFF32D583) ,),
                                                            Padding(
                                                              padding: EdgeInsets.only(left: 5, top: 10),
                                                              child: Text("10 mins" , style: TextStyle(fontSize: 20),),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(child: Image.asset("assets/images/man.png"),)
                                            ],
                                          ),
                                        )

                                      // Container(child: Image.asset("assets/images/man.png"),)

                                    ),
                                  );
                              },
                            );
                          }).toList(),
                        ),*/

                     /*   Container(padding: EdgeInsets.only(top: 2),
                          child: Row( //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Image.asset("assets/images/Ellipse 7.png"),
                              ), SizedBox(width: 5,),
                              Container(
                                child: Image.asset("assets/images/Ellipse 8.png"),
                              ),  Container(
                                child: Image.asset("assets/images/Ellipse 9.png"),
                              ),
                            ],
                          ),
                        ),*/
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          child: PageView(
                            controller: pageControl,
                            children: [
                              Container(
                              width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
    color: Color(0xFFECFDF3)
    ),
    child: Expanded(
    child: Row(// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    children: [
    Container( padding: EdgeInsets.only(left: 5),
    child: const Column( crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Positive vibes" , style: TextStyle(color: Color(0xFF344054)
    , fontWeight: FontWeight.w600),),
    Text("Boost your Mood with" , style: TextStyle(fontSize: 20),)
    ,  Text("Positive vibes" , style: TextStyle(fontSize: 20),)


    , Row(
    children: [
    Icon(Icons.play_circle_fill_outlined , size: 30 , color: Color(0xFF32D583) ,),
    Padding(
    padding: EdgeInsets.only(left: 5, top: 10),
    child: Text("10 mins" , style: TextStyle(fontSize: 20),),
    )
    ],
    )
    ],
    ),
    ),
    ],
    ),
    Container(alignment: Alignment.center,
      child: Image.asset("assets/images/man.png"),)
    ],
    ),
    )

    // Container(child: Image.asset("assets/images/man.png"),)

    ,),
                              Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
    color: Color(0xFF32D583)
    ),
    child: Expanded(
    child: Row(// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    children: [
    Container( padding: EdgeInsets.only(left: 5),
    child: const Column( crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Positive vibes" , style: TextStyle(color: Color(0xFF344054)
    , fontWeight: FontWeight.w600),),
    Text("Boost your Mood with" , style: TextStyle(fontSize: 20),)
    ,  Text("Positive vibes" , style: TextStyle(fontSize: 20),)


    , Row(
    children: [
    Icon(Icons.play_circle_fill_outlined , size: 30 , color: Color(0xFFECFDF3) ,),
    Padding(
    padding: EdgeInsets.only(left: 5, top: 10),
    child: Text("20 mins" , style: TextStyle(fontSize: 20),),
    )
    ],
    )
    ],
    ),
    ),
    ],
    ),
    Container(child: Image.asset("assets/images/man.png"),)
    ],
    ),
    )

    // Container(child: Image.asset("assets/images/man.png"),)

    ),
                              Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
    color: Color(0xFFECFDF3)
    ),
    child: Expanded(
    child: Row(// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    children: [
    Container( padding: EdgeInsets.only(left: 5),
    child: const Column( crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Positive vibes" , style: TextStyle(color: Color(0xFF344054)
    , fontWeight: FontWeight.w600),),
    Text("Boost your Mood with" , style: TextStyle(fontSize: 20),)
    ,  Text("Positive vibes" , style: TextStyle(fontSize: 20),)


    , Row(
    children: [
    Icon(Icons.play_circle_fill_outlined , size: 30 , color: Color(0xFF32D583) ,),
    Padding(
    padding: EdgeInsets.only(left: 5, top: 10),
    child: Text("30 mins" , style: TextStyle(fontSize: 20),),
    )
    ],
    )
    ],
    ),
    ),
    ],
    ),
    Container(child: Image.asset("assets/images/man.png"),)
    ],
    ),
    )

    // Container(child: Image.asset("assets/images/man.png"),)

    )

                            ],
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: pageControl,
                          count: 3,
                          effect: WormEffect(),


                        ),

                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Exercise" , style: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),


                              Container(
                                child: Row(
                                  children: [
                                    Text("See more" , style: TextStyle(color: Color(0xFF027A48) , fontWeight: FontWeight.bold),),
                                    Icon(Icons.chevron_right_outlined , color: Color(0xFF027A48), size: 40,)
                                  ],
                                ) ,
                              ),



                            ],),
                        ),
                        Container( height: 170,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(width:MediaQuery.of(context).size.width/2.3,
                                    decoration: BoxDecoration(color:Color(0xFFF9F5FF) ,borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                            children: [
                                              Image.asset("assets/images/N1.png"),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Text("Relaxation"),
                                              ),



                                            ]
                                        )

                                    ),
                                  ),

                                  Container(width:MediaQuery.of(context).size.width/2.2,
                                    decoration: BoxDecoration(color:Color(0xFFFDF2FA) ,borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                            children: [
                                              Image.asset("assets/images/N4.png"),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Text("Medititaion"),
                                              ),



                                            ]
                                        )

                                    ),
                                  ),
                                ],
                              ),
                              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(width:MediaQuery.of(context).size.width/2.5,
                                    decoration: BoxDecoration(color:Color(0xFFFFFAF5) ,borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                            children: [
                                              Image.asset("assets/images/N2.png"),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Text("Beathing"),
                                              ),



                                            ]
                                        )

                                    ),
                                  ),
                                  Container(width:MediaQuery.of(context).size.width/2.5,
                                    decoration: BoxDecoration(color:Color(0xFFF0F9FF) ,borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                            children: [
                                              Image.asset("assets/images/N3.png"),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Text("Yoga"),
                                              ),



                                            ]
                                        )

                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        )



                      ]) ),
            ] ));
  }
}
