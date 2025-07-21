import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_body2.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_body3.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../auth/presentation/views/login_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  static const routNamte='onboarding';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  double currentPage=0;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.addListener(() {
        setState(() {
          currentPage = _pageController.page ?? 0;
        });
      });
    });
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                OnBoardingViewBody(
                  onTap: (){
                    Prefs.setBool(KisOnboardingSeen, true);
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  position: currentPage,
                ),
                OnBoardingViewBody2(
                  position: currentPage,
                  onTap: () {
                    Prefs.setBool(KisOnboardingSeen, true);
                    _pageController.nextPage(duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                ),
                OnBoardingViewBody3(
                  position: currentPage,
                  onTap: () {
                    Prefs.setBool(KisOnboardingSeen, true);
                    Navigator.pushReplacementNamed(context, LoginView.routeName);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
