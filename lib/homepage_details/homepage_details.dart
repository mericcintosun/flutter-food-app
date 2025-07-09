import 'package:flutter/material.dart';

class HomepageDetails extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;

  const HomepageDetails({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.favorite_border),
              color: Colors.black,
              onPressed: () {
                // Favorilere ekle
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 80),
              Image.asset(
                imagePath,
                width: 240,
                height: 240,
                fit: BoxFit.contain,
              ),

              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffB24C2B),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.remove, color: Colors.white),
                    SizedBox(width: 20),
                    Text(
                      "02",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.add, color: Colors.white),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Baked to perfection on a crispy golden crust, this pizza delivers the perfect balance of bold flavors and cheesy goodness...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: " Read More",
                              style: TextStyle(
                                color: Color(0xffB24C2B),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/mainpage_assets/saat.png"),
                              const SizedBox(width: 6),
                              const Text(
                                "8-16 Min",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/mainpage_assets/biber.png"),
                              const SizedBox(width: 6),
                              const Text(
                                "Medium",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/mainpage_assets/alev.png"),
                              const SizedBox(width: 6),
                              const Text(
                                "250 Kcal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Toppings",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          topping("assets/details_assets/mushroom.png"),
                          topping("assets/details_assets/food.png"),
                          topping("assets/details_assets/pepperoni.png"),
                          topping("assets/mainpage_assets/pineapple.png"),
                          topping("assets/mainpage_assets/spinach 1.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // 👇 Bottom Pricing Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Price",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                "\$$price",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "\$10.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Add to Bag Button
                      ElevatedButton.icon(
                        onPressed: () {
                          // Sepete ekle
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffB24C2B),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Add to Bag",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topping(String assetPath) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff9f9f9),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 60,
      width: 60,
      child: Image.asset(assetPath),
    );
  }
}
