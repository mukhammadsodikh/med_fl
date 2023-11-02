import 'package:flutter/material.dart';
import 'package:med_fl/components/my_doctors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.date,
  }) : super(key: key);

  final String name;
  final String description;
  final String date;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearchBarOpened = false;
  TextEditingController searchController = TextEditingController();

  void _openSearchBar() {
    setState(() {
      isSearchBarOpened = true;
    });
  }

  void _closeSearchBar() {
    setState(() {
      isSearchBarOpened = false;
      searchController.clear();
    });
  }
  int currentIndex = 0; // Tanlangan tugmani indeksi

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    // Tanlangan tugmani indeksiga asoslangan lojikni yozing
    if (currentIndex == 0) {
      // Home tugmasi tanlangan bo'lsa
      // ...
    } else if (currentIndex == 1) {
      // Bookmark tugmasi tanlangan bo'lsa
      // ...
    } else if (currentIndex == 2) {
      // Hujjatlar tugmasi tanlangan bo'lsa
      // ...
    } else if (currentIndex == 3) {
      // Profil tugmasi tanlangan bo'lsa
      // ...
    }
  }
  void _performSearch(String query) {
    // Bu yerdagi kodlar qidirishni bajarish uchun ishlatiladi
    print("Qidirilayotgan so'z: $query");
  }
  // final card = customCard[index];
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        backgroundColor: Color(0xfff6f6f6),
        title: isSearchBarOpened
            ? TextField(
          controller: searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Shifokor yoki kasalxona nomi...',
            border: InputBorder.none,
          ),
          onChanged: _performSearch,
        )
            : Text('Bosh sahifa'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _openSearchBar,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff979797),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff074CFF),
                    ),
                    DropdownButton<String?>(
                      value: selectedCity,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCity = newValue;
                        });
                      },
                      items: <DropdownMenuItem<String?>>[
                        DropdownMenuItem<String?>(
                          value: '1',
                          child: Text('Andijon'),
                        ),
                        DropdownMenuItem<String?>(
                          value: '2',
                          child: Text('Toshkent'),
                        ),
                        DropdownMenuItem<String?>(
                          value: '3',
                          child: Text('Qashqadaryo'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      "Shifokorlar ro'yhati",
                      style: TextStyle(
                        color: Color(0xff1D1D1D),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Color(0xff3C3C434D)),
                  ],
                ),
                const SizedBox(height: 14,),
                Row(
                  children: [
                    Container(
                      width: 166,
                      height: 224,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const SizedBox(height: 14,),
                        Container(

                          width: 90,
                          height: 90,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffe1e1e1),
                          ),
                          child: Icon(Icons.person_2,size: 70,),

                        ),
                          const SizedBox(height: 14,),

                          Center(
                            child: Text('Teshavoy Shukurov',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)
                                )
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Center(
                            child: Text("O'liy ma'lumotli...",
                              style: TextStyle(

                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x99000000),
                              )
                            )
                          ),
                          const SizedBox(height: 20,),
                          Center(
                              child: Text("2.5km   Andijon",
                                  style: TextStyle(

                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff074CFF),
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12,),
                    Container(
                      width: 166,
                      height: 224,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const SizedBox(height: 14,),
                          Container(

                            width: 90,
                            height: 90,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffe1e1e1),
                            ),
                            child: Icon(Icons.person_2,size: 70,),

                          ),
                          const SizedBox(height: 14,),

                          Center(
                            child: Text('Teshavoy Shukurov',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)
                                )
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Center(
                              child: Text("O'liy ma'lumotli...",
                                  style: TextStyle(

                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0x99000000),
                                  )
                              )
                          ),
                          const SizedBox(height: 20,),
                          Center(
                              child: Text("2.5km   Andijon",
                                  style: TextStyle(

                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff074CFF),
                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Text(
                  "Kasalxonalar",
                  style: TextStyle(
                    color: Color(0xff1D1D1D),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Color(0xff3C3C434D)),
              ],
            ),
             const SizedBox(height: 16,),
            Container(
                width: 361,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: 125,
                    child: Stack(
                    children: [
                      Image.asset('assets/images/hospital1.png',
                      ),
                      Positioned(
                        top: 35, // 35 pikseldan pastroq joylashish
                        left: 16,
                        child: Image.asset(
                          'assets/images/hospital1_1.png',
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Shox International Hospital",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                      "«Shox med center» ориентирован на оказание  "
                          "...",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                      )
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      "34 Aybek Street, Tashkent 100015, Uzbekistan",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff888787)
                      )
                  )
                ],
              ),
            ),
            const SizedBox(height: 16,),
            Container(
              width: 361,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: 125,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/hospital2.png',
                        ),
                        Positioned(
                          top: 35, // 35 pikseldan pastroq joylashish
                          left: 16,
                          child: Image.asset(
                            'assets/images/hospital2_2.png',
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Shox International Hospital",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                      "“ HAYAT ” оказывает диагностическую... "
                          "...",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      )
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      "Street Mevazor 5, Uzbekistan",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff888787)
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
