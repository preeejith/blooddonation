import 'package:appblooddonation/ui/authentication/4.dart';
import 'package:flutter/material.dart';
class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
  child:Container(
  // width: 414,
  // height: 896,
  color: Colors.white,
  padding: const EdgeInsets.only(top: 100, bottom: 300, ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
      Container(
        width: double.infinity,
        height: 143.96,
        child: Stack(
          children:[Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                // width: 200,
                // height: 100.77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.only(left: 190,  top: 7, bottom: 35, ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Container(
                            width: 60.40,
                            height: 85.73,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Image.asset("assets/blooddonor.png",height: 180,width: 50,)
                          ),
                        ],
                      ),
                    ),
                    // FlutterLogo(size: 129.7739715576172),
                  ],
                ),
              ),
            ),
          ),
            Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Container(
                      width: 111.34,
                      height: 40.54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // child: FlutterLogo(size: 111.3359375),
                    ),
                  ],
                ),
                //FlutterLogo(size: 125.92930603027344),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                 width: 10.42,
                height: 1.59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff5f5f5),
                ),
              ),
            ),
            Positioned(
              left: 70,
              top: 24.65,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  Transform.rotate(
                    angle: -0.87,
                    child: Container(
                      width: 41.09,
                      height: 93.04,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(8),
                      //   color: Color(0xffff2156),
                      // ),
                      padding: const EdgeInsets.only(left: 18, top: 6, bottom: 18, ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Opacity(
                            opacity: 0.30,
                            child: Transform.rotate(
                              angle: 0.40,
                              child: Container(
                                width: 11.07,
                                height: 62.59,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 3.13),
                          Opacity(
                            opacity: 0.30,
                            child: Transform.rotate(
                              angle: 0.40,
                              child: Container(
                                width: 8.64,
                                height: 64.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 40.67,
                    height: 16.51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffdadada),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 30.52,
                    height: 13.73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff263238),
                    ),
                    padding: const EdgeInsets.only(left: 1, right: 3, top: 3, bottom: 2, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Opacity(
                          opacity: 0.20,
                          child: Container(
                            width: 26.67,
                            height: 8.18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 25.47,
                    height: 14.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffffc3bd),
                    ),
                    padding: const EdgeInsets.only(left: 3, right: 17, top: 6, bottom: 4, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 6.20,
                          height: 3.95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffffc3bd),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 9.75,
                    height: 5.64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                    padding: const EdgeInsets.only(top: 1, bottom: 2, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 4.35,
                          height: 0.69,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff263238),
                          ),
                        ),
                        SizedBox(height: 0.26),
                        Container(
                          width: 1.88,
                          height: 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff263238),
                          ),
                        ),
                        SizedBox(height: 0.26),
                        Container(
                          width: 1.80,
                          height: 1.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff263238),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 10.34,
                    height: 7.96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Opacity(
                          opacity: 0.30,
                          child: Container(
                            width: 10.34,
                            height: 7.96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 2.68,
                    height: 2.19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffed847e),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 19.17,
                    height: 11.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffffc3bd),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 102.52,
                    height: 36.57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff263238),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 89.30,
                    height: 62.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                    child: Stack(
                      children:[
                        Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 89.30,
                            height: 62.98,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2.86,
                          top: 14.89,
                          child: Opacity(
                            opacity: 0.50,
                            child: Container(
                              width: 7.89,
                              height: 12.01,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffff2156),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 53.96,
                    height: 25.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                    padding: const EdgeInsets.only(left: 33, right: 1, top: 21, bottom: 3, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 20.02,
                            height: 2.16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffff2156),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 49.75,
                    height: 20.57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 49.75,
                            height: 20.57,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 79.09,
                    height: 14.74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff263238),
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          left: 11.23,
                          top: 3.22,
                          child: Container(
                            width: 15.33,
                            height: 5.82,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffff2156),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 13.50,
                          top: 2.88,
                          child: Container(
                            width: 11.68,
                            height: 2.44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffff2156),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Opacity(
                        opacity: 0.50,
                        child: Container(
                          width: 14.94,
                          height: 0.99,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffff2156),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 43.14,
                    height: 64.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff2156),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 17.68,
                    height: 10.76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff263238),
                    ),
                  ),
                  SizedBox(height: 18.89),
                  Container(
                    width: 23.77,
                    height: 7.72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff263238),
                    ),
                  ),
                ],
              ),
            ),],
        ),
      ),
      SizedBox(height: 47.10),
      SizedBox(
        width: 190,
        child: Text(
          "Become A Donar",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.25,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      SizedBox(height: 47.10),
      SizedBox(
        width: 199,
        child: Text(
          "Blood is a life, pass it on!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.31,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      SizedBox(height: 47.10),
      Container(
        width: 79.97,
        height: 4.55,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 11.26,
              height: 4.55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffe0e0e0),
              ),
            ),
            SizedBox(width: 18.02),
            Container(
              width: 50.68,
              height: 84.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.72),
                color: Color(0xffff2156),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 1),
SizedBox(
  height: 50,
),
      MaterialButton(
          onPressed: ()
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Four()));
          },
        child: Text(
          "Next",

          textAlign: TextAlign.center,

          style: TextStyle(
            color: Color(0xffff2156),
            fontSize: 16,
          ),

        ),

      ),






      SizedBox(height: 1),
      SizedBox(
        width: 71,
        height: 41,
        child: Text(
          "Skip",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff394250),
            fontSize: 16,
          ),
        ),
      ),
    ],
  ),
)
    ,
),
    );
  }
}