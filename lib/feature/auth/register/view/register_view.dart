import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.arrow_right_outlined)],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/i.png'),
                        width: 75,
                        height: 150,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'مشوارك',
                        style: TextStyle(
                          color: Color(0xFF00A7B3),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(5, 159, 179, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'اسم المستخدم او الايميل',
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: Icon(Icons.person_outline,
                                  color: Colors.black),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            textAlign: TextAlign.right,
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'كلمة المرور',
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon:
                                  Icon(Icons.lock_outline, color: Colors.black),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'انشاء حساب',
                              style: TextStyle(
                                color: Color(0xFF00A7B3),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'هل نسيت كلمة المرور؟',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.email,
                              color: Colors.black,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
