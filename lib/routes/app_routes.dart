import 'package:fresh_mandi/presentation/driver_details_screen/driver_details_screen.dart';
import 'package:fresh_mandi/presentation/driver_details_screen/binding/driver_details_binding.dart';
import 'package:fresh_mandi/presentation/splash_screen/splash_screen.dart';
import 'package:fresh_mandi/presentation/splash_screen/binding/splash_binding.dart';
import 'package:fresh_mandi/presentation/start_screen/start_screen.dart';
import 'package:fresh_mandi/presentation/start_screen/binding/start_binding.dart';
import 'package:fresh_mandi/presentation/create_account_screen/create_account_screen.dart';
import 'package:fresh_mandi/presentation/create_account_screen/binding/create_account_binding.dart';
import 'package:fresh_mandi/presentation/login_screen/login_screen.dart';
import 'package:fresh_mandi/presentation/login_screen/binding/login_binding.dart';
import 'package:fresh_mandi/presentation/password_screen/password_screen.dart';
import 'package:fresh_mandi/presentation/password_screen/binding/password_binding.dart';
import 'package:fresh_mandi/presentation/password_typing_screen/password_typing_screen.dart';
import 'package:fresh_mandi/presentation/password_typing_screen/binding/password_typing_binding.dart';
import 'package:fresh_mandi/presentation/wrong_password_screen/wrong_password_screen.dart';
import 'package:fresh_mandi/presentation/wrong_password_screen/binding/wrong_password_binding.dart';
import 'package:fresh_mandi/presentation/password_recovery_screen/password_recovery_screen.dart';
import 'package:fresh_mandi/presentation/password_recovery_screen/binding/password_recovery_binding.dart';
import 'package:fresh_mandi/presentation/password_recovery_code_screen/password_recovery_code_screen.dart';
import 'package:fresh_mandi/presentation/password_recovery_code_screen/binding/password_recovery_code_binding.dart';
import 'package:fresh_mandi/presentation/new_password_screen/new_password_screen.dart';
import 'package:fresh_mandi/presentation/new_password_screen/binding/new_password_binding.dart';
import 'package:fresh_mandi/presentation/aadhar_kyc_screen/aadhar_kyc_screen.dart';
import 'package:fresh_mandi/presentation/aadhar_kyc_screen/binding/aadhar_kyc_binding.dart';
import 'package:fresh_mandi/presentation/aadhar_upload_kyc_screen/aadhar_upload_kyc_screen.dart';
import 'package:fresh_mandi/presentation/aadhar_upload_kyc_screen/binding/aadhar_upload_kyc_binding.dart';
import 'package:fresh_mandi/presentation/pan_kyc_screen/pan_kyc_screen.dart';
import 'package:fresh_mandi/presentation/pan_kyc_screen/binding/pan_kyc_binding.dart';
import 'package:fresh_mandi/presentation/bank_kyc_screen/bank_kyc_screen.dart';
import 'package:fresh_mandi/presentation/bank_kyc_screen/binding/bank_kyc_binding.dart';
import 'package:fresh_mandi/presentation/pic_verification_screen/pic_verification_screen.dart';
import 'package:fresh_mandi/presentation/pic_verification_screen/binding/pic_verification_binding.dart';
import 'package:fresh_mandi/presentation/kyc_complete_screen/kyc_complete_screen.dart';
import 'package:fresh_mandi/presentation/kyc_complete_screen/binding/kyc_complete_binding.dart';
import 'package:fresh_mandi/presentation/activity_page_screen/activity_page_screen.dart';
import 'package:fresh_mandi/presentation/activity_page_screen/binding/activity_page_binding.dart';
import 'package:fresh_mandi/presentation/sales_report_screen/sales_report_screen.dart';
import 'package:fresh_mandi/presentation/sales_report_screen/binding/sales_report_binding.dart';
import 'package:fresh_mandi/presentation/sales_report_filter_screen/sales_report_filter_screen.dart';
import 'package:fresh_mandi/presentation/sales_report_filter_screen/binding/sales_report_filter_binding.dart';
import 'package:fresh_mandi/presentation/sales_report_filter1_screen/sales_report_filter1_screen.dart';
import 'package:fresh_mandi/presentation/sales_report_filter1_screen/binding/sales_report_filter1_binding.dart';
import 'package:fresh_mandi/presentation/sales_report_empty_screen/sales_report_empty_screen.dart';
import 'package:fresh_mandi/presentation/sales_report_empty_screen/binding/sales_report_empty_binding.dart';
import 'package:fresh_mandi/presentation/profile_edit_screen/profile_edit_screen.dart';
import 'package:fresh_mandi/presentation/profile_edit_screen/binding/profile_edit_binding.dart';
import 'package:fresh_mandi/presentation/setting_screen/setting_screen.dart';
import 'package:fresh_mandi/presentation/setting_screen/binding/setting_binding.dart';
import 'package:fresh_mandi/presentation/sold_veggies_screen/sold_veggies_screen.dart';
import 'package:fresh_mandi/presentation/sold_veggies_screen/binding/sold_veggies_binding.dart';
import 'package:fresh_mandi/presentation/sell_veggies_screen/sell_veggies_screen.dart';
import 'package:fresh_mandi/presentation/sell_veggies_screen/binding/sell_veggies_binding.dart';
import 'package:fresh_mandi/presentation/sell_here_screen/sell_here_screen.dart';
import 'package:fresh_mandi/presentation/sell_here_screen/binding/sell_here_binding.dart';
import 'package:fresh_mandi/presentation/change_password_screen/change_password_screen.dart';
import 'package:fresh_mandi/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:fresh_mandi/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:fresh_mandi/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String driverDetailsScreen = '/driver_details_screen';

  static const String splashScreen = '/splash_screen';

  static const String startScreen = '/start_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String loginScreen = '/login_screen';

  static const String passwordScreen = '/password_screen';

  static const String passwordTypingScreen = '/password_typing_screen';

  static const String wrongPasswordScreen = '/wrong_password_screen';

  static const String passwordRecoveryScreen = '/password_recovery_screen';

  static const String passwordRecoveryCodeScreen =
      '/password_recovery_code_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String aadharKycScreen = '/aadhar_kyc_screen';

  static const String aadharUploadKycScreen = '/aadhar_upload_kyc_screen';

  static const String panKycScreen = '/pan_kyc_screen';

  static const String bankKycScreen = '/bank_kyc_screen';

  static const String picVerificationScreen = '/pic_verification_screen';

  static const String kycCompleteScreen = '/kyc_complete_screen';

  static const String activityPageScreen = '/activity_page_screen';

  static const String salesReportScreen = '/sales_report_screen';

  static const String salesReportFilterScreen = '/sales_report_filter_screen';

  static const String salesReportFilter1Screen = '/sales_report_filter1_screen';

  static const String salesReportEmptyScreen = '/sales_report_empty_screen';

  static const String profileEditScreen = '/profile_edit_screen';

  static const String settingScreen = '/setting_screen';

  static const String soldVeggiesScreen = '/sold_veggies_screen';

  static const String sellVeggiesScreen = '/sell_veggies_screen';

  static const String sellHereScreen = '/sell_here_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: driverDetailsScreen,
      page: () => DriverDetailsScreen(),
      bindings: [
        DriverDetailsBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: passwordScreen,
      page: () => PasswordScreen(),
      bindings: [
        PasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordTypingScreen,
      page: () => PasswordTypingScreen(),
      bindings: [
        PasswordTypingBinding(),
      ],
    ),
    GetPage(
      name: wrongPasswordScreen,
      page: () => WrongPasswordScreen(),
      bindings: [
        WrongPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordRecoveryScreen,
      page: () => PasswordRecoveryScreen(),
      bindings: [
        PasswordRecoveryBinding(),
      ],
    ),
    GetPage(
      name: passwordRecoveryCodeScreen,
      page: () => PasswordRecoveryCodeScreen(),
      bindings: [
        PasswordRecoveryCodeBinding(),
      ],
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      bindings: [
        NewPasswordBinding(),
      ],
    ),
    GetPage(
      name: aadharKycScreen,
      page: () => AadharKycScreen(),
      bindings: [
        AadharKycBinding(),
      ],
    ),
    GetPage(
      name: aadharUploadKycScreen,
      page: () => AadharUploadKycScreen(),
      bindings: [
        AadharUploadKycBinding(),
      ],
    ),
    GetPage(
      name: panKycScreen,
      page: () => PanKycScreen(),
      bindings: [
        PanKycBinding(),
      ],
    ),
    GetPage(
      name: bankKycScreen,
      page: () => BankKycScreen(),
      bindings: [
        BankKycBinding(),
      ],
    ),
    GetPage(
      name: picVerificationScreen,
      page: () => PicVerificationScreen(),
      bindings: [
        PicVerificationBinding(),
      ],
    ),
    GetPage(
      name: kycCompleteScreen,
      page: () => KycCompleteScreen(),
      bindings: [
        KycCompleteBinding(),
      ],
    ),
    GetPage(
      name: activityPageScreen,
      page: () => ActivityPageScreen(),
      bindings: [
        ActivityPageBinding(),
      ],
    ),
    GetPage(
      name: salesReportScreen,
      page: () => SalesReportScreen(),
      bindings: [
        SalesReportBinding(),
      ],
    ),
    GetPage(
      name: salesReportFilterScreen,
      page: () => SalesReportFilterScreen(),
      bindings: [
        SalesReportFilterBinding(),
      ],
    ),
    GetPage(
      name: salesReportFilter1Screen,
      page: () => SalesReportFilter1Screen(),
      bindings: [
        SalesReportFilter1Binding(),
      ],
    ),
    GetPage(
      name: salesReportEmptyScreen,
      page: () => SalesReportEmptyScreen(),
      bindings: [
        SalesReportEmptyBinding(),
      ],
    ),
    GetPage(
      name: profileEditScreen,
      page: () => ProfileEditScreen(),
      bindings: [
        ProfileEditBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: soldVeggiesScreen,
      page: () => SoldVeggiesScreen(),
      bindings: [
        SoldVeggiesBinding(),
      ],
    ),
    GetPage(
      name: sellVeggiesScreen,
      page: () => SellVeggiesScreen(),
      bindings: [
        SellVeggiesBinding(),
      ],
    ),
    GetPage(
      name: sellHereScreen,
      page: () => SellHereScreen(),
      bindings: [
        SellHereBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
