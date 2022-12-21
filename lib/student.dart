class Student {
  final int _id;
  final String _name;
  final String _nim;
  final String _phone;
  final String _email;

  Student({this._id, this._name, this._nim, this._phone, this._email});
  Student.withId(this._id, this._name, this._nim, this._phone, this._email);

  int get id {
    return _id;
  }

  String get name => _name;
  String get nim => _nim;
  String get phone => _phone;
  String get email => _email;

  set name(String newName) {
    if (newName.length <= 255) {
      this._name = newName;
    }
  }

  set nim(String newNim) {
    if (newNim.length <= 255) {
      this._nim = newNim;
    }
  }

  set phone(String newPhone) {
    if (newPhone.length <= 255) {
      this._phone = newPhone;
    }
  }

  set email(String newEmail) {
    if (newEmail <= 255) {
      this._email = newEmail;
    }
  }

  Map<String, dynamic> toMap(){
  //This is an Map Object
  var map = Map<String, dynamic>();
  //This means Already Created in the Database
  if(id != null){
    map['id'] = _id;
  }
  map['name'] = _name;
  map['nim'] = _nim;
  map["phone"] = _phone;
  map['email'] = _email;
  return map;
}

Student.fromMapObject(Map<String, dynamic> map){
  this._id = map['id'];
  this._name = map['name'];
  this._nim = map['nim'];
  this._phone = map['phone'];
  this._email = map['email'];
}
