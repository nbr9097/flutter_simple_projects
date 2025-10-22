import 'package:counter_app/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        backgroundColor: const Color.fromARGB(255, 146, 146, 146),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(20, 250, 20, 10)),
          Text(
            'Counter Display',
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 50),
          Consumer<CounterProvider>(
            builder: (context, value, child) {
              return Text(
                '${value.count}',
                style: TextStyle(
                  fontSize: 35,
                  color: context.watch<CounterProvider>().displayColor,
                ),
              );
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom:300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () =>
                      context.read<CounterProvider>().decrement(),
                  child: Text(" - ", style: TextStyle(fontSize: 50)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () =>
                      context.read<CounterProvider>().reset(),
                  child: Text(" Reset ", style: TextStyle(fontSize: 30)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () =>
                      context.read<CounterProvider>().increment(),
                  child: Text(" + ", style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
