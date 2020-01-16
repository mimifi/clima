void main() {
  performTask();
}

void performTask() async {
  task1();
  String task2Data = await task2();
  task3(task2Data);
}

void task1() {
  String result = 'Task 1 data';
  print('This is task 1');
}

Future<String> task2() async {
  Duration threeSecond = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSecond, () {
    result = 'Task 2 data';
    print('This is task 2');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'Task 3 data';
  print('This is task 3 $task2Data');
}
