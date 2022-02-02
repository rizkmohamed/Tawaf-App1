import 'package:get/get.dart';

import '../modules/About/bindings/about_binding.dart';
import '../modules/About/views/about_view.dart';
import '../modules/About_umrah/bindings/about_umrah_binding.dart';
import '../modules/About_umrah/views/about_umrah_view.dart';
import '../modules/Change_email/bindings/change_email_binding.dart';
import '../modules/Change_email/views/change_email_view.dart';
import '../modules/Change_password/bindings/change_password_binding.dart';
import '../modules/Change_password/views/change_password_view.dart';
import '../modules/Contact_Us/bindings/contact_us_binding.dart';
import '../modules/Contact_Us/views/contact_us_view.dart';
import '../modules/Current_umrah/bindings/current_umrah_binding.dart';
import '../modules/Current_umrah/views/current_umrah_view.dart';
import '../modules/FAQ/bindings/faq_binding.dart';
import '../modules/FAQ/views/faq_view.dart';
import '../modules/Fatwa/bindings/fatwa_binding.dart';
import '../modules/Fatwa/views/fatwa_view.dart';
import '../modules/Forget_passwod/bindings/forget_passwod_binding.dart';
import '../modules/Forget_passwod/views/forget_passwod_view.dart';
import '../modules/History_order/bindings/history_order_binding.dart';
import '../modules/History_order/views/history_order_view.dart';
import '../modules/Invoice/bindings/invoice_binding.dart';
import '../modules/Invoice/views/invoice_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Offer/bindings/offer_binding.dart';
import '../modules/Offer/views/offer_view.dart';
import '../modules/Rating/bindings/rating_binding.dart';
import '../modules/Rating/views/rating_view.dart';
import '../modules/Register/bindings/register_binding.dart';
import '../modules/Register/views/register_view.dart';
import '../modules/Requset_details_umrah/bindings/requset_details_umrah_binding.dart';
import '../modules/Requset_details_umrah/views/requset_details_umrah_view.dart';
import '../modules/Requset_umrah/bindings/requset_umrah_binding.dart';
import '../modules/Requset_umrah/views/requset_umrah_view.dart';
import '../modules/Setting/bindings/setting_binding.dart';
import '../modules/Setting/views/setting_view.dart';
import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/Success_Partners/bindings/success_partners_binding.dart';
import '../modules/Success_Partners/views/success_partners_view.dart';
import '../modules/Terms_and_conditons/bindings/terms_and_conditons_binding.dart';
import '../modules/Terms_and_conditons/views/terms_and_conditons_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWOD,
      page: () => ForgetPasswodView(),
      binding: ForgetPasswodBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITONS,
      page: () => TermsAndConditonsView(),
      binding: TermsAndConditonsBinding(),
    ),
    GetPage(
      name: _Paths.OFFER,
      page: () => OfferView(),
      binding: OfferBinding(),
    ),
    GetPage(
      name: _Paths.REQUSET_UMRAH,
      page: () => RequsetUmrahView(),
      binding: RequsetUmrahBinding(),
    ),
    GetPage(
      name: _Paths.REQUSET_DETAILS_UMRAH,
      page: () => RequsetDetailsUmrahView(),
      binding: RequsetDetailsUmrahBinding(),
      children: [
        GetPage(
          name: _Paths.REQUSET_DETAILS_UMRAH,
          page: () => RequsetDetailsUmrahView(),
          binding: RequsetDetailsUmrahBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.INVOICE,
      page: () => InvoiceView(),
      binding: InvoiceBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_ORDER,
      page: () => HistoryOrderView(),
      binding: HistoryOrderBinding(),
    ),
    GetPage(
      name: _Paths.CURRENT_UMRAH,
      page: () => CurrentUmrahView(),
      binding: CurrentUmrahBinding(),
    ),
    GetPage(
      name: _Paths.RATING,
      page: () => RatingView(),
      binding: RatingBinding(),
    ),
    GetPage(
      name: _Paths.FATWA,
      page: () => FatwaView(),
      binding: FatwaBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_UMRAH,
      page: () => AboutUmrahView(),
      binding: AboutUmrahBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_EMAIL,
      page: () => ChangeEmailView(),
      binding: ChangeEmailBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESS_PARTNERS,
      page: () => SuccessPartnersView(),
      binding: SuccessPartnersBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_US,
      page: () => ContactUsView(),
      binding: ContactUsBinding(),
    ),
  ];
}
