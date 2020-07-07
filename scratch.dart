import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result = 'task 1 data';
  print('task1 completed');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);

  String result;

  await Future.delayed(duration, (){
    result = 'task 2 data';
    print('task2 completed');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('task3 completed with $task2Data');
}