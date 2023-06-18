// ignore: depend_on_referenced_packages
import 'package:appblooddonation/models/commonbloc.dart';
import 'package:appblooddonation/models/loginmodel.dart';
import 'package:appblooddonation/models/signinmodel.dart';
import 'package:appblooddonation/webclient.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:connectivity/connectivity.dart';


class Repository {
  


    Future<SigninModel> signin(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final SigninModel userModel = SigninModel.fromJson(response);
    return userModel;
  }
  Future<LoginModel> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final LoginModel userModel = LoginModel.fromJson(response);
    return userModel;
  }

  Future<CommonModel> employeeprofile({required String url}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.get(url);
    final CommonModel employeeProfileModel = CommonModel.fromJson(response);
    return employeeProfileModel;
  }

  Future<CommonModel> userreg({required String url ,dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url,data);
    final CommonModel employeeProfileModel = CommonModel.fromJson(response);
    return employeeProfileModel;
  }
}
