class User {
  List<Train> trains = [];

  addTrain(name) {
    trains.add(Train(name: name));
  }
}

class Train {
  Train({required this.name});

  String name = '';
  List exercises = [];

  addExercise(name) {
    exercises.add(name);
  }
}
