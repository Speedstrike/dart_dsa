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

import 'package:dart_dsa/data_structures/deque.dart';

void main() {
  test("Frontend test", () {
    Deque<int> testDeque1 = Deque<int>();
    for(int i = 0; i <= 10; ++i) {
      testDeque1.addFirst(pow(i, 3) as int);
    }

    expect(testDeque1.peekFirst(), equals(1000));
    expect(testDeque1.peekLast(), equals(0));
    expect(testDeque1.size, equals(11));
  });

  test("Backend test", () {
    Deque<String> testDeque2 = Deque<String>();
    List<String> dequeItems1 = ["Dart", "is", "so", "fun", "to", "code", "in!"];
    for(String str in dequeItems1) {
      testDeque2.addLast(str);
    }

    expect(testDeque2.peekFirst(), equals("Dart"));
    expect(testDeque2.peekLast(), equals("in!"));
    expect(testDeque2.size, equals(dequeItems1.length));
  });

  test("Get test", () {
    Deque<int> testDeque3 = Deque<int>();
    for(int i = 0; i >= -10; --i) {
      testDeque3.addLast(pow(i, 5) as int);
    }

    int testIndex = Random().nextInt(11);

    expect(testDeque3.get(testIndex), equals(-1 * pow(testIndex, 5)));
  });

  test("Clear/size test", () {
    Deque<bool> testDeque4 = Deque<bool>();
    List<bool> dequeItems2 = [true, false, true, true, false, true, false, false, false, true, false, true, true];

    for(bool flag in dequeItems2) {
      testDeque4.addLast(flag);
    }

    expect(testDeque4.size, equals(dequeItems2.length));

    testDeque4.clear();

    expect(testDeque4.size, equals(0));
    expect(testDeque4.head, equals(null));
  });
}