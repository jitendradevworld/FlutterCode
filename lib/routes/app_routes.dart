import 'package:jitendra_s_application2/presentation/home_screen/home_screen.dart';
import 'package:jitendra_s_application2/presentation/home_screen/binding/home_binding.dart';
import 'package:jitendra_s_application2/presentation/transactions_tab_container_screen/transactions_tab_container_screen.dart';
import 'package:jitendra_s_application2/presentation/transactions_tab_container_screen/binding/transactions_tab_container_binding.dart';
import 'package:jitendra_s_application2/presentation/accounts_screen/accounts_screen.dart';
import 'package:jitendra_s_application2/presentation/accounts_screen/binding/accounts_binding.dart';
import 'package:jitendra_s_application2/presentation/investments_screen/investments_screen.dart';
import 'package:jitendra_s_application2/presentation/investments_screen/binding/investments_binding.dart';
import 'package:jitendra_s_application2/presentation/credit_cards_screen/credit_cards_screen.dart';
import 'package:jitendra_s_application2/presentation/credit_cards_screen/binding/credit_cards_binding.dart';
import 'package:jitendra_s_application2/presentation/loans_screen/loans_screen.dart';
import 'package:jitendra_s_application2/presentation/loans_screen/binding/loans_binding.dart';
import 'package:jitendra_s_application2/presentation/services_screen/services_screen.dart';
import 'package:jitendra_s_application2/presentation/services_screen/binding/services_binding.dart';
import 'package:jitendra_s_application2/presentation/setting_edit_profile_tab_container_screen/setting_edit_profile_tab_container_screen.dart';
import 'package:jitendra_s_application2/presentation/setting_edit_profile_tab_container_screen/binding/setting_edit_profile_tab_container_binding.dart';
import 'package:jitendra_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:jitendra_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String transactionsPage = '/transactions_page';

  static const String transactionsTabContainerScreen =
      '/transactions_tab_container_screen';

  static const String accountsScreen = '/accounts_screen';

  static const String investmentsScreen = '/investments_screen';

  static const String creditCardsScreen = '/credit_cards_screen';

  static const String loansScreen = '/loans_screen';

  static const String servicesScreen = '/services_screen';

  static const String settingEditProfilePage = '/setting_edit_profile_page';

  static const String settingEditProfileTabContainerScreen =
      '/setting_edit_profile_tab_container_screen';

  static const String settingPreferencePage = '/setting_preference_page';

  static const String settingSecurityPage = '/setting_security_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: transactionsTabContainerScreen,
      page: () => TransactionsTabContainerScreen(),
      bindings: [
        TransactionsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: accountsScreen,
      page: () => AccountsScreen(),
      bindings: [
        AccountsBinding(),
      ],
    ),
    GetPage(
      name: investmentsScreen,
      page: () => InvestmentsScreen(),
      bindings: [
        InvestmentsBinding(),
      ],
    ),
    GetPage(
      name: creditCardsScreen,
      page: () => CreditCardsScreen(),
      bindings: [
        CreditCardsBinding(),
      ],
    ),
    GetPage(
      name: loansScreen,
      page: () => LoansScreen(),
      bindings: [
        LoansBinding(),
      ],
    ),
    GetPage(
      name: servicesScreen,
      page: () => ServicesScreen(),
      bindings: [
        ServicesBinding(),
      ],
    ),
    GetPage(
      name: settingEditProfileTabContainerScreen,
      page: () => SettingEditProfileTabContainerScreen(),
      bindings: [
        SettingEditProfileTabContainerBinding(),
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
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
