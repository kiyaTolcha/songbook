import 'package:flutter/material.dart';
import 'Favorites.dart';
import 'Search.dart';
import 'Albums.dart';
import 'Genres.dart';
import 'ArtistList.dart';
import 'All.dart';

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
    //  String ly1="""Kotlin can be used together with existing third-party libraries and frameworks, such as jQuery or React. To access third-party frameworks with a strongly-typed API, you can convert TypeScript denitions from the Denitely Typed type denitions repository to Kotlin using the ts2kt tool. Alternatively, you can use the dynamic type to access any framework without strong typing. JetBrains develops and maintains several tools specically for the React community: React bindings as well as Create React Kotlin App. The latter helps you start building React apps with Kotlin with no build conguration. Kotlin is compatible with CommonJS, AMD and UMD, making interaction with dierent module systems straightforward.
    //    """;
    String ly = """አንተን ካገኘሁ ጀምሮ
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
ጌታ ሆይ ተመስገን (፪x)""";
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('አልበም'),
          leading: Icon(Icons.album),
          onTap: () => Navigator.of(context).push(Albums()),
        ),
        ListTile(
            title: Text('ዘማሪ'),
            leading: Icon(Icons.mic),
            onTap: () => Navigator.of(context).push(ArtistList())),
        ListTile(
            title: Text('አይነት'),
            leading: Icon(Icons.music_note),
            onTap: () => Navigator.of(context).push(Genres())),
        ListTile(
            title: Text('ሁሉም'),
            leading: Icon(Icons.list),
            onTap: () => Navigator.of(context).push(All())),
        ListTile(
            title: Text('የተወደዱ'),
            leading: Icon(Icons.favorite),
            onTap: () => Navigator.of(context).push(Favorites()))
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
              Navigator.of(context).push(Search());
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
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
                child: SingleChildScrollView(
                  child: Text(
                    ly,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17
                        //backgroundColor: Colors.orange,
                        ),
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
