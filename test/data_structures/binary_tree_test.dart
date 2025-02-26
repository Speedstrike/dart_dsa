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
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'package:dart_dsa/data_structures/binary_tree.dart';

void main() {
  test("Insert/contains test", () {
    BinaryTree<String> testTree1 = BinaryTree<String>();
    List<String> testList1 = ["Data", "structures", "and", "algorithms", "are", "so", "fun!"];
    for(String str in testList1) {
      testTree1.insert(str);
    }

    expect(testTree1.contains("structures"), equals(true));
    expect(testTree1.contains("Are"), equals(false));
  });

  test("Inorder traversal test", () {
    BinaryTree<String> testTree2 = BinaryTree<String>();
    List<String> testList2 = ["dart", "Javascript", "c", "Typescript", "Java", "python", "Rust", "go", "C#", "c++"];
    for(String str in testList2) {
      testTree2.insert(str);
    }

    testList2.sort();

    expect(testTree2.size, equals(testList2.length));
    expect(testTree2.root?.right?.value, equals("python"));
    expect(testTree2.root?.left?.value, equals("Javascript"));
    expect(testTree2.root?.right?.right?.value, equals(null));
    expect(testTree2.inorderTraversal(testTree2.root), equals(testList2));
  });
}