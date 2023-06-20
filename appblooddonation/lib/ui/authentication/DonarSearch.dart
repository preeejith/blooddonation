import 'package:appblooddonation/ui/authentication/donardisplay.dart';
import 'package:flutter/material.dart';
class Donarsearch extends StatefulWidget {
  const Donarsearch({super.key});

  @override
  State<Donarsearch> createState() => _DonarsearchState();
}

class _DonarsearchState extends State<Donarsearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:SingleChildScrollView(
        padding: EdgeInsets.only(top: 350.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Image.asset("assets/blood.png",height: 150,width: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(


                style: TextStyle(

                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    //color: Colors.black,
                    color: Color(0xffEEA02C)

                ),

                decoration: InputDecoration(
                  hintText:"Blood Group" ,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.email),

                  //labelText: "xxx-xxx@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(


                style: TextStyle(

                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    //color: Colors.black,
                    color: Color(0xffEEA02C)

                ),

                decoration: InputDecoration(
                  hintText:"Location" ,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.email),

                  //labelText: "xxx-xxx@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextField(


            //     style: TextStyle(

            //         fontSize: 20,
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold,
            //         //color: Colors.black,
            //         color: Color(0xffEEA02C)

            //     ),

            //     decoration: InputDecoration(
            //       hintText:"district" ,
            //       contentPadding: const EdgeInsets.all(15),
            //       prefixIcon: Icon(Icons.email),

            //       //labelText: "xxx-xxx@gmail.com",
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30)

            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextField(


            //     style: TextStyle(

            //         fontSize: 20,
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold,
            //         //color: Colors.black,
            //         color: Color(0xffEEA02C)

            //     ),

            //     decoration: InputDecoration(
            //       hintText:"tehsil" ,
            //       contentPadding: const EdgeInsets.all(15),
            //       prefixIcon: Icon(Icons.email),

            //       //labelText: "xxx-xxx@gmail.com",
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30)

            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
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
                      MaterialPageRoute(builder: (context) => Donardisplay()));/// Handle button press
                },

                child: Text('SEARCH',style: TextStyle(fontSize: 25),),



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
