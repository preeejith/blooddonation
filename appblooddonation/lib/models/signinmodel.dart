class SigninModel {
  bool? status;
  String? msg;
  Data? data;
  String? token;

  SigninModel({this.status, this.msg, this.data, this.token});

  SigninModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  String? sId;
  String? role;
  String? status;
  String? donarname;
  String? gmail;
  String? createDate;
  String? updateDate;
  int? iV;

  Data(
      {this.sId,
      this.role,
      this.status,
      this.donarname,
      this.gmail,
      this.createDate,
      this.updateDate,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    role = json['role'];
    status = json['status'];
    donarname = json['donarname'];
    gmail = json['gmail'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['role'] = this.role;
    data['status'] = this.status;
    data['donarname'] = this.donarname;
    data['gmail'] = this.gmail;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['__v'] = this.iV;
    return data;
  }
}
