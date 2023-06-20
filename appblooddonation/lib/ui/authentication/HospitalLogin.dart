import 'package:appblooddonation/bloc/authbloc.dart';
import 'package:appblooddonation/ui/authentication/Certificate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HospitalLogin extends StatefulWidget {
  const HospitalLogin({super.key});

  @override
  State<HospitalLogin> createState() => _HospitalLoginState();
}

class _HospitalLoginState extends State<HospitalLogin> {
  final TextEditingController staffid = TextEditingController();
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
                const Text(
                  'Welcome to the Left Over',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: staffid,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (staffid.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Pls enter your gmail ");
                    } else if (password.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Pls enter your password ");
                    } else {
                      BlocProvider.of<LoginBloc>(context).add(GetHospitalLoginEvent(
                        staffid: staffid.text,
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
                        return const Text('Login');
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        // Map data = {
                        //   "email": mails,
                        // };

                        // final dynamic response = await WebClient.post(
                        //     "email/send/notification/htmlcontent", data);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Certificate()));
                      },
                      child: const Text('Register as Buyer'),
                    ),
                  
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}