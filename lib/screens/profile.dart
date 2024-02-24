import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  profile({
    super.key,
  });

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff171C18),
          ),
          extendBody: true,
          backgroundColor: const Color(0xff171C18),
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff282828),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(40),
                      blurRadius: 6.0,
                      spreadRadius: 5.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/FB_IMG_1678720102837.jpg'),
                        backgroundColor: Colors.green,
                        radius: 48,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Zeyad Mohamed Farghly',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        information_container(
                            iconData: Icons.calendar_today,
                            Key: 'Age',
                            value: '26',
                            unit: 'years',
                            bgColor: const Color(
                              0xffCEE3F8,
                            ),
                            iconColor: const Color(0xff1697EE)),
                        information_container(
                            iconData: Icons.balance,
                            Key: 'Weight',
                            value: '78',
                            unit: 'kg',
                            bgColor: const Color(
                              0xffC6EFC5,
                            ),
                            iconColor: const Color(0xff48AF50)),
                        information_container(
                          iconData: Icons.height,
                          Key: 'Height',
                          value: '197',
                          unit: 'cm',
                          bgColor: const Color(
                            0xffFFE7C5,
                          ),
                          iconColor: const Color(0xffFA9702),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff282828),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(40),
                      blurRadius: 6.0,
                      spreadRadius: 5.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.sunny,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Light Theme',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Switch(
                            value: _value!,
                            onChanged: (Value) {
                              setState(() {
                                _value = !Value;
                              });
                            })
                      ],
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.2),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff282828),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(40),
                      blurRadius: 6.0,
                      spreadRadius: 5.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Color(0xff282828),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withAlpha(40),
                      blurRadius: 6.0,
                      spreadRadius: 5.0,
                      offset: const Offset(3, 0))
                ]),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white.withOpacity(0),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.analytics,
                  ),
                  label: 'Analysis',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.auto_delete,
                  ),
                  label: 'Prescriptions',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          )),
    );
  }
}

class information_container extends StatelessWidget {
  IconData iconData;
  String Key;
  String value;
  String unit;
  Color bgColor;
  Color iconColor;
  information_container({
    super.key,
    required this.iconData,
    required this.Key,
    required this.value,
    required this.unit,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: iconColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          const SizedBox(
            height: 55,
          ),
          Text(
            Key,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(.2)),
          ),
          Row(
            children: [
              Text(
                value,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(unit)
            ],
          ),
        ],
      ),
    );
  }
}
