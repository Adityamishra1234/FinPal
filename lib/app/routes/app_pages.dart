import 'package:get/get.dart';

import '../../widgets/custom_bottom_nav_bar.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/confirm_transfer/bindings/confirm_transfer_binding.dart';
import '../modules/confirm_transfer/views/confirm_transfer_view.dart';
import '../modules/createNewPassword/bindings/create_new_password_binding.dart';
import '../modules/createNewPassword/views/create_new_password_view.dart';
import '../modules/financialAssesment/bindings/financial_assesment_binding.dart';
import '../modules/financialAssesment/views/financial_assesment_view.dart';
import '../modules/forgotPassword/bindings/forgot_password_binding.dart';
import '../modules/forgotPassword/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landingPage/bindings/landing_page_binding.dart';
import '../modules/landingPage/views/landing_page_view.dart';
import '../modules/notification_screen/bindings/notification_screen_binding.dart';
import '../modules/notification_screen/views/notification_screen_view.dart';
import '../modules/profile_setup/bindings/profile_setup_binding.dart';
import '../modules/profile_setup/views/profile_setup_view.dart';
import '../modules/registrationPage/bindings/registration_page_binding.dart';
import '../modules/registrationPage/views/registration_page_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/transfer_to/bindings/transfer_to_binding.dart';
import '../modules/transfer_to/views/transfer_to_view.dart';
import '../modules/verificationPage/bindings/verification_page_binding.dart';
import '../modules/verificationPage/views/verification_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.SPLASH;
  static const INITIAL = Routes.NAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.NAVBAR,
      page: () => CustomBottomNavBar(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_PAGE,
      page: () => const VerificationPageView(),
      binding: VerificationPageBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_PASSWORD,
      page: () => const CreateNewPasswordView(),
      binding: CreateNewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION_PAGE,
      page: () => const RegistrationPageView(),
      binding: RegistrationPageBinding(),
    ),
    GetPage(
      name: _Paths.FINANCIAL_ASSESSMENT,
      page: () => FinancialAssessmentView(),
      binding: FinancialAssessmentBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETUP,
      page: () => ProfileSetupView(),
      binding: ProfileSetupBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_SCREEN,
      page: () => const NotificationScreenView(),
      binding: NotificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.TRANSFER_TO,
      page: () => TransferToView(),
      binding: TransferToBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_TRANSFER,
      page: () => const ConfirmTransferView(),
      binding: ConfirmTransferBinding(),
    ),
  ];
}
