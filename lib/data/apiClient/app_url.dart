class AppUrl {
  static const String baseUrl = 'http://159.89.172.204:8082';

  // Authentication API's
  static const String loginUrl = '$baseUrl/auth/loginByOtp';
  static const String registerUrl = '$baseUrl/auth/createAccount';
  static const String loginOtp = "$baseUrl/auth/verifyOtp";

  // KYC API's
  static const String aadharUpload = "$baseUrl/api/uploadAadhar";
  static const String bankDetails = "$baseUrl/api/uploadBankDetails";
  static const String uploadProfile = "$baseUrl/api/uploadProfile";
  static const String pancardUpload = "$baseUrl/api/uploadPancard";

  // sell veggies api
  static const String sellveggies = "$baseUrl/api/get/allProductData";
  static const String sellHere = "$baseUrl/api/add/productForSell/placed";

  // Forgot Password Api's

  static const String forgotByEmail = "$baseUrl/auth/forgetByEmail";
  static const String forgotByMobile = "$baseUrl/auth/forgetByMob";
  static const String verifyForgotOtp = "$baseUrl/auth/verifyAnOtp";
  static const String resetPassword = "$baseUrl/auth/resetPassword";
}
