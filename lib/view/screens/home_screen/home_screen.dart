import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:leap/view/screens/home_screen/widgets/job_card.dart';
import 'package:leap/view/screens/home_screen/widgets/take_quiz_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(logo),
            ),
          ),
        ],
      ),
      backgroundColor: secondaryBackGroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: primaryColor,
          ),
          onPressed: () {},
        ),
        title: Image.asset(logo),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: primaryColor,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: ImageIcon(AssetImage(notification)),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: Column(
        children: [
          CarouselWithIndicatorDemo(),
          const TakeQuiz(),
        ],
      ),
    );
  }
}

class VerticalSliderDemo extends StatelessWidget {
  VerticalSliderDemo({super.key});
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * .3,
      width: context.screenWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        items: jobSlider,
      ),
    );
  }
}

class VerticalSliderDemo1 extends StatelessWidget {
  VerticalSliderDemo1({super.key});
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight * .25,
      child: CarouselSlider(
        options: CarouselOptions(height: 400, enlargeCenterPage: true),
        items: jobSlider.map((job) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: job,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final List<Widget> jobSlider = [
    JobCard(job: dummyJobs[0]),
    JobCard(job: dummyJobs[1]),
    JobCard(job: dummyJobs[2]),
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * .3,
      child: Column(children: [
        CarouselSlider(
          items: jobSlider,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: jobSlider.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
