

class ApiKeys{

  static const String root = "http://43.204.117.226:8001";

  static const String userLogin = "$root/auth/login/";

  static const String varifyUser = "$root/auth/checkUserIsVerified/";

  static const String sendOtp = "$root/auth/forgotPassword/";

  static const String varifyOtp = "$root/auth/varifyotp/";

  static const String changePassword = "$root/auth/createNewPasswordAfterForgotPassword/";
}