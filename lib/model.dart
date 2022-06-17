// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class Welcome {
  Welcome({
    required this.id,
    required this.parentId,
    required this.name,
    required this.username,
    required this.mObileNo,
    required this.emailAddress,
    required this.status,
    required this.userType,
    required this.category,
    required this.kycStatus,
    required this.totalAchiEvedIncome,
    required this.totalExpectedIncome,
    required this.packageName,
    required this.packageAmount,
    required this.createdOn,
    required this.children,
    required this.j,
    required this.i,
  });

  String id;
  String parentId;
  String name;
  String username;
  String mObileNo;
  String emailAddress;
  String status;
  String userType;
  String category;
  String kycStatus;
  String totalAchiEvedIncome;
  String totalExpectedIncome;
  String packageName;
  String packageAmount;
  String createdOn;
  List<Child> children;
  String j;
  String i;

  factory Welcome.fromJson(String str) => Welcome.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Welcome.fromMap(Map<String, dynamic> json) => Welcome(
        id: json["Id"] == null ? "" : json["Id"].toString(),
        parentId: json["parentId"].toString(),
        name: json["Name"] == null ? "" : json["Name"].toString(),
        username: json["Username"] == null ? "" : json["Username"].toString(),
        mObileNo: json["M obileNo"] == null ? "" : json["M obileNo"].toString(),
        emailAddress: json["EmailAddress"] == null ? "" : json["EmailAddress"].toString(),
        status: json["Status"] == null ? "" : json["Status".toString()],
        userType: json["UserType"] == null ? "" : json["UserType"].toString(),
        category: json["Category"] == null ? "" : json["Category"].toString(),
        kycStatus: json["KYCStatus"] == null ? "" : json["KYCStatus"].toString(),
        totalAchiEvedIncome: json["TotalAchi evedIncome"] == null ? "" : json["TotalAchi evedIncome"].toString(),
        totalExpectedIncome: json["TotalExpectedIncome"] == null ? "" : json["TotalExpectedIncome"].toString(),
        packageName: json["PackageName "] == null ? "" : json["PackageName "].toString(),
        packageAmount: json["PackageAmount"] == null ? "" : json["PackageAmount"].toString(),
        createdOn: json["CreatedOn"] == null ? "" : json["CreatedOn"].toString(),
        children: json["Children"] == null ? [] : List<Child>.from(json["Children"].map((x) => Child.fromMap(x))),
        j: json["j"],
        i: json["i"],
      );

  Map<String, dynamic> toMap() => {
        "Id": id == null ? null : id,
        "parentId": parentId,
        "Name": name == null ? null : name,
        "Username": username == null ? null : username,
        "M obileNo": mObileNo == null ? null : mObileNo,
        "EmailAddress": emailAddress == null ? null : emailAddress,
        "Status": status == null ? null : status,
        "UserType": userType == null ? null : userType,
        "Category": category == null ? null : category,
        "KYCStatus": kycStatus == null ? null : kycStatus,
        "TotalAchi evedIncome": totalAchiEvedIncome == null ? null : totalAchiEvedIncome,
        "TotalExpectedIncome": totalExpectedIncome == null ? null : totalExpectedIncome,
        "PackageName ": packageName == null ? null : packageName,
        "PackageAmount": packageAmount == null ? null : packageAmount,
        "CreatedOn": createdOn == null ? null : createdOn,
        "Children": children == null ? null : List<dynamic>.from(children.map((x) => x.toMap())),
        "j": j,
        "i": i,
      };
}

class Child {
  Child({
    required this.id,
    required this.parentId,
    required this.name,
    required this.username,
    required this.mobileNo,
    required this.emailAddress,
    required this.status,
    required this.userType,
    required this.category,
    required this.kycStatus,
    required this.totalAchievedIncome,
    required this.childTotalExpectedIncome,
    required this.packageName,
    required this.packageAmount,
    required this.createdOn,
    required this.children,
    required this.j,
    required this.i,
    required this.parentID,
    required this.totalExpectedIncoMe,
    required this.totalExpectedIncome,
    required this.childParentId,
  });

