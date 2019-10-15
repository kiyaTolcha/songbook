import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'መዝሙር ደብተር'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final drawerHeader = DrawerHeader(
        child: Center(
      child: Text("መዝሙር ደብተር"),
    ));
    String ly =
    ("""አንተን ካገኘሁ ጀምሮ
        ሕይወቴ በአንተ አምሮ
        የፍቅርህን ብዛት አልችልም ልገልጻት
        የምህረትህን ብዛት አልችልም ልገልጻት (፪x)
        የፈሰሰው ሠማያዊ ፀጋ 
        አኑሮኛል ከአንተ ጋ 
        የመረጥከኝ ተባረክልኝ 
        የወደድከኝ ተባረክልኝ 
        በመስቀል ላይ ስለ እኔ ሞተሃል 
        አበሳዬን ወስደሃል 
        ምን ልክፈልህ 
        እንዲያው ልገዛልህ (፪x) 
        ሰው ያረገኝ ፀጋህ ነው 
        ታሪኬን ለውጦ 
        ከሞት አስመልጦ 
        ጌታ ሆይ ተመስገን (፪x)
        አዝ፦ አንተን ካገኘሁ ጀምሮ 
        ሕይወቴ በአንተ አምሮ 
        የፍቅርህን ብዛት አልችልም ልገልጻት 
        የምህረትህን ብዛት አልችልም ልገልጻት (፪x) 
        የዓለም ክብር ሃብት አያጓጓኝም 
        ከአንተ አይበልጥብኝም 
        መርጬሃለሁ እከተልሃለሁ 
        የምህረትህ የፍቅርህ ብዛቱ 
        አልበረደም ግለቱ 
        ያዘምረኛል ተድላዬ ሆኖኛል 
        ያዘምረኛል ሞገሴ ሆኖኛል 
        ሰው ያረገኝ ፀጋህ ነው 
        ታሪኬን ለውጦ 
        ከሞት አስመልጦ 
        ጌታ ሆይ ተመስገን (፪x)
        አዝ፦ አንተን ካገኘሁ ጀምሮ 
        ሕይወቴ በአንተ አምሮ 
        የፍቅርህን ብዛት አልችልም ልገልጻት 
        የምህረትህን ብዛት አልችልም ልገልጻት 
        በመረቅህልኝ አዲስ ህያው መንገድ 
        ደስ እያለኝ ልራመድ 
        መጨረሻዬ ኢየሱስ ጌታዬ 
        መጨረሻዬ አንተ ነህ ጌታዬ 
        የሩቅ አገር የፅዮን ተጓዥ ነን 
        በሠማይ አገር ያለኝ 
        ታድያለሁ አገሬ ገባለሁ 
        ታድያለሁ ዘለዓለም አርፋለሁ 
        ሃሌሉያ 
        ሰው ያረገኝ ፀጋህ ነው 
        ታሪኬን ለውጦ 
        ከሞት አስመልጦ 
        ጌታ ሆይ ተመስገን (፪x)""");
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('አልበም'),
          leading: Icon(
            Icons.album,
          ),
          onTap: () => Navigator.of(context).push(_Page1()),
        ),
        ListTile(
            title: Text('ዘማሪ'),
            leading: Icon(Icons.mic),
            onTap: () => Navigator.of(context).push(_Page2())),
        ListTile(
            title: Text('አይነት'),
            leading: Icon(Icons.music_note),
            onTap: () => Navigator.of(context).push(_Page3())),
        ListTile(
            title: Text('ሁሉም'),
            leading: Icon(Icons.list),
            onTap: () => Navigator.of(context).push(_Page4())),
        ListTile(
            title: Text('የተወደዱ'),
            leading: Icon(Icons.favorite),
            onTap: () => Navigator.of(context).push(_Page6()))
      ],
    );
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.deepOrange,
        title: Text("መዝሙር ደብተር"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(_Page5());
            },
          )
        ],
      ),
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius:50.0,
                //backgroundImage:AssetImage('image/img.jpg'),

              ),
              Text(
                'አገኘሁ ይደግ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Expanded(
                child: Text(
                  ly,
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),

                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

class _Page4 extends MaterialPageRoute<String> {
  _Page4()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('ሁሉም'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}

class _Page2 extends MaterialPageRoute<String> {
  _Page2()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('ዘማሪ'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}

class _Page3 extends MaterialPageRoute<String> {
  _Page3()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('አይነት'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}

class _Page1 extends MaterialPageRoute<String> {
  _Page1()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('አልበም'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}

class _Page5 extends MaterialPageRoute<String> {
  _Page5()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('ፈልግ'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}

class _Page6 extends MaterialPageRoute<String> {
  _Page6()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('የተወደዱ'),
              backgroundColor: Colors.deepOrange,
            ),
          );
        });
}
