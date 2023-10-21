import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return  ListView(
     children:[ Padding(
        padding: const EdgeInsets.only(top: 50.0 , left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 125),
              child: Container(
                child: Row(
                  children: [
                    Image.asset("assets/images/Vector.png")
                                ,Padding(
                                  padding: const EdgeInsets.only(left:5.0),
                                  child: Text("AliceCare" , style: theme.textTheme.bodySmall),
                                ),
                              ],
                            ),
                          ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child:  Expanded(child:  TextField(
      decoration: InputDecoration( focusedBorder:
      OutlineInputBorder(
      borderSide:  BorderSide(color: Color(0xFF667085) , width: 2)
      ),
      hintStyle: TextStyle(color: Color(0xFF667085)),
      hintText: ('Articles, Video, Audio and More,...'),
      // helperText: 'Keep it short, this is just a demo.',
      //labelText: 'Life story',
      prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),
      prefixText: ' ',

   ),
      )
      )),
            ) ,
            Container(height: 400,
            color: Colors.black,) ,
            SizedBox(height: 15,) ,
            Column(
              children: [
                Container(alignment: Alignment.topLeft,
                  child: Text("Get Tips" , style: theme.textTheme.titleLarge,),) ,
                SizedBox(height: 10,)
              ,  Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                      color: Color(0xFFE4E7EC)
                  ),
                  child: Expanded(
                    child: Row(// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [   Container(alignment: Alignment.center,
                        child: Image.asset("assets/images/Doctor.png"),),
                        Column(
                          children: [
                            Container( padding: EdgeInsets.only(left: 5),
                              child: const Column( crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Connect with doctors", style: TextStyle(color: Color(0xFF344054)
                                      , fontWeight: FontWeight.w600),),
                                  Text("Connect now and get" , style: TextStyle(fontSize: 20),)
                                  ,  Text("expert insights" , style: TextStyle(fontSize: 20),),
                                ],
                              ),
                            ),
                            GestureDetector( onTap: (){print("lolololyyyy");},
                              child: Container( decoration: BoxDecoration(color: Color(0xFF7F56D9),borderRadius: BorderRadius.circular(7) ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("View Details" , style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ) ,

                          ],
                        ),


                      ],
                    ),
                  )

                  // Container(child: Image.asset("assets/images/man.png"),)

                  ,),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cycle Phases and Period" , style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold ,fontSize: 18)),


                      Container(
                        child: Row(
                          children: [
                            Text("See all" , style: TextStyle(color: Color(0xFF7F56D9) , fontWeight: FontWeight.bold),),
                            Icon(Icons.chevron_right_outlined , color: Color(0xFF7F56D9), size: 40,)
                          ],
                        ) ,
                      ),



                    ],),
                ),

              ],
            )


        ]),

      ),
   ] );















  }
}