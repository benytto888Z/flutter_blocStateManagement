import 'package:flutter/material.dart';
import 'package:newstate_management/ui/components/main.drawer.widget.dart';

class CounterStfulPage extends StatefulWidget {
  const CounterStfulPage({Key? key}) : super(key: key);

  @override
  State<CounterStfulPage> createState() => _CounterStfulPageState();
}

class _CounterStfulPageState extends State<CounterStfulPage> {
  int counter = 0;
  String errorMessage = "";

  void rollIt(String type) {
    if (type == "inc") {
      setState(() {
        if (counter < 10) {
          ++counter;
          errorMessage = "";
        } else {
          errorMessage = 'err => Counter can not exceed 10';
        }
      });
    } else if (type == "dec") {
      setState(() {
        if (counter > 0) {
          --counter;
          errorMessage = "";
        } else {
          errorMessage = 'err => Counter can not be less than 0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter StateFul Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Counter value => $counter",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 15,),
            (errorMessage != '') ? Text(
              errorMessage,
              style: const TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.w700),
            ) : const Text("")
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // heroTag: {'tag' : "dec"},
            // heroTag:null,
            heroTag: 'dec',
            onPressed: () => rollIt('dec'),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            // heroTag: {'tag' : "inc"},
            // heroTag: null,
            heroTag: 'inc',
            onPressed: () => rollIt('inc'),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
