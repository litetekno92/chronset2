import 'package:chronset2/widgets/carouselwithindicator.dart';
import 'package:chronset2/widgets/drawer.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {
                      clicked(context, "Email sent");
                    },
                  ),
                ),
              ];
            },
          )
        ],
        title: Center(
          child: Image.asset(
            'images/chroniques-logo.png',
            fit: BoxFit.contain,
            height: 32,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
                 padding: EdgeInsets.symmetric(vertical: 15.0),
                 child: Column(children: [
                   Text('À la Une'),
                   CarouselWithIndicator(),
                 ])),
            Center(child: ItemClick()),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: FadeInImage.assetNetwork(
                      width: 100.0,
                      height: 100.0,
                      placeholder: 'images/placeholder.png',
                      image: 'https://picsum.photos/250?image=9',
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: ListTile(
                      title: Text('Voici les gros titres',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal)),
                      subtitle: Text('Il y a 2h',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 10.0,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ]),
              ),
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text(
                  'Album',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      leading: Icon(Icons.map),
                      title: Text(
                        'Map',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListTile(
                      leading: Icon(Icons.map),
                      title: Text(
                        'Map',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: FadeInImage.assetNetwork(
                      width: 70.0,
                      height: 50.0,
                      placeholder: 'images/placeholder.png',
                      image: 'https://picsum.photos/250?image=9',
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: ListTile(
                      title: Text(
                          'Voici des plus gros titres encores. Voila !res',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 16.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text('Il y a 2h',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 10.0,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ]),
              ),
            ),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: FadeInImage.assetNetwork(
                      width: 150.0,
                      height: 100.0,
                      placeholder: 'images/placeholder.png',
                      image: 'https://picsum.photos/250?image=9',
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: ListTile(
                      title: Text(
                          'Voici des plus gros titres encores. Voila !res',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 16.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text('Il y a 2h',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 10.0,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void clicked(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}

class ItemClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell Wraps our custom flat button Widget
    return InkWell(
      // When the user taps the button, show a snackbar
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Tap'),
        ));
      },
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: Card(
          elevation: 8.0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              Expanded(
                flex: 2,
                child: FadeInImage.assetNetwork(
                  width: 150.0,
                  height: 100.0,
                  placeholder: 'images/placeholder.png',
                  image: 'https://picsum.photos/250?image=9',
                ),
              ),
              Expanded(
                flex: 8,
                child: ListTile(
                  title: Text('Voici des plus gros titres encores. Voila !res',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 16.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text('Il y a 2h',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 10.0,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
