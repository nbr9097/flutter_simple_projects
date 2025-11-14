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
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: const Color.fromARGB(255, 146, 146, 146),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter',
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          // SizedBox(height: 50),
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
          TextButton(
            onPressed: () => context.read<CounterProvider>().reset(),
            child: Text("Reset ", style: TextStyle(fontSize: 10,decoration: TextDecoration.underline,color: Colors.black)),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () => context.read<CounterProvider>().decrement(),
                child: Text(" - ", style: TextStyle(fontSize: 20)),
              ),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () => context.read<CounterProvider>().increment(),
                child: Text(" + ", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
