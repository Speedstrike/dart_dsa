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
class Deque<T> {
  DequeNode<T>? head;
  DequeNode<T>? tail;
  int size = 0;

  Deque() {
    this.head = null;
  }

  T? get(int index) {
    if(index + 1 > size) {
      throw StateError("Index out of bounds!");
    }
    else {
      DequeNode<T>? current = head;
      for(int i = 0; i < index; ++i) {
        current = current?.next;
      }
      return current?.value;
    }
  }

  void addFirst(T value) {
    DequeNode<T> newNode = DequeNode<T>(value);
    if(size == 0) {
      head = newNode;
    }
    else {
      DequeNode<T>? previousHead = head;
      head = newNode;
      head?.next = previousHead;
    }

    ++size;
  }

  void addLast(T value) {
    DequeNode<T> newNode = DequeNode<T>(value);
    if(size == 0) {
      head = newNode;
    }
    else {
      DequeNode<T>? current = head;
      while(current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }

    ++size;
  }

  T? removeFirst() {
    if(size == 0) {
      throw StateError("Deque is empty!");
    }
    else {
      DequeNode<T>? oldHead = head;
      head = head?.next;

      --size;
      return oldHead?.value;
    }
  }

  T? removeLast() {
    if(size == 0) {
      throw StateError("Deque is empty!");
    }
    if(size == 1) {
      DequeNode<T>? current = head;
      head = null;
      --size;
      return current?.value;
    }
    else {
      DequeNode<T>? current = head;
      while(current?.next != null) {
        current = current?.next;
        if(current?.next?.next == null) {
          break;
        }
      }
      DequeNode<T>? last = current?.next;
      current?.next = null;

      --size;
      return last?.value;
    }
  }

  T? peekFirst() {
    if(size == 0) {
      throw StateError("Deque is empty!");
    }
    return head?.value;
  }

  T? peekLast() {
    if(size == 0) {
      throw StateError("Deque is empty!");
    }
    DequeNode<T>? current = head;
    while(current?.next != null) {
      current = current?.next;
      if(current?.next == null) {
        break;
      }
    }
    return current?.value;
  }

  void clear() {
    while(size > 0) {
      removeLast();
    }
  }
}

class DequeNode<T> {
  late T value;
  late DequeNode<T>? next;

  DequeNode(this.value) {
    this.next = null;
  }
}

