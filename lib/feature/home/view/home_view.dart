import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(
              Icons.arrow_right_alt_outlined,
              color: Color.fromRGBO(5, 159, 179, 1),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'الملف الشخصي',
            style: TextStyle(
              color: Color.fromRGBO(5, 159, 179, 1),
              fontWeight: FontWeight.w600,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 25),
          const CircleAvatar(
            radius: 75,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 73,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image(
                  image: AssetImage('lib/assets/i.png'),
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'محمد العكلة',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          _buildOptionRow(
            context: context,
            title: 'تعديل المعلومات',
            icon: Icons.edit,
          ),
          const SizedBox(height: 20),
          _buildOptionRow(
            context: context,
            title: 'اللغة',
            icon: Icons.language,
          ),
          const SizedBox(height: 20),
          _buildOptionRow(
            context: context,
            title: 'الاعدادات',
            icon: Icons.settings,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(5, 159, 179, 1),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'المحادثات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'المواعيد',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }

  Widget _buildOptionRow({
    required BuildContext context,
    required String title,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 20,
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            icon,
            color: const Color.fromRGBO(5, 159, 179, 1),
            size: 24,
          ),
        ],
      ),
    );
  }
}
