
import 'package:flutter/cupertino.dart';
import 'package:public_tourism/common/constants.dart';
import 'package:public_tourism/features/contributor/contributor_page.dart';
import 'package:public_tourism/features/contributor/post_page.dart';
import 'package:public_tourism/features/home/home_page.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
    AppContants.homeRoute: (context) => const HomePage(),
    AppContants.contributorRoute: (context) => const ContributorPage(),
    AppContants.postRoute: (context) => const PostPage()
 };