import 'package:appblooddonation/bloc/authbloc.dart';
import 'package:appblooddonation/ui/1.dart';
import 'package:appblooddonation/ui/authentication/Certificate.dart';
import 'package:appblooddonation/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Certificate(),
      ),
    );
  }
}
