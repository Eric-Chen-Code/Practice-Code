/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include <stdlib.h>
#include "bst.h"

///////////////////////////////////////
// The following functions have been
// provided for your convenience
// 
// You will have to MODIFY them
///////////////////////////////////////


struct bst *bst_create_empty(void) {
  struct bst *tree = malloc(sizeof(struct bst));
  tree->root = NULL;
  return tree;
}


static struct bstnode *new_leaf(int i) {
  struct bstnode *leaf = malloc(sizeof(struct bstnode));
  leaf->item = i;
  leaf->left = NULL;
  leaf->right = NULL;
  return leaf;
}


bool bst_contains(int i, const struct bst *tree) {
  assert(tree);
  struct bstnode *node = tree->root;
  while (node) {
    if (node->item == i) {
      return true;
    }
    if (i < node->item) {
      node = node->left;
    } else {
      node = node->right;
    }
  }
  return false;
}

// this is the iterative version of bst_insert
// you could replace this with the recursive version if you prefer

void bst_insert(int i, struct bst *tree) {
  assert(tree);
  struct bstnode *node = tree->root;
  struct bstnode *parent = NULL;
  while (node) {
    if (node->item == i) {
      return;
    }
    parent = node;
    if (i < node->item) {
      node = node->left;
    } else {
      node = node->right;
    }
  }
  if (parent == NULL) {  // tree was empty
    tree->root = new_leaf(i);
  } else if (i < parent->item) {
    parent->left = new_leaf(i);
  } else {
    parent->right = new_leaf(i);
  }
}


static struct bstnode *remove_bstnode(int i, struct bstnode *node) {
  // key did not exist:
  if (node == NULL) return NULL;

  // search for the node that contains the key
  if (i < node->item) {
    node->left = remove_bstnode(i, node->left);
  } else if (i > node->item) {
    node->right = remove_bstnode(i, node->right);
  } else if (node->left == NULL) {
    struct bstnode *new_root = node->right;
    free(node);
    return new_root;
  } else if (node->right == NULL) {
    struct bstnode *new_root = node->left;
    free(node);
    return new_root;
  } else {
    // find next largest key and its parent
    struct bstnode *next = node->right;
    struct bstnode *parent_of_next = NULL;
    while (next->left) {
      parent_of_next = next;
      next = next->left;
    }
    // free old value & replace key/value of this node
    node->item = next->item;
    // remove next largest node
    if (parent_of_next) {
      parent_of_next->left = next->right;
    } else {
      node->right = next->right;
    }
    free(next);
  }
  return node;
}


void bst_remove(int i, struct bst *tree) {
  assert(tree);
  tree->root = remove_bstnode(i, tree->root);
}


static int select_node(int k, struct bstnode *node) {
  assert(node && 0 <= k && k < node->count);
  int left_count = 0;
  if (node->left) {
    left_count = node->left->count;
  }
  if (k < left_count) {
    return select_node(k, node->left);
  }
  if (k == left_count) {
    return node->item;
  }
  return select_node(k - left_count - 1, node->right);
}


int bst_select(int k, struct bst *tree) {
  assert(tree);
  return select_node(k, tree->root);
}


static void free_bstnode(struct bstnode *node) {
  if (node) {
    free_bstnode(node->left);
    free_bstnode(node->right);
    free(node);
  }
}


void bst_destroy(struct bst *tree) {
  assert(tree);
  free_bstnode(tree->root);
  free(tree);
}

///////////////////////////////////////
// The following functions are
// for you to implement:
// (only critical documentation shown)
///////////////////////////////////////

// effects: modifies *len to store the length of the array
//          allocates memory (caller must free)
// time: O(n)
int *bst_to_sorted_array(const struct bst *tree, int *len);

// requires: a is an ascending sorted array without duplicates [not asserted]
//           len >= 1
// time: O(n)
struct bst *bst_create_balanced(int a[], int len);

// time: O(n) [O(log n) when no re-balance occurs]
void bst_insert_rebalance(int i, struct bst *tree);

// time: O(n)
void bst_compact(struct bst *tree);

