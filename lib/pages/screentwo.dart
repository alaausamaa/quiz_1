import 'package:flutter/material.dart';

import 'images.dart';
//import 'work_out_widget.dart';
import 'custom.dart';
import 'images.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({super.key});

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      padding: const EdgeInsets.only(
        top: 50,
        right: 30,
        left: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(Images.bnt),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Loly',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  Text(
                    'Ready to workout?',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Stack(   alignment: Alignment.topRight,
                children: [ImageIcon(
                  AssetImage("assets/images/noti.png" ),
                  color: Color(0xFF717BBC), size: 40,
                ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Text("", style: TextStyle(fontSize:5  , fontWeight: FontWeight.w400),
                    ),

                  ),
                ],

              ),
            ],
          ),
          Container(
            width: mediaQuery.width,
            margin: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFFE3E6F5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            Images.heart,
                          ),
                          color: Color(0xFF717BBC),
                        ),
                        const SizedBox(
                          width: 3.5,
                        ),
                        Text(
                          'Heart Rate',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '81 BPM',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                Container(
                  width: 1.8,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            Images.list,
                          ),
                          color: Color(0xFF717BBC),
                        ),
                        const SizedBox(
                          width: 3.5,
                        ),
                        Text(
                          'To-do',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '32.5 %',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                Container(
                  width: 1.8,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage(
                            Images.cal,
                          ),
                          color: Color(0xFF717BBC),
                        ),
                        const SizedBox(
                          width: 3.5,
                        ),
                        Text(
                          'Calo',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '1000 Cal',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Text('Workout Programs'),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 25.0),
              indicatorColor: const Color(0xFF363F72),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16.0,
              ),
              labelColor: const Color(0xFF363F72),
              unselectedLabelColor: const Color(0xFF667085),
              tabs: const [
                Tab(
                  text: 'All Type',
                ),
                Tab(
                  text: 'Full Body',
                ),
                Tab(
                  text: 'Upper',
                ),
                Tab(
                  text: 'Lower',
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView(
                    padding: const EdgeInsets.only(top: 10.0),
                    children: const [
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),
                      WorkOutWidget(
                          image: Images.img2, title: 'Plank Exercise', day: '5'),
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),
                      WorkOutWidget(
                          image: Images.img2, title: 'Plank Exercise', day: '5'),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.only(top: 10.0),
                    children: const [
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),
                      WorkOutWidget(
                          image: Images.img2, title: 'Plank Exercise', day: '5'),

                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.only(top: 10.0),
                    children: const [
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),

                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.only(top: 10.0),
                    children: const [
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),
                      WorkOutWidget(
                          image: Images.img2, title: 'Plank Exercise', day: '5'),
                      WorkOutWidget(
                          image: Images.img1, title: 'Morning Yoga', day: '7'),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}