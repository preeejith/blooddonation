import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 11, 62),
      body: SingleChildScrollView(
          child: Container(
        width: 414,
        height: 896,
        color: const Color(0xffff2156),
        padding: const EdgeInsets.only(
          top: 211,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 60,
              height: 39,
            ),
            MaterialButton(
              onPressed: () {
                //  Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Certificate()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const One()));
              },
              child: const Text(
                "LIFESTREAM",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xfffff8f8),
                  fontSize: 33,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 348,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              // child: FlutterLogo(size: 348),
            ),
          ],
        ),
      )),
    );
  }
}
