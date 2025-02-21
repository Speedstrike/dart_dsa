// MIT License
//
// Copyright (c) 2025 Aaryan Karlapalem
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
import 'dart:math';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'package:dart_dsa/data_structures/stack.dart';

void main() {
  test("Push/peek test", () {
    Stack<int> testStack1 = Stack<int>();
    for(int i = 0; i <= 10; ++i) {
      testStack1.push(pow(i, 2) as int);
    }

    expect(testStack1.peek(), equals(100));
  });

  test("Pop test", () {
    Stack<String> testStack2 = Stack<String>();
    List<String> testList = ["Dart", "is", "so", "fun", "to", "code", "in!"];
    for(String str in testList) {
      testStack2.push(str);
    }

    int stackSize = testStack2.size;

    for(int index = 0; index < stackSize; ++index) {
      expect(testStack2.pop(), equals(testList[stackSize - 1 - index]));
    }
  });

  test("Clear/size test", () {
    Stack<bool> testStack3 = Stack<bool>();
    List<bool> testList2 = [true, false, true, true, false, true, false, false, false, true, false, true, true];

    for(bool flag in testList2) {
      testStack3.push(flag);
    }
    
    expect(testStack3.size, equals(testList2.length));
    
    testStack3.clear();
    
    expect(testStack3.size, equals(0));
    expect(testStack3.head, equals(null));
  });
}