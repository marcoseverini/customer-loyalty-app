import 'package:flutter/material.dart';

import 'package:poc/components/components.dart';

import 'package:poc/style/app_theme.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              children: [
                CardNewsH(
                  title: "Lorem Ipsum Dolor Sit Amet",
                  image: 'assets/imageH.png',
                ),
                CardNewsH(
                  title: "Lorem Ipsum Dolor Sit Amet",
                  image: 'assets/imageH2.png',
                ),
                SizedBox(
                  height: 252,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV2.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV3.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV2.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV3.png'),
                    ],
                  ),
                ),
                CardNewsH(
                  title: "Lorem Ipsum Dolor Sit Amet",
                  image: 'assets/imageH2.png',
                ),
                CardNewsH(
                  title: "Lorem Ipsum Dolor Sit Amet",
                  image: 'assets/imageV3.png',
                ),
                SizedBox(
                  height: 252,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV2.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV3.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV2.png'),
                      CardNewsV(
                          title: "Lorem Ipsum Dolor Sit Amet",
                          image: 'assets/imageV3.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(64),
                  ),
                ),
                margin: EdgeInsets.zero,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset('assets/ps5.png', fit: BoxFit.cover),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24.0, bottom: 24),
                        child: SizedBox(
                            width: 133,
                            child: Text(
                              "Titolo News",
                              style:
                                  AppTextTheme.headline(color: AppColors.grey1),
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NewsPage()));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(32),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.grey1),
                          ),
                          child: const Icon(
                            Icons.keyboard_backspace_outlined,
                            size: 20,
                            color: AppColors.grey7,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                  style: AppTextTheme.body(color: AppColors.grey5),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer suscipit sit amet nunc vitae cursus. Etiam velit leo, interdum mollis arcu in, sollicitudin interdum elit. Ut scelerisque, leo sit amet pellentesque aliquet, velit justo semper velit, in ultricies lacus lacus eget nisl. Integer viverra ex et ex blandit porta"),
            )
          ],
        ),
      ),
    ));
  }
}
