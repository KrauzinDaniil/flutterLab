import 'package:flutter/material.dart';
import 'profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //  colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 145, 119, 119)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedTab = 'profile';
  Color buttonActiveColor = Colors.green;
  Color buttonPassiveColor = Colors.grey;
  

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/woman.png';
    AssetImage assetImage = AssetImage(assetNamePath);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.input),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('assets/man.png'),
                const Text('Екатерина',
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: selectedTab == 'profile'
                                    ? buttonActiveColor
                                    : buttonPassiveColor,
                                width: 3.0),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {
                              setState(() {
                                selectedTab =
                                    'profile'; // При нажатии на эту кнопку выбирается вкладка "Профиль"
                              });
                            },
                            child: Center(
                              child: Text('Профиль',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: selectedTab == 'settings'
                                    ? buttonActiveColor
                                    : buttonPassiveColor,
                                width: 3.0),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.green,
                            onTap: () {
                              setState(() {
                                selectedTab =
                                    'settings'; // При нажатии на эту кнопку выбирается вкладка "Профиль"
                              });
                            },
                            child: Center(
                              child: Text('Настройки',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            selectedTab == 'profile' ? ProfileWidget() : SettingsWidget(),
          ],
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text('Это вкладка "Настройки"'),
    );
  }
}
