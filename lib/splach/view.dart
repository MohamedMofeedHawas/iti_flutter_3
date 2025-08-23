import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:iti_flutter_3/login/view.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            children: [
              FadeInDownBig(
                duration: Duration(seconds: 5),

                child: ElasticInDown(
                  duration: Duration(seconds: 8),

                  child: Jello(
                    duration: Duration(seconds: 5),

                    child: Roulette(

                      duration: Duration(seconds: 5),
                      delay: Duration(microseconds:800 ),


                      child: Wobble(
                        duration: Duration(seconds: 8),
                        delay: Duration(microseconds:800 ),


                        child: BounceIn(
                          duration: Duration(seconds: 8),
                          delay: Duration(microseconds:800 ),
                          child: SpinPerfect(
                            duration: Duration(seconds: 10),


                            child: ZoomIn(
                              duration: Duration(seconds: 10),

                              child: Image(height: 300,
                                image: NetworkImage(
                                  "https://marketplace.canva.com/EAGSKGkgjSE/1/0/1600w/canva-blue-and-green-flat-typographic-e-commerce-online-shop-logo-HWrZrGzVSvk.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              ElasticInLeft(                  duration: Duration(seconds: 10),
                delay: Duration(seconds: 6),

                child: SlideInUp(
                  duration: Duration(seconds: 10),
                  delay: Duration(seconds: 4),

                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    padding: EdgeInsetsGeometry.directional(start: 40,end: 40,top: 15,bottom: 15)
                  ),
                      onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (route) => LoginScreen(),), (route) => false,);
                      }, child: Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,shadows: [
                    BoxShadow(
                      color: Colors.green.shade200,
                      offset: Offset(0, 3),
                      blurRadius: 5.5
                    ),
                    BoxShadow(
                      color: Colors.orange.shade200,
                      offset: Offset(0, -3),
                      blurRadius: 5.5
                    ),
                  ]),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
