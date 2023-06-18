import 'package:appblooddonation/bloc/authbloc.dart';
import 'package:appblooddonation/ui/authentication/4.dart';
import 'package:appblooddonation/ui/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController= TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bloodgroupController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController townController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Buyer Registration'),
          ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Registration Form',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(
                  labelText: 'location',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: bloodgroupController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'blood Group',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: districtController,
                decoration: const InputDecoration(
                  labelText: 'District',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: townController,
                decoration: const InputDecoration(
                  labelText: 'Town',
                ),
              ),
              // const SizedBox(height: 20.0),
              // TextField(
              //   controller: pincodeController,
              //   decoration: const InputDecoration(
              //     labelText: 'Pincode',
              //   ),
              // ),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context).add(
                      GetUserRegistrationEvent(
                          isuser: false,
                          name: nameController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          district: districtController.text,
                          town: townController.text,
                          pincode: bloodgroupController.text,
                          place: townController.text,
                          orgaisation: locationController.text

                          // orgaisation: orgaisation.text,
                          ));
                },
                child: BlocConsumer<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is UserRegistering) {
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
                      return const Text('Register');
                    }
                  },
                  listener: (context, state) {
                    if (state is RegUserSucces) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                           
                          
                             builder: (context) => const Four()));
                             
                    } else if (state is UserRegError) {
                      Fluttertoast.showToast(
                        msg: state.error,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
