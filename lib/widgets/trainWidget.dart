import 'package:flutter/material.dart';
import 'package:gym_buddy/instance.dart';

class TrainWidget extends StatefulWidget {
  const TrainWidget({super.key, required this.name});

  final String name;

  @override
  State<TrainWidget> createState() => _TrainWidgetState();
}

class _TrainWidgetState extends State<TrainWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Train train = Train(name: widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add Exercise'),
                    ),
                  )
                ],
              ),
            )),
        Container(height: 10)
      ],
    );
  }
}
