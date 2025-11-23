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
class Sort {
  static List<T> bubbleSort<T extends Comparable>(List<T> collection) {
    int n = collection.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (collection[j].compareTo(collection[j + 1]) > 0) {
          T temp = collection[j];
          collection[j] = collection[j + 1];
          collection[j + 1] = temp;
        }
      }
    }
    return collection;
  }

  static List<T> selectionSort<T extends Comparable>(List<T> collection) {
    int n = collection.length;
    for (int i = 0; i < n - 1; i++) {
      int minIdx = i;
      for (int j = i + 1; j < n; j++) {
        if (collection[j].compareTo(collection[minIdx]) < 0) {
          minIdx = j;
        }
      }
      if (minIdx != i) {
        T temp = collection[i];
        collection[i] = collection[minIdx];
        collection[minIdx] = temp;
      }
    }
    return collection;
  }

  static List<T> insertionSort<T extends Comparable>(List<T> collection) {
    int n = collection.length;
    for (int i = 1; i < n; i++) {
      T key = collection[i];
      int j = i - 1;
      while (j >= 0 && collection[j].compareTo(key) > 0) {
        collection[j + 1] = collection[j];
        j = j - 1;
      }
      collection[j + 1] = key;
    }
    return collection;
  }

  static List<T> mergeSort<T extends Comparable>(List<T> collection) {
    void merge(int left, int mid, int right) {
      List<T> L = collection.sublist(left, mid + 1);
      List<T> R = collection.sublist(mid + 1, right + 1);

      int i = 0, j = 0;
      int k = left;
      while (i < L.length && j < R.length) {
        if (L[i].compareTo(R[j]) <= 0) {
          collection[k] = L[i];
          i++;
        } 
        else {
          collection[k] = R[j];
          j++;
        }
        k++;
      }

      while (i < L.length) {
        collection[k] = L[i];
        i++;
        k++;
      }

      while (j < R.length) {
        collection[k] = R[j];
        j++;
        k++;
      }
    }

    void sort(int left, int right) {
      if (left < right) {
        int mid = (left + right) ~/ 2;
        sort(left, mid);
        sort(mid + 1, right);
        merge(left, mid, right);
      }
    }

    sort(0, collection.length - 1);
    return collection;
  }

  static List<T> quickSort<T extends Comparable>(List<T> collection) {
    int partition(int low, int high) {
      T pivot = collection[high];
      int i = low - 1;

      for (int j = low; j < high; j++) {
        if (collection[j].compareTo(pivot) < 0) {
          i++;
          T temp = collection[i];
          collection[i] = collection[j];
          collection[j] = temp;
        }
      }

      T temp = collection[i + 1];
      collection[i + 1] = collection[high];
      collection[high] = temp;
      return i + 1;
    }

    void sort(int low, int high) {
      if (low < high) {
        int pi = partition(low, high);
        sort(low, pi - 1);
        sort(pi + 1, high);
      }
    }

    sort(0, collection.length - 1);
    return collection;
  }
}