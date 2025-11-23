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
import 'package:dart_dsa/algorithms/sort.dart';
import 'package:test/test.dart';

void main() {
  test('Bubble sort test', () {
    expect(Sort.bubbleSort([-67, 12, 0, 89, 21, -13, -90, 2, 1809, -128, 512]), equals([-128, -90, -67, -13, 0, 2, 12, 21, 89, 512, 1809]));
    expect(Sort.bubbleSort([29, 82, -94, 40, 182, -1, 1127, -996, 23, 2, -256]), equals([-996, -256, -94, -1, 2, 23, 29, 40, 82, 182, 1127]));
  });

  test('Selection sort test', () {
    expect(Sort.selectionSort([-67, 12, 0, 89, 21, -13, -90, 2, 1809, -128, 512]), equals([-128, -90, -67, -13, 0, 2, 12, 21, 89, 512, 1809]));
    expect(Sort.selectionSort([29, 82, -94, 40, 182, -1, 1127, -996, 23, 2, -256]), equals([-996, -256, -94, -1, 2, 23, 29, 40, 82, 182, 1127]));
  });

  test('Insertion sort test', () {
    expect(Sort.insertionSort([-67, 12, 0, 89, 21, -13, -90, 2, 1809, -128, 512]), equals([-128, -90, -67, -13, 0, 2, 12, 21, 89, 512, 1809]));
    expect(Sort.insertionSort([29, 82, -94, 40, 182, -1, 1127, -996, 23, 2, -256]), equals([-996, -256, -94, -1, 2, 23, 29, 40, 82, 182, 1127]));
  });
  
  test('Merge sort test', () {
    expect(Sort.mergeSort([-67, 12, 0, 89, 21, -13, -90, 2, 1809, -128, 512]), equals([-128, -90, -67, -13, 0, 2, 12, 21, 89, 512, 1809]));
    expect(Sort.mergeSort([29, 82, -94, 40, 182, -1, 1127, -996, 23, 2, -256]), equals([-996, -256, -94, -1, 2, 23, 29, 40, 82, 182, 1127]));
  });

  test('Quick sort test', () {
    expect(Sort.quickSort([-67, 12, 0, 89, 21, -13, -90, 2, 1809, -128, 512]), equals([-128, -90, -67, -13, 0, 2, 12, 21, 89, 512, 1809]));
    expect(Sort.quickSort([29, 82, -94, 40, 182, -1, 1127, -996, 23, 2, -256]), equals([-996, -256, -94, -1, 2, 23, 29, 40, 82, 182, 1127]));
  });
}