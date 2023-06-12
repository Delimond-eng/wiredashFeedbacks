import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

import '../../src/common/get_instance.dart';
import '../../src/models/counter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    /*  Future.delayed(
      Duration.zero,
      () => showCustomModal(
        context,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("""
                    If you are serving your web app in a path other than the root, change the
                    href value below to reflect the base path you are serving from.
                    The path provided below has to start and end with a slash "/" in order for
                    it to work correctly.
            """),
          ),
        ),
      ),
    ); */
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "Get your feedbacks",
        onPressed: () {
          Wiredash.of(context).show(inheritMaterialTheme: true);
        },
        child: const Icon(CupertinoIcons.chat_bubble_text_fill),
      ),
      appBar: AppBar(
        title: const Text("Wiredash Feedbacks"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getIt<Counter>().count.toString()),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18.0),
                  ),
                  onPressed: () {
                    getIt<Counter>().increment();
                    setState(() {});
                    /* Wiredash.of(context).show(inheritMaterialTheme: true); */
                  },
                  child: const Text("increment"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18.0),
                  ),
                  onPressed: getIt<Counter>().count! == 0
                      ? null
                      : () {
                          getIt<Counter>().decrease();
                          setState(() {});
                        },
                  child: const Text("Decrease"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
