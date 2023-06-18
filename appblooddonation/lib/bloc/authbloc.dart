import 'dart:async';

import 'package:appblooddonation/models/commonbloc.dart';
import 'package:appblooddonation/models/signinmodel.dart';
import 'package:appblooddonation/prefmanager/prefmanager.dart';
import 'package:appblooddonation/repositories/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String? dsvm;
  LoginBloc() : super(LoginState()) {
    on<GetLoginEvent>(_getLoginEvent);
    //  on<GetLogin1Event>(_getLogin1Event);
    on<GetUserRegistrationEvent>(_getUserRegistrationEvent);
    on<GetLogoutEvent>(_getLogoutEvent);
  }
  Future<FutureOr<void>> _getLoginEvent(
      GetLoginEvent event, Emitter<LoginState> emit) async {
    emit(Requesting());
    SigninModel signinModel;
    Map data = {
      "gmail": event.email,
      "key": event.password,
    };
    var url = '/Login';
    signinModel = await Repository().signin(url: url, data: data);
    if (signinModel.status == true) {
      await PrefManager.setToken(signinModel.token);

      emit(LoginSuccess(signinModel: signinModel));
    } else {
      emit(LoginError(error: signinModel.msg.toString()));
    }
  }
  //  Future<FutureOr<void>> _getLogin1Event(
  //     GetLogin1Event event, Emitter<LoginState> emit) async {
  //   emit(Requesting());
  //   LoginModel loginModel;
  //   Map data = {
  //     "userName": event.email,
  //     "password": event.password,
  //   };
  //   var url = '/login';
  //   loginModel = await Repository().checkPhoneNumber(url: url, data: data);
  //   if (loginModel.status == true) {
  //     await PrefManager.setToken(loginModel.token);
  //     await PrefManager.setRole(loginModel.role);
  //     await PrefManager.setUserId(loginModel.userName);
  //     emit(LoginSuccess(loginModel: loginModel));
  //   } else {
  //     emit(LoginError(error: loginModel.msg.toString()));
  //   }
  // }

  Future<FutureOr<void>> _getUserRegistrationEvent(
      GetUserRegistrationEvent event, Emitter<LoginState> emit) async {
    String url;
    emit(UserRegistering());
    CommonModel commonModel = CommonModel();
    Map data = {
      "donarname": event.name,
      "donarnumb": event.phone,
      "gmail": event.email,
      "key": event.password,
      "bloodgroup": event.pincode,
      "location": event.orgaisation,
      // "street": event.street,
      // "buildingNo": event.buildingNo,
      // "houseNo": event.houseNo,
      // "landmark": event.landmark,
      // "pincode": event.pincode,
      // "place": event.town,
      // "orgaisation": event.orgaisation
    };
    url = '/donarregistration';

    commonModel = await Repository().userreg(url: url, data: data);
    if (commonModel.status == true) {
      emit(RegUserSucces(error: commonModel.msg.toString()));
    } else {
      Fluttertoast.showToast(msg: commonModel.msg.toString());
      emit(UserRegError(error: commonModel.msg.toString()));
    }
  }

  Future<FutureOr<void>> _getLogoutEvent(
      GetLogoutEvent event, Emitter<LoginState> emit) async {
    emit(Loggingout());
    CommonModel commonModel;
    var devicetoken = await PrefManager.getDeviceToken();

    var url = '/user/logout?deviceToken=$devicetoken';
    commonModel = await Repository().employeeprofile(
      url: url,
    );
    if (commonModel.status == true) {
      emit(LogoutSuccess(commonModel: commonModel));
    } else {
      emit(LogoutError(error: commonModel.msg.toString()));
    }
  }
}

//events
class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetLoginEvent extends LoginEvent {
  final String? password;
  final String? email;
  GetLoginEvent({this.password, this.email});
}

class GetLogin1Event extends LoginEvent {
  final String? password;
  final String? email;
  GetLogin1Event({this.password, this.email});
}

class GetLogoutEvent extends LoginEvent {
  final String? password, count;
  final String? phone;
  GetLogoutEvent({this.count, this.password, this.phone});
}

class GetUserRegistrationEvent extends LoginEvent {
  final bool? isuser;
  final String? name, phone;
  final String? email,
      password,
      district,
      town,
      street,
      buildingNo,
      houseNo,
      landmark,
      pincode,
      place,
      orgaisation;
  GetUserRegistrationEvent({
    this.name,
    this.isuser,
    this.phone,
    this.orgaisation,
    this.email,
    this.password,
    this.district,
    this.town,
    this.street,
    this.buildingNo,
    this.houseNo,
    this.landmark,
    this.pincode,
    this.place,
  });
}

class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Requesting extends LoginState {}

class UserRegistering extends LoginState {}

class Loggingout extends LoginState {}

class LoginSuccess extends LoginState {
  final SigninModel signinModel;
  LoginSuccess({required this.signinModel});
}

class AdminLoginSuccess extends LoginState {
  final CommonModel loginModel;
  AdminLoginSuccess({required this.loginModel});
}

class LogoutSuccess extends LoginState {
  final CommonModel commonModel;
  LogoutSuccess({required this.commonModel});
}

class EmployeeLoginSuccess extends LoginState {
  final CommonModel loginModel;
  EmployeeLoginSuccess({required this.loginModel});
}

class ClientLoginSuccess extends LoginState {
  final CommonModel loginModel;
  ClientLoginSuccess({required this.loginModel});
}

class LoginError extends LoginState {
  final String error;
  LoginError({required this.error});
}

class UserRegError extends LoginState {
  final String error;
  UserRegError({required this.error});
}

class RegUserSucces extends LoginState {
  final String error;
  RegUserSucces({required this.error});
}

class LogoutError extends LoginState {
  final String error;
  LogoutError({required this.error});
}

class AddUserContactMatchList extends LoginState {
  final CommonModel loginModel;
  AddUserContactMatchList({required this.loginModel});
}
