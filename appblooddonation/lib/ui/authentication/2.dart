import 'package:appblooddonation/ui/authentication/3.dart';
import 'package:flutter/material.dart';
class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(

        children: [
          // Image.asset("asset/img.png"),
           SizedBox(height: 250,),
          Center(child: Text("Become A Donor",style: TextStyle(color: Colors.pink,fontSize: 35),)),
          SizedBox(height: 50,),
          Center(child: Text("Blood is a life,pass it on!",style: TextStyle(color: Colors.black,fontSize: 20),)),
          SizedBox(height: 20,),
          MaterialButton(
            onPressed: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Three()));
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
      ) ,
    );
  }
}