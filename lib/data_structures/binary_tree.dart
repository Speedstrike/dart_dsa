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
class BinaryTree<T> {
  late TreeNode<T>? root;
  int size = 0;

  BinaryTree() {
    root = null;
  }

  void insert(T value) {
    if(root == null) {
      root = TreeNode<T>(value);
    }
    else {
      TreeNode<T>? currentNode = root;
      MAIN: while(currentNode != null) {
        switch(currentNode.value.toString().compareTo(value.toString()).sign) {
          case 1 || 0: {
            if(currentNode.left != null) {
              currentNode = currentNode.left;
            }
            else {
              currentNode.left = TreeNode<T>(value);
              break MAIN;
            }
          }
          case -1: {
            if(currentNode.right != null) {
              currentNode = currentNode.right;
            }
            else {
              currentNode.right = TreeNode<T>(value);
              break MAIN;
            }
          }
        }
      }
    }
    ++size;
  }

  bool contains(T value) {
    TreeNode<T>? currentNode = root;
    while(currentNode != null) {
      switch(currentNode.value.toString().compareTo(value.toString()).sign) {
        case 1: {
          currentNode = currentNode.left;
        }
        case 0: {
          return true;
        }
        case -1: {
          currentNode = currentNode.right;
        }
      }
    }
    return false;
  }

  List<T> inorderTraversal(TreeNode<T>? node) {
    List<T> elements = [];
    if (node == null) return elements;
    elements.addAll(inorderTraversal(node.left));
    elements.add(node.value);
    elements.addAll(inorderTraversal(node.right));
    return elements;
  }
}

class TreeNode<T> {
  late T value;
  late TreeNode<T>? left;
  late TreeNode<T>? right;

  TreeNode(this.value) {
    this.left = null;
    this.right = null;
  }
}