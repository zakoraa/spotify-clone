import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/pages/errors/not_found.dart';
import 'package:spotify/pages/coming_soon.dart';
import 'package:spotify/module/home/view/home_view.dart';
import 'package:spotify/module/library/view/library_view.dart';
import 'package:spotify/module/loginPage/view/login_view.dart';
import 'package:spotify/module/searchPage1/view/search_view1.dart';
import 'package:spotify/module/searchPage2/view/search_view2.dart';
import 'package:spotify/module/signup/view/pages/favorite_singer.dart';
import 'package:spotify/module/signup/view/pages/first_page.dart';
import 'package:spotify/module/signup/view/pages/email_page.dart';
import 'package:spotify/module/signup/view/pages/password_page.dart';
import 'package:spotify/module/signup/view/pages/username_page.dart';
import 'package:spotify/module/songs/view/bruno_mars.dart';
import 'package:spotify/module/songs/view/mcr.dart';
import 'package:spotify/widgets/more.dart';
import 'package:spotify/module/songs/view/rex_orange_county.dart';

import '../module/songs/view/queen.dart';
import '../pages/main_page.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.firstPage_signUp, page: () => const FirstPage()),
    GetPage(name: RouteName.login_view, page: () => const LoginView()),
    GetPage(name: RouteName.email_signUp, page: () => const Page1()),
    GetPage(name: RouteName.password_signUp, page: () => const Page2()),
    GetPage(name: RouteName.username_signUp, page: () => const Page3()),
    GetPage(name: RouteName.favoriteSinger_signUp, page: () =>  FavoriteSinger()),
    GetPage(name: RouteName.main_page, page: () => const MainPage()),
    GetPage(name: RouteName.home_view, page: () => const HomeView()),
    GetPage(name: RouteName.search_view1, page: () => const SearchView1()),
    GetPage(name: RouteName.search_view2, page: () => const SearchView2()),
    GetPage(name: RouteName.library_view, page: () => const LibraryView()),
    GetPage(name: RouteName.rexOrange_county, page: () => const RexOrangeCounty()),
    GetPage(name: RouteName.bruno_mars, page: () => const BrunoMars()),
    GetPage(name: RouteName.mcr, page: () => const MCR()),
    GetPage(name: RouteName.queen, page: () => const Queen()),
    GetPage(name: RouteName.coming_soon, page: () => const ComingSoon()),
    // GetPage(name: RouteName.more_page, page: ()=> MorePage())
  ];

}
