import 'package:flutter/material.dart';
import '../widgets/task_tile.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: ((context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (value) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          }),
        );
      },
    );
  }
}
