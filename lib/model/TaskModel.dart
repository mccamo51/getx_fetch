class TaskModel {
  bool ok;
  String msg;
  List<Data> data;

  TaskModel({this.ok, this.msg, this.data});

  TaskModel.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ok'] = this.ok;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String activity;
  bool checked;

  Data({this.id, this.activity, this.checked});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    activity = json['activity'];
    checked = json['checked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['activity'] = this.activity;
    data['checked'] = this.checked;
    return data;
  }
}
