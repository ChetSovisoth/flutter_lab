import 'package:flutter/material.dart';
import 'package:lab/base/styles.dart';
import 'package:lab/base/data.dart';

class HomeView extends StatelessWidget {
  final String username;

  const HomeView({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, $username",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20, // Adjust the radius to change the size of the circle
                    backgroundColor: AppStyles.primaryColor, // Circle background color
                    child: const Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.white, // Color of the person icon inside the circle
                    ),
                  ),
                ]
            ),
            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[300],
                hintText: "Search ...",
                hintStyle: TextStyle(color: Colors.grey[700]),
                prefixIcon: Icon(Icons.search, color:  AppStyles.primaryColor),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              color: AppStyles.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Continue to',
                            style: TextStyle(fontSize: 14, color: Colors.white)
                        ),
                        const Text(
                            'Mobile Dev. Course',
                            style: TextStyle(fontSize: 14, color: Colors.white)

                        ),

                        const SizedBox(height: 10),

                        const SizedBox(
                          width: 120,
                          child: LinearProgressIndicator(
                            value: 0.65,
                            color: Colors.redAccent,
                            backgroundColor: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                            '65% Completed',
                            style: AppStyles.courseCardStyle
                        )
                      ],
                    ),
                    const Image(
                      image: AssetImage(Data.logo),
                      height: 150,
                      width: 150,
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Data.courseData.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 170,
                    child: Card(
                      color: AppStyles.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(Data.logo),
                              height: 100,
                              width: 100,
                            ),
                            Text(
                              Data.courseData[index],
                              style: AppStyles.courseCardStyle
                            )
                          ]
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
