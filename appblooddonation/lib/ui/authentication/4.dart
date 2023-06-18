import 'package:appblooddonation/ui/authentication/DonarSearch.dart';
import 'package:appblooddonation/ui/authentication/commonLogin.dart';
import 'package:appblooddonation/ui/authentication/registration.dart';
import 'package:flutter/material.dart';
class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        // appBar: AppBar(
        //   // title: const Text("Registration"),
        //   backgroundColor: Colors.white70,
        //
        // ),


        body:SingleChildScrollView(




          padding: EdgeInsets.only(top: 250.0, left: 10.0, right: 10.0),

            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img.png",height: 150,width: 100),

                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Padding(

                            padding: const EdgeInsets.all(10.0),
                            child: Text("Dare To Donate",style:TextStyle(fontSize: 40,color: Colors.pinkAccent)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Center(
                            child: Padding(

                              padding: const EdgeInsets.all(36.0),
                              child: Text("You can donate for ones in need and request blood if you need.",style:TextStyle(fontSize: 20,color: Colors.grey)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: MaterialButton(

                    minWidth: 310,

                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Donarsearch()));

                    },

                    child: Text('FIND A DONAR',style: TextStyle(fontSize: 25 ,),
                    ),




                    textColor: Colors.pinkAccent,
                    color: Colors.white70,

                      padding: EdgeInsets.all(15.0),
                    //contentPadding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    //padding: const EdgeInsets.all(46.0),
                      //padding:EdgeInsets.all(7.0)
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: MaterialButton(
                    minWidth: 300,

                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Registration()));// Handle button press
                    },


                    child: Text('BECOME A DONAR', style: TextStyle(fontSize: 25, ),
                    ),



                    textColor: Colors.pinkAccent,
                    color: Colors.white70,


                    padding: EdgeInsets.all(15.0),

                    //contentPadding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    //padding: const EdgeInsets.all(46.0),
                    //padding:EdgeInsets.all(7.0)
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(29.0),
                  child: MaterialButton(
                    minWidth: 300,

                    onPressed: () {
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '',
                          style: TextStyle(fontSize: 24,color: Colors.pinkAccent),
                        ),
                      );
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));/// Handle button press
                    },

                    child: Text('LOGIN',style: TextStyle(fontSize: 25),),



                    textColor: Colors.pinkAccent,
                    color: Colors.white70,

                    padding: EdgeInsets.all(15.0),
                    //contentPadding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(58.0),
                    ),
                    //padding: const EdgeInsets.all(46.0),
                    //padding:EdgeInsets.all(7.0)
                  ),

                ),

              ],

            ),


        )

    );
  }
}