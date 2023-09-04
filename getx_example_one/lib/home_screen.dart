import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_example_one/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('getx example'),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.counter.toString(), style: const TextStyle(fontSize: 60.0),);
        },
        ),
        // child: Text(controller.counter.toString(),style: TextStyle(fontSize: 30.0),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
