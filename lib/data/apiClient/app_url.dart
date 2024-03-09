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
}
