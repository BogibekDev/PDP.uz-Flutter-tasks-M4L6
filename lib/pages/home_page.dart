import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Messages",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          centerTitle: true),
      body: PageView(
        children: [
          Container(
            color: Colors.deepPurple,
            child: const Center(
              child: Text("Home"),
            ),
          ),
          ListView(
            children: [
              _itemView(
                  image: 'assets/images/img1.jpg',
                  name: 'Azamat',
                  time: '20:18',
                  message: "Salom"),
              _itemView(
                  image: 'assets/images/img1.jpg',
                  name: 'Shaptoli',
                  time: 'yesterday',
                  message: "Nagap"),
              _itemView(
                  image: 'assets/images/img1.jpg',
                  name: 'Joe',
                  time: '12 march',
                  message: "How are you today?"),
              _itemView(
                  image: 'assets/images/img1.jpg',
                  name: 'Williams',
                  time: '08:15',
                  message: "It has been re-Scheduled to next Saturday 7:30pm"),
            ],
          ),
          Container(
            color: Colors.purple,
            child: const Center(
              child: Text("Video"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text("Notification"),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.redAccent),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification",backgroundColor: Colors.red),
        ],
      ),
    );
  }

  Widget _itemView(
      {String? image, String? name, String? time, String? message}) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      name!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(time!),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  message!,
                  style: const TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            color: Colors.blue,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/img1.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Bogibek Matyaqubov",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  "bogibekdev@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Home",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_2_outlined,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text("Profile",
                              style: TextStyle(fontSize: 20)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.people_outline,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Aboutus",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
