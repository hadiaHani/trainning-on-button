import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  buttonOnPressed() {
    print("Clicked Button !");
  }

  click(name) {
    print("Hello $name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  elevation: 0,
        backgroundColor: Colors.teal,
        title: const Text("Home Page"),
        leading: const Icon(
          Icons.center_focus_weak_sharp,
          color: Colors.yellow,
        ),
        actions: const [
          Icon(Icons.center_focus_weak_sharp),
          Icon(Icons.center_focus_weak_sharp),
          Icon(Icons.center_focus_weak_sharp),
        ],
      ),
      //  body: const Center(
      body: Container(
        alignment: Alignment.center,
        //color: const Color.fromRGBO(183, 51, 234, .8),
        //  color: const Color.fromARGB(150, 50, 51, 234),
        // color: const Color(0xffc73919),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Hello Hadia",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.teal,
                    //   fontSize: 24,
                    fontWeight: FontWeight.w400,
                    // letterSpacing: 20,
                    height: 7,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 3,
                        color: Colors.red,
                      ),
                    ],
                    decoration: TextDecoration.combine(
                        [TextDecoration.underline, TextDecoration.overline]),
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationThickness: 3),
              ),
              Text(
                "Hello Hadia",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.teal,
                    //   fontSize: 24,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 10,
                    // letterSpacing: 20,
                    height: 7,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 3,
                        color: Colors.red,
                      ),
                    ],
                    decoration: TextDecoration.combine(
                        [TextDecoration.underline, TextDecoration.overline]),
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationThickness: 3),
              ),
              const Text(
                "Hello World",
                style: TextStyle(
                  color: Colors.black,
                  height: 7,
                ),
              )

              // child: const Text("Hello Hadia")
            ]),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Click",
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Click Here",
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Click ")),
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.teal),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        // padding: MaterialStateProperty.all( const EdgeInsets.all(10)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(10, 20, 30, 40)),
                        elevation: MaterialStateProperty.all(1)),
                    onPressed: () {},
                    icon: const Icon(Icons.collections_bookmark,
                        color: Colors.amber),
                    label: const Text("click")),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.collections_bookmark),
                    label: const Text("click")),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.collections_bookmark),
                    label: const Text("click")),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      print("Button 1 clicked");
                    },
                    icon: const Icon(Icons.email)),
                IconButton(
                    onPressed: () => print("Button 2 clicked"),
                    icon: const Icon(Icons.safety_divider)),
                IconButton(
                  onPressed: buttonOnPressed,
                  icon: const Icon(Icons.ac_unit),
                ),
                IconButton(
                    onPressed: () {
                      click("Hadia");
                    },
                    icon: const Icon(Icons.sailing)),
                FloatingActionButton.extended(
                    label: const Text("Add"), onPressed: click("Hadia"))
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add"),
        icon: const Icon(Icons.add),
        onPressed: () {
          click("Hadia");
        },
        backgroundColor: Colors.purple,
        foregroundColor: Colors.teal,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0),
            ),
            side: BorderSide(
                color: Colors.red, style: BorderStyle.solid, width: 6)),
        splashColor: Colors.amber,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