  String id;
  String parentId;
  String name;
  String username;
  String mobileNo;
  String emailAddress;
  String status;
  String userType;
  String category;
  String kycStatus;
  String totalAchievedIncome;
  String childTotalExpectedIncome;
  String packageName;
  String packageAmount;
  String createdOn;
  List<Child> children;
  String j;
  String i;
  String parentID;
  String totalExpectedIncoMe;
  String totalExpectedIncome;
  String childParentId;

  factory Child.fromJson(String str) => Child.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Child.fromMap(Map<String, dynamic> json) => Child(
        id: json["Id"] == null ? "" : json["Id"].toString(),
        parentId: json["parentId"] == null ? "" : json["parentId"].toString(),
        name: json["Name"] == null ? "" : json["Name"].toString(),
        username: json["Username"] == null ? "" : json["Username"].toString(),
        mobileNo: json["MobileNo"] == null ? "" : json["MobileNo"].toString(),
        emailAddress: json["EmailAddress"] == null ? "" : json["EmailAddress"].toString(),
        status: json["Status"] == null ? "" : json["Status"].toString(),
        userType: json["UserType"] == null ? "" : json["UserType"].toString(),
        category: json["Category"] == null ? "" : json["Category"].toString(),
        kycStatus: json["KYCStatus"] == null ? "" : json["KYCStatus"].toString(),
        totalAchievedIncome: json["TotalAchievedIncome"] == null ? "" : json["TotalAchievedIncome"].toString(),
        childTotalExpectedIncome: json["TotalExpectedIncome "] == null ? "" : json["TotalExpectedIncome "].toString(),
        packageName: json["PackageName"] == null ? "" : json["PackageName"].toString(),
        packageAmount: json["PackageAmount"] == null ? "" : json["PackageAmount".toString()].toString(),
        createdOn: json["CreatedOn"] == null ? "" : json["CreatedOn"].toString(),
        children: json["Children"] == null ? [] : List<Child>.from(json["Children"].map((x) => Child.fromMap(x))),
        j: json["j"] == null ? "" : json["j"].toString(),
        i: json["i"].toString(),
        parentID: json["parentI d"] == null ? "" : json["parentI d"].toString(),
        totalExpectedIncoMe: json["TotalExpectedInco me"] == null ? "" : json["TotalExpectedInco me"].toString(),
        totalExpectedIncome: json["TotalExpectedIncome"] == null ? "" : json["TotalExpectedIncome"].toString(),
        childParentId: json["parentId "] == null ? "" : json["parentId "].toString(),
      );

  Map<String, dynamic> toMap() => {
        "Id": id == null ? null : id,
        "parentId": parentId == null ? null : parentId,
        "Name": name == null ? null : name,
        "Username": username == null ? null : username,
        "MobileNo": mobileNo == null ? null : mobileNo,
        "EmailAddress": emailAddress == null ? null : emailAddress,
        "Status": status == null ? null : status,
        "UserType": userType == null ? null : userType,
        "Category": category == null ? null : category,
        "KYCStatus": kycStatus == null ? null : kycStatus,
        "TotalAchievedIncome": totalAchievedIncome == null ? null : totalAchievedIncome,
        "TotalExpectedIncome ": childTotalExpectedIncome == null ? null : childTotalExpectedIncome,
        "PackageName": packageName == null ? null : packageName,
        "PackageAmount": packageAmount == null ? null : packageAmount,
        "CreatedOn": createdOn == null ? null : createdOn,
        "Children": children == null ? null : List<dynamic>.from(children.map((x) => x.toMap())),
        "j": j == null ? null : j,
        "i": i,
        "parentI d": parentID == null ? null : parentID,
        "TotalExpectedInco me": totalExpectedIncoMe == null ? null : totalExpectedIncoMe,
        "TotalExpectedIncome": totalExpectedIncome == null ? null : totalExpectedIncome,
        "parentId ": childParentId == null ? null : childParentId,
      };
}

class EnumValues<String> {
  Map<String, String> map;
  Map<String, String> reverseMap;

  EnumValues(this.map, this.reverseMap);

  Map<String, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
