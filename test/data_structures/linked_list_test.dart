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

import 'package:dart_dsa/data_structures/linked_list.dart';

void main() {
  test("Push/peek test", () {
    LinkedList<int> testList1 = LinkedList<int>();
    for(int i = 0; i <= 10; ++i) {
      testList1.push(pow(i, 2) as int);
    }

    expect(testList1.peek(), equals(0));
  });

  test("Pop/get test", () {
    LinkedList<String> testList2 = LinkedList<String>();
    List<String> listItems = ["Dart", "is", "so", "fun", "to", "code", "in!"];
    for(String str in listItems) {
      testList2.push(str);
    }

    int stackSize = testList2.size;

    for(int index = 0; index < stackSize; ++index) {
      expect(testList2.get(0), equals(listItems[index]));
      expect(testList2.pop(), equals(listItems[index]));
    }
  });

  test("Clear/size test", () {
    LinkedList<bool> testList3 = LinkedList<bool>();
    List<bool> listItems2 = [true, false, true, true, false, true, false, false, false, true, false, true, true];

    for(bool flag in listItems2) {
      testList3.push(flag);
    }

    expect(testList3.size, equals(listItems2.length));

    testList3.clear();

    expect(testList3.size, equals(0));
    expect(testList3.head, equals(null));
  });
}