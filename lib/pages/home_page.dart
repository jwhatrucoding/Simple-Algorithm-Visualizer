
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{ 
  // variables
  List<int> numberArray = [0, 3, 5, 2, 7, 6, 9, 8, 1];
  String _displayedText = "Current Array: ";

  //methods
  // Bubble Sort Algorithm
  // The longer the array is, the perfomance decreases 
  List<int> bubbleSort(List<int> inputList) {
    // Create a copy of the list to avoid modifying the original
    List<int> list = List.from(inputList);
    
    int n = list.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        // Swap if the current element is greater than the next
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list; // Return the sorted list
  }

  void onPressedSort () {
    List<int> _resultOfSort = bubbleSort(numberArray);
    print(_resultOfSort);
    setState(() {
      _displayedText = "Sorted Array: ";
      numberArray = _resultOfSort;
    });
  }


  //UI
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Homepage"),backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 10,),

            Text(
              style: TextStyle(
                fontSize: 22,
              ),
              "${_displayedText + numberArray.toString()}",
            ),
        
            SizedBox(height: 10,),
            
            ElevatedButton(
              onPressed: onPressedSort,
              child: Text(
                "Sort Array",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              
            ),
        
            // Text(resultOfSort),
          ],
        ),
      ),
    );
  }
}
