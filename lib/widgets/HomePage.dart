import 'package:flutter/material.dart';
import 'package:gym_buddy/instance.dart';
import 'package:gym_buddy/widgets/trainWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String train = '';

  User userLoad = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (text) {
                                train = text;
                              },
                              decoration: const InputDecoration(
                                  labelText: 'Add new train',
                                  border: OutlineInputBorder()),
                            ),
                            Container(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (train != '') {
                                      setState(() {
                                        userLoad.addTrain(train);
                                      });
                                    }
                                  },
                                  child: const Icon(Icons.add)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(height: 20),
                    userLoad.trains.isNotEmpty
                        ? Column(children: [
                            ...userLoad.trains
                                .map((e) => TrainWidget(name: e.name)),
                          ])
                        : const Text(
                            'No trains',
                            style: TextStyle(color: Colors.white),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
