import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blog",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        leading: GestureDetector(
          child: const Icon(Icons.menu),
          onDoubleTap: () {},
          onTap: () {},
          onLongPress: () {},
        ),
        actionsIconTheme: const IconThemeData(color: Colors.black, opacity: 5),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelpScreen()));
            },
            child: const Text("Next Page")),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 2, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: "Play"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
      ]),
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Page 2"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return   ListTile(
              leading: const Icon(Icons.list),
              trailing: IconButton(icon: const Icon(Icons.delete), onPressed: (){},),
              title: Text("Item List $index "),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: true,
        child: const Text('Add'),
      ),
    );
  }
}
