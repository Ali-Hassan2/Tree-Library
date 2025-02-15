#ifndef TREE_HPP
#define TREE_HPP

#include <iostream>

template <typename T>
class TreeNode {
public:
    T data;
    TreeNode* left;
    TreeNode* right;

    TreeNode(T val) : data(val), left(nullptr), right(nullptr) {}
};

template <typename T>
class Tree {
private:
    TreeNode<T>* root;

public:
    Tree() : root(nullptr) {}

    void insert(T val) {
        root = insertRec(root, val);
    }

    void inorder() {
        inorderRec(root);
    }

private:
    TreeNode<T>* insertRec(TreeNode<T>* node, T val) {
        if (!node) return new TreeNode<T>(val);
        if (val < node->data)
            node->left = insertRec(node->left, val);
        else
            node->right = insertRec(node->right, val);
        return node;
    }

    void inorderRec(TreeNode<T>* node) {
        if (!node) return;
        inorderRec(node->left);
        std::cout << node->data << " ";
        inorderRec(node->right);
    }
};

#endif
