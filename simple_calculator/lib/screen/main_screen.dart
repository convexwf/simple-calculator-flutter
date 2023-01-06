/// Copyright (c) 2024 convexwf
/// All rights reserved.
///
/// Project: practice
/// File: main_screen.dart
/// Email: convexwf@gmail.com
/// Created: 2024-10-14
/// Last modified: 2024-10-14
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
/// Description: TODO

import 'package:flutter/material.dart';
import "package:get/get.dart";

class MainScreen extends StatelessWidget {

  MainScreen({Key? key}) : super(key: key);

  final List<String> buttons = [
    'C', 'DEL', '%', '/',
    '7', '8', '9', 'x',
    '4', '5', '6', '-',
    '1', '2', '3', '+',
    '0', '.', 'ANS', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the result
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(12),
              child: const Text(
                '0',
                style: TextStyle(
                  fontSize: 48
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Display the buttons
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Button pressed', buttons[index]);
                  },
                  child: Text(
                    buttons[index],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
