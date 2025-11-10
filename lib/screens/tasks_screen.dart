import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = ['Complete Flutter UI', 'Fix app bugs', 'Submit assignment'];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: Icon(
                Icons.check_circle_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(tasks[index]),
              subtitle: const Text('Due soon'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ),
          );
        },
      ),
    );
  }
}
