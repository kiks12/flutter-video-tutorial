import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// HELLO WORLD
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Video Tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePageHelloWorld(title: 'Flutter Video'),
    );
  }
}

// SCAFFOLD
// TEXT - TEXT STYLES
// FLOATING ACTION BUTTON
// CENTER
// APP BAR
// OPTIONAL BOTTOM NAVIGATION BAR
// class HomePageHelloWorld extends StatelessWidget {
//   const HomePageHelloWorld({super.key, required this.title});
//
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         elevation: 10,
//         title: Text(title),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//       // BODY NA UNA
//       body: const Center(
//         child: Text("Hello World", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
//       ),
//       // MORE BODY!!
//       // body: const SizedBox(
//       //   height: double.maxFinite,
//       //   width: double.maxFinite,
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center, // DIFFERENT MAIN AXIS VALUES
//       //     crossAxisAlignment: CrossAxisAlignment.center, //
//       //     children: [
//       //       Text("Xyrone Jei Sanchez", style: TextStyle(fontSize: 25),),
//       //       Text("Gilbert Sicat", style: TextStyle(fontSize: 23)),
//       //       Text("Mark Daniel Soriano", style: TextStyle(fontSize: 21)),
//       //       Text("Francis James Tolentino", style: TextStyle(fontSize: 19)),
//       //       Text("Ian Andrew Yango", style: TextStyle(fontSize: 17)),
//       //     ],
//       //   )
//       // )
//     );
//   }
// }

class HomePageHelloWorld extends StatefulWidget {
  const HomePageHelloWorld({super.key, required this.title});

  final String title;

  @override
  State<HomePageHelloWorld> createState() => _HomePageHelloWorldState();
}

class _HomePageHelloWorldState extends State<HomePageHelloWorld> {

  final _names = ["Xyrone Jei Sanchez", "Gilbert Sicat", "Mark Daniel Soriano", "Francis James Tolentino", "Ian Andrew Yango"];

  void randomizeNames() {
    setState(() {
      _names.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 10,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: randomizeNames,
        label: const Text("Randomize"),
        icon: const Icon(Icons.refresh),
      ),
      // BODY NA UNA
      // MORE BODY!!
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // DIFFERENT MAIN AXIS VALUES
          crossAxisAlignment: CrossAxisAlignment.center, //
          children: _names.map((entry) => Text(entry, style: const TextStyle(fontSize: 18),)).toList(),
        )
      )
    );
  }
}
