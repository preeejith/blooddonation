import 'dart:io';

import 'package:appblooddonation/ui/authentication/4.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Certificate extends StatefulWidget {
  const Certificate({super.key});

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  File? imageFile;
 List<File?> files = [];
 List<String> image = [];
 String? photoList;
 String? imagepath;


  @override

  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  
  backgroundColor: Colors.pink,
  title: Text("Upload Certificate",style: TextStyle(color: Colors.white),),),
      body: SingleChildScrollView(
         child: Column(
           children: [
            Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
 Stack(
 children: [
 imageFile == null
 ? Padding(
   padding: const EdgeInsets.all(8.0),
   child: Container(height: 200,width: 300,color: Colors.green,),
 )
 : const SizedBox.shrink(),
Positioned(
 right: 0,
 bottom: 0,
 child: CircleAvatar(
 backgroundColor: const Color(0xff2B8DD4),
 radius: 20,
 child: IconButton(
 onPressed: () {
 _settingModalBottomSheet(context);
 },
 icon: const Icon(
 Icons.camera_alt_outlined,
 color: Colors.white,
 size: 15,
 ),
 ))),
 ],
 ),
 Stack(
 children: <Widget>[
 imageFile == null
 ? const SizedBox.shrink()
: Container(
height: 200,width: 300,color: Colors.green,

child:Image.file(File(imageFile!.toString(),), width: 100,
    height: 100,)
//  Image: FileImage(imageFile!),
 ),
Positioned(
 right: 0,
 bottom: 0,
 child: imageFile == null
 ? Container(
 color: Colors.red,
height: 55,width: 200,
 child: IconButton(
 onPressed: () {
 _settingModalBottomSheet(context);
 },
 icon: const Icon(
 Icons.add,
color: Colors.white,
 size: 15,
 ),
 ))
 : Container(
 color: Colors.red,
height: 55,width: 200,
child: IconButton(
 onPressed: () {
 setState(() {
 imageFile = null;
 });
 },
 icon: const Icon(
 Icons.remove,
 size: 15,
 ),
 ))),
 ],
 ),
],
 ),


             MaterialButton(

                        minWidth: 310,

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Four()));

                        },
      ),
imageFile!=null?
Text("Upload Certificate",style: TextStyle(color: Colors.black),):Text("Please Upload your Certificate",style: TextStyle(color: Colors.black),),


           ],
         ),
    ),
    );
  }
  void _settingModalBottomSheet(context) {
showModalBottomSheet(
 context: context,
 builder: (context) {
 return Column(
 mainAxisSize: MainAxisSize.min,
 children: <Widget>[ ListTile(
 leading: const Icon(Icons.camera_alt),
title: const Text(
 'Camera',
 style: TextStyle(fontFamily: 'RobotoM'),
 ),
 onTap: () {
 Navigator.pop(context);
 _getFromCamera();
 },
 ),
 ListTile(
leading: const Icon(Icons.photo),
title: const Text(
'Gallery',
 style: TextStyle(fontFamily: 'RobotoM'),
),
 onTap: () {
 Navigator.pop(context);
_getFromGallery();
 },
),
],
);
 });
 }

_getFromGallery() async {
// ignore: deprecated_member_use
 var documets = await ImagePicker().pickImage(
source: ImageSource.gallery,
maxWidth: 1800,
maxHeight: 1800,
);
 imageFile = File(documets!.path);
 files.add(File(documets.path));
 setState(() {});
 }

 /// Get from Camera
 _getFromCamera() async {
 // ignore: deprecated_member_use
 var documets = await ImagePicker().pickImage(
 source: ImageSource.camera,
 maxWidth: 1800,
maxHeight: 1800,
 );
 imageFile = File(documets!.path);
files.add(File(documets.path));
setState(() {});
 imagepath = documets.path;
 }


}