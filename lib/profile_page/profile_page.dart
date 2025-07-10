import 'package:figmatasarim/custom_widgets/bottombar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              left: BorderSide(
                color: Colors.blue,
                width: 1.5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Jade Collins",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "assets/profilepage_assets/profile.png",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Personal",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            "assets/profilepage_assets/user.png",
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCard(
                        "assets/profilepage_assets/star.png",
                        "Favorite",
                      ),
                      _buildCard(
                        "assets/profilepage_assets/purse.png",
                        "Wallet",
                      ),
                      _buildCard(
                        "assets/profilepage_assets/received.png",
                        "Orders",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/fluent.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "Promotions",
                  subtitle: "Exclusive deals for you",
                ),
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/prime.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "View Rewards",
                ),
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/paper.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "Send Feedback",
                ),
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/settings.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "App Preferences",
                ),
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/phone.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "Support",
                ),
                _buildTile(
                  image: Image.asset(
                    "assets/profilepage_assets/tip.png",
                    width: 28,
                    height: 28,
                  ),
                  title: "About Ovenly",
                  subtitle: "Passion for pizza explained",
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  Widget _buildCard(String imagePath, String label) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, width: 48, height: 48),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildTile({
    required Image image,
    required String title,
    String? subtitle,
  }) {
    return ListTile(
      leading: image,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: subtitle != null
          ? Text(subtitle, style: TextStyle(color: Colors.grey.shade600))
          : null,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      horizontalTitleGap: 16,
      dense: true,
      onTap: () {},
    );
  }
}
