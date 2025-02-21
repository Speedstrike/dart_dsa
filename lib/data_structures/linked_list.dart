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
class LinkedList<T> {
  ListNode<T>? head;
  int size = 0;

  LinkedList() {
    this.head = null;
  }

  T? get(int index) {
    if(index + 1 > size) {
      throw StateError("Index out of bounds!");
    }
    else {
      ListNode<T>? current = head;
      for(int i = 0; i < index; ++i) {
        current = current?.next;
      }
      return current?.value;
    }
  }

  void push(T value) {
    ListNode<T> newNode = ListNode<T>(value);
    if(size == 0) {
      head = newNode;
    }
    else {
      ListNode<T>? current = head;
      while(current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }

    ++size;
  }

  T? pop() {
    if(size == 0) {
      throw StateError("Linked list is empty!");
    }
    else {
      ListNode<T>? oldHead = head;
      head = head?.next;

      --size;
      return oldHead?.value;
    }
  }

  T? peek() {
    if(size == 0) {
      throw StateError("Linked list is empty!");
    }
    return head?.value;
  }

  void clear() {
    while(size > 0) {
      pop();
    }
  }
}

class ListNode<T> {
  late T value;
  late ListNode<T>? next;

  ListNode(this.value) {
    this.next = null;
  }
}

