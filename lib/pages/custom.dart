import 'package:flutter/material.dart';

class WorkOutWidget extends StatelessWidget {
  final String image;
  final String title;
  final String day;

  const WorkOutWidget(
      {super.key, required this.image, required this.title, required this.day});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      width: mediaQuery.width,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
      margin: const EdgeInsets.only(
        bottom: 20.0,
        right: 5.0,
        left: 5.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEAECF5),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: mediaQuery.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text('${day} Days'),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(title),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Improve mental focus.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time_outlined),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${DateTime.now().minute} mins',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(image, width: mediaQuery.width * 0.38),
        ],
      ),
    );
  }
}