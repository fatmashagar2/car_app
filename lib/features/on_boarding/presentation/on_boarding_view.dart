import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/on_boarding_cubit.dart';
import 'on_boarding_page.dart';

class OnBoardingView extends StatelessWidget {
  final PageController _controller = PageController();

  final List<Map<String, String>> pages = [
    {
      "image": "assets/images/img1.png",
      "title": "كل اللي انت محتاجه في مكان واحد",
      "subtitle": "عربيتك تستاهل",
    },
    {
      "image": "assets/images/img2.png",
      "title": "افضل خدمة صيانة",
      "subtitle": "خليك مطمن دايماً",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: Scaffold(
        body: BlocBuilder<OnBoardingCubit, int>(
          builder: (context, currentIndex) {
            return Stack(
              children: [
                PageView.builder(
                  controller: _controller,
                  onPageChanged: (index) {
                    context.read<OnBoardingCubit>().changePage(index);
                  },
                  itemCount: pages.length,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return OnBoardingPage(
                      image: pages[index]["image"]!,
                      title: pages[index]["title"]!,
                      subtitle: pages[index]["subtitle"]!,
                      currentIndex: currentIndex,
                      controller: _controller,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
