
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget test() {
    print("****************** this is printed *******************");
    return const Center(
      child: Text("tanishq"),
    );
  }


  @override
  Widget build(BuildContext context) {
    print("ssssssfucks");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes App"),
      ),
      body:Column(
        children: [
          test(),
          Consumer<CounterProvider>(builder: (
              context,
              counterProvider,
              child
          ){
            return Center(
              child: Text(
                "Present count = ${counterProvider.count}",
                style: const  TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CounterProvider>(context, listen: false).increment(),
        tooltip: "Add",
        child: const Icon(Icons.add),
      ),
    );
  }
}
