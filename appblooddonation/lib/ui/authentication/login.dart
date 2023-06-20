import 'package:appblooddonation/bloc/authbloc.dart';
import 'package:appblooddonation/ui/authentication/4.dart';
import 'package:appblooddonation/ui/authentication/Certificate.dart';
import 'package:appblooddonation/ui/authentication/registration.dart';
import 'package:appblooddonation/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> mails = [];
  @override
  void initState() {
    mails.add("prejithts102@gmail.com");
    super.initState();
  }

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text(
                //   // 'Welcome to the Left Over',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(height: 20.0),
                TextFormField(
                  style: TextStyle(
                     color: Color(0xffEEA02C)
                  ),
                  
                  controller: email,
                  
                  decoration: InputDecoration(
                  hintText:"Email" ,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.email),

                  //labelText: "xxx-xxx@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)

                  ),
                ),
                  

                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText:"Password" ,
                  contentPadding: const EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.password),

                  //labelText: "xxx-xxx@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)

                  ),
                ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (email.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Pls enter your gmail ");
                    } else if (password.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Pls enter your password ");
                    } else {
                      BlocProvider.of<LoginBloc>(context).add(GetLoginEvent(
                        email: email.text,
                        password: password.text,
                      ));
                    }

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const HomePage()));
                  },
                  child: BlocConsumer<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is Requesting) {
                        return const SizedBox(
                          height: 18.0,
                          width: 18.0,
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.black),
                            strokeWidth: 2,
                          ),
                        );
                      } else {
                        return const Text('Login',style: TextStyle(color: Colors.pink),);
                      }
                    },
                    listener: (context, state) {
                      if (state is LoginSuccess) {
                        if (state.signinModel.data!.role == "Donar") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Certificate()));
                        }
                      } else if (state is LoginError) {
                        Fluttertoast.showToast(
                          msg: state.error,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                        );
                      }
                    },
                  ),
                ),
                // const SizedBox(height: 20.0),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const BuyerHomePage()));
                //   },
                //   child: const Text('BuyerLogin'),
                // ),
                const SizedBox(height: 20.0),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     ElevatedButton(
                //       onPressed: () async {
                //         // Map data = {
                //         //   "email": mails,
                //         // };

                //         // final dynamic response = await WebClient.post(
                //         //     "email/send/notification/htmlcontent", data);

                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) =>
                //                     const Certificate()));
                //       },
                //       // child: const Text('Register as Buyer'),
                //     ),
                  
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
