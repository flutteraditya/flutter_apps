class User {
  int? userId;
  String? username;
  Tokens? tokens;
  String? email;
  int? mobileNo;
  String? firstName;
  String? lastName;
  String? empId;
  String? org;
  String? orgName;
  String? orgLogo;
  String? displayName;
  List<EmpRole>? empRole;
  String? desgCode;
  String? desgName;
  String? shiftCode;
  String? shiftName;
  String? shiftStarttime;
  String? shiftEndtime;
  String? profile;
  String? reportingTo;
  bool? isGeoFencingEnable;
  bool? isDailyAttendance;
  List<WorklocationsList>? worklocationsList;
  bool? isOrgAdmin;
  bool? isSuperUser;
  bool? isApprover;
  String? statutoryLocationCode;
  String? statutoryLocation;
  String? lastLogin;
  String? deviceId;

  User(
      {this.userId,
      this.username,
      this.tokens,
      this.email,
      this.mobileNo,
      this.firstName,
      this.lastName,
      this.empId,
      this.org,
      this.orgName,
      this.orgLogo,
      this.displayName,
      this.empRole,
      this.desgCode,
      this.desgName,
      this.shiftCode,
      this.shiftName,
      this.shiftStarttime,
      this.shiftEndtime,
      this.profile,
      this.reportingTo,
      this.isGeoFencingEnable,
      this.isDailyAttendance,
      this.worklocationsList,
      this.isOrgAdmin,
      this.isSuperUser,
      this.isApprover,
      this.statutoryLocationCode,
      this.statutoryLocation,
      this.lastLogin,
      this.deviceId});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    username = json['username'];
    tokens =
        json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
    email = json['email'];
    mobileNo = json['mobile_no'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    empId = json['emp_id'];
    org = json['org'];
    orgName = json['org_name'];
    orgLogo = json['org_logo'];
    displayName = json['display_name'];
    if (json['emp_role'] != null) {
      empRole = <EmpRole>[];
      json['emp_role'].forEach((v) {
        empRole!.add(EmpRole.fromJson(v));
      });
    }
    desgCode = json['desg_code'];
    desgName = json['desg_name'];
    shiftCode = json['shift_code'];
    shiftName = json['shift_name'];
    shiftStarttime = json['shift_starttime'];
    shiftEndtime = json['shift_endtime'];
    profile = json['profile'];
    reportingTo = json['reporting_to'];
    isGeoFencingEnable = json['is_geo_fencing_enable'];
    isDailyAttendance = json['is_daily_attendance'];
    if (json['worklocations_list'] != null) {
      worklocationsList = <WorklocationsList>[];
      json['worklocations_list'].forEach((v) {
        worklocationsList!.add(WorklocationsList.fromJson(v));
      });
    }
    isOrgAdmin = json['is_org_admin'];
    isSuperUser = json['is_super_user'];
    isApprover = json['is_approver'];
    statutoryLocationCode = json['statutory_location_code'];
    statutoryLocation = json['statutory_location'];
    lastLogin = json['last_login'];
    deviceId = json['device_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['username'] = username;
    if (tokens != null) {
      data['tokens'] = tokens!.toJson();
    }
    data['email'] = email;
    data['mobile_no'] = mobileNo;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['emp_id'] = empId;
    data['org'] = org;
    data['org_name'] = orgName;
    data['org_logo'] = orgLogo;
    data['display_name'] = displayName;
    if (empRole != null) {
      data['emp_role'] = empRole!.map((v) => v.toJson()).toList();
    }
    data['desg_code'] = desgCode;
    data['desg_name'] = desgName;
    data['shift_code'] = shiftCode;
    data['shift_name'] = shiftName;
    data['shift_starttime'] = shiftStarttime;
    data['shift_endtime'] = shiftEndtime;
    data['profile'] = profile;
    data['reporting_to'] = reportingTo;
    data['is_geo_fencing_enable'] = isGeoFencingEnable;
    data['is_daily_attendance'] = isDailyAttendance;
    if (worklocationsList != null) {
      data['worklocations_list'] =
          worklocationsList!.map((v) => v.toJson()).toList();
    }
    data['is_org_admin'] = isOrgAdmin;
    data['is_super_user'] = isSuperUser;
    data['is_approver'] = isApprover;
    data['statutory_location_code'] = statutoryLocationCode;
    data['statutory_location'] = statutoryLocation;
    data['last_login'] = lastLogin;
    data['device_id'] = deviceId;
    return data;
  }

  @override
  String toString(){
    return "$username";
  }
}

class Tokens {
  String? refresh;
  String? access;

  Tokens({this.refresh, this.access});

  Tokens.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    access = json['access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refresh'] = refresh;
    data['access'] = access;
    return data;
  }
}

class EmpRole {
  int? id;
  String? roleCode;
  String? roleName;

  EmpRole({this.id, this.roleCode, this.roleName});

  EmpRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleCode = json['role_code'];
    roleName = json['role_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['role_code'] = roleCode;
    data['role_name'] = roleName;
    return data;
  }
}

class WorklocationsList {
  String? locationCode;
  String? locationName;

  WorklocationsList({this.locationCode, this.locationName});

  WorklocationsList.fromJson(Map<String, dynamic> json) {
    locationCode = json['location_code'];
    locationName = json['location_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location_code'] = locationCode;
    data['location_name'] = locationName;
    return data;
  }
}
