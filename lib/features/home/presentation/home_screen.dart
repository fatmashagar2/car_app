import 'package:flutter/material.dart';

import 'banner_slider_widget.dart';
import 'categories_widget.dart';
import 'custom_button_nav_bar.dart';
import 'header_widget.dart';
import 'horizontal_list_widget.dart';
import 'large_card_widget.dart';
import 'services_button_row.dart';
import 'welcome_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              Center(child: WelcomeText()),
              CategoriesWidget(),
              BannerSliderWidget(),
              Image.asset("assets/images/img37.png"),
              HorizontalListWidget(),
              Image.asset("assets/images/img30.png"),
              Directionality(
                textDirection: TextDirection.ltr,
                child: ServiceButtonsRow(),
              ),
              Image.asset("assets/images/img31.png"),
              LargeCardWidget(),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
