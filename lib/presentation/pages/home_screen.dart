import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:uang/presentation/constant/list_service_widget.dart';
import 'package:uang/presentation/constant/theme.dart';
import 'package:uang/presentation/pages/history_labuh.dart';
import 'package:uang/presentation/pages/profil_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: mediumBlackTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  'Amanda Putri',
                  style: semiboldBlackTextStyle.copyWith(fontSize: 13),
                ),
              ],
            ),
            const CircleAvatar(
              foregroundImage: AssetImage("assets/images/profile.png"),
            ),
          ],
        ),
        automaticallyImplyLeading: false, // untuk nonaktifkan arrow back nya
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70),
                      child: Text(
                        'Make delivering your cargo easier and more practical',
                        style:
                            boldwhitetext, // pastikan boldWhiteTextStyle sudah didefinisikan
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Master Data',
                style: regularBlackTextStyle.copyWith(fontSize: 15),
              ),
              const Divider(),
              const SizedBox(height: 14),
              const ListServiceWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: deepblueColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
                  child: GNav(
              activeColor: Colors.white,
              iconSize: 24,
              backgroundColor: deepblueColor,
              color: Colors.grey,
              tabBackgroundColor: Colors.amber[700]!,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              textStyle: semiboldwhitetext,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.history_rounded,
                  text: 'History',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profil',
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (int index) {
                setState(() {
                  selectedIndex = index;
                });
                switch (index) {
                  case 0:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                    break;

                  case 1:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryLabuh(),
                      ),
                    );
                    break;

                  case 2:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilScreen(),
                      ),
                    );
                    break;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}