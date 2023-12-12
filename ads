@insertion and deletion in BST

#include <stdio.h>
#include <stdlib.h>

// Structure for a BST node
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to insert a value into the BST
struct Node* insert(struct Node* root, int value) {
    if (root == NULL) {
        return createNode(value);
    }

    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    }

    return root;
}

// Function to find the minimum value node in a BST
struct Node* findMin(struct Node* root) {
    while (root->left != NULL) {
        root = root->left;
    }
    return root;
}

// Function to delete a node with the given value from the BST
struct Node* deleteNode(struct Node* root, int value) {
    if (root == NULL) {
        return root;
    }

    if (value < root->data) {
        root->left = deleteNode(root->left, value);
    } else if (value > root->data) {
        root->right = deleteNode(root->right, value);
    } else {
        // Node with only one child or no child
        if (root->left == NULL) {
            struct Node* temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            struct Node* temp = root->left;
            free(root);
            return temp;
        }

        // Node with two children: Get the inorder successor (smallest
        // in the right subtree)
        struct Node* temp = findMin(root->right);

        // Copy the inorder successor's data to this node
        root->data = temp->data;

        // Delete the inorder successor
        root->right = deleteNode(root->right, temp->data);
    }

    return root;
}

// Function to perform inorder traversal of BST
void inorderTraversal(struct Node* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->data);
        inorderTraversal(root->right);
    }
}

// Main function
int main() {
    struct Node* root = NULL;

    // Insert elements into the BST
    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 20);
    root = insert(root, 40);
    root = insert(root, 70);
    root = insert(root, 60);
    root = insert(root, 80);

    // Display BST in inorder traversal
    printf("Inorder Traversal: ");
    inorderTraversal(root);
    printf("\n");

    // Delete elements from the BST
    root = deleteNode(root, 20);
    root = deleteNode(root, 30);
    root = deleteNode(root, 50);

    // Display BST after deletions
    printf("Inorder Traversal after deletions: ");
    inorderTraversal(root);
    printf("\n");

    return 0;
}

@insertion in BST
#include <stdio.h>
#include <stdlib.h>

// Structure for a BST node
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to insert a value into the BST
struct Node* insert(struct Node* root, int value) {
    if (root == NULL) {
        return createNode(value);
    }

    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    }

    return root;
}

// Function to perform inorder traversal of BST
void inorderTraversal(struct Node* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->data);
        inorderTraversal(root->right);
    }
}

// Main function
int main() {
    struct Node* root = NULL;

    // Insert elements into the BST
    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 20);
    root = insert(root, 40);
    root = insert(root, 70);
    root = insert(root, 60);
    root = insert(root, 80);

    // Display BST in inorder traversal
    printf("Inorder Traversal: ");
    inorderTraversal(root);
    printf("\n");

    return 0;
}


@deletion in BST
#include <stdio.h>
#include <stdlib.h>

// Structure for a BST node
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to insert a value into the BST
struct Node* insert(struct Node* root, int value) {
    if (root == NULL) {
        return createNode(value);
    }

    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    }

    return root;
}

// Function to perform inorder traversal of BST
void inorderTraversal(struct Node* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->data);
        inorderTraversal(root->right);
    }
}

// Function to find the minimum value node in a BST
struct Node* findMin(struct Node* root) {
    while (root->left != NULL) {
        root = root->left;
    }
    return root;
}

// Function to delete a node with the given value from the BST
struct Node* deleteNode(struct Node* root, int value) {
    if (root == NULL) {
        return root;
    }

    if (value < root->data) {
        root->left = deleteNode(root->left, value);
    } else if (value > root->data) {
        root->right = deleteNode(root->right, value);
    } else {
        // Node with only one child or no child
        if (root->left == NULL) {
            struct Node* temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            struct Node* temp = root->left;
            free(root);
            return temp;
        }

        // Node with two children: Get the inorder successor (smallest
        // in the right subtree)
        struct Node* temp = findMin(root->right);

        // Copy the inorder successor's data to this node
        root->data = temp->data;

        // Delete the inorder successor
        root->right = deleteNode(root->right, temp->data);
    }

    return root;
}

// Main function
int main() {
    struct Node* root = NULL;

    // Insert elements into the BST
    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 20);
    root = insert(root, 40);
    root = insert(root, 70);
    root = insert(root, 60);
    root = insert(root, 80);

    // Display original BST in inorder traversal
    printf("Original Inorder Traversal: ");
    inorderTraversal(root);
    printf("\n");

    // Delete elements from the BST
    root = deleteNode(root, 20);
    root = deleteNode(root, 30);
    root = deleteNode(root, 50);

    // Display modified BST after deletions
    printf("Inorder Traversal after deletions: ");
    inorderTraversal(root);
    printf("\n");

    return 0;
}



// Function to perform preorder traversal of BST
void preorderTraversal(struct Node* root) {
    if (root != NULL) {
        printf("%d ", root->data);
        preorderTraversal(root->left);
        preorderTraversal(root->right);
    }


// Function to perform postorder traversal of BST
void postorderTraversal(struct Node* root) {
    if (root != NULL) {
        postorderTraversal(root->left);
        postorderTraversal(root->right);
        printf("%d ", root->data);
    }

!@threaded binary tree
#include <stdio.h>
#include <stdlib.h>

// Structure for a threaded binary tree node
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
    int isThreaded; // Flag to indicate if the right pointer is threaded
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = newNode->right = NULL;
    newNode->isThreaded = 0; // Initially, the right pointer is not threaded
    return newNode;
}

// Function to perform threaded inorder traversal of the tree
void threadedInorderTraversal(struct Node* root) {
    struct Node* current = root;

    while (current != NULL) {
        // Find the leftmost node in the current subtree
        while (current->left != NULL)
            current = current->left;

        // Print the current node's data
        printf("%d ", current->data);

        // Check if the right pointer is threaded
        if (current->isThreaded) {
            current = current->right; // Move to the threaded successor
        } else {
            // Otherwise, move to the left child of the right subtree
            current = current->right;
            while (current != NULL && !current->isThreaded)
                current = current->left;
        }
    }
}

// Function to insert a value into the threaded binary tree
struct Node* insert(struct Node* root, int value) {
    struct Node* newNode = createNode(value);

    if (root == NULL) {
        return newNode;
    }

    struct Node* current = root;
    struct Node* parent = NULL;

    while (current != NULL) {
        parent = current;

        if (value < current->data) {
            if (current->left == NULL) {
                current->left = newNode;
                newNode->right = current; // Thread the right pointer
                newNode->isThreaded = 1; // Set the flag to indicate threading
                break;
            } else {
                current = current->left;
            }
        } else {
            if (current->isThreaded) {
                newNode->right = current->right;
                current->right = newNode;
                current->isThreaded = 0; // Reset the flag as the right pointer is no longer threaded
                break;
            } else if (current->right == NULL) {
                current->right = newNode;
                break;
            } else {
                current = current->right;
            }
        }
    }

    return root;
}

// Main function
int main() {
    struct Node* root = NULL;

    // Insert elements into the threaded binary tree
    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 70);
    root = insert(root, 20);
    root = insert(root, 40);
    root = insert(root, 60);
    root = insert(root, 80);

    // Display threaded binary tree in inorder traversal
    printf("Threaded Inorder Traversal: ");
    threadedInorderTraversal(root);
    printf("\n");

    return 0;
}


@ Write a program to sort elements/insert / delete/in linked list. in c

#include <stdio.h>
#include <stdlib.h>

// Node structure for a linked list
struct Node {
    int data;
    struct Node* next;
};

// Function to create a new node
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->next = NULL;
    return newNode;
}

// Function to insert a node at the beginning of the linked list
struct Node* insertAtBeginning(struct Node* head, int value) {
    struct Node* newNode = createNode(value);
    newNode->next = head;
    return newNode;
}

// Function to insert a node at the end of the linked list
struct Node* insertAtEnd(struct Node* head, int value) {
    struct Node* newNode = createNode(value);
    if (head == NULL) {
        return newNode;
    }

    struct Node* current = head;
    while (current->next != NULL) {
        current = current->next;
    }

    current->next = newNode;
    return head;
}

// Function to delete a node with the given value from the linked list
struct Node* deleteNode(struct Node* head, int value) {
    struct Node* current = head;
    struct Node* previous = NULL;

    while (current != NULL && current->data != value) {
        previous = current;
        current = current->next;
    }

    if (current == NULL) {
        printf("Element %d not found in the list.\n", value);
        return head;
    }

    if (previous == NULL) {
        // If the node to be deleted is the first node
        head = current->next;
    } else {
        // If the node to be deleted is not the first node
        previous->next = current->next;
    }

    free(current);
    printf("Element %d deleted from the list.\n", value);
    return head;
}

// Function to sort the linked list in ascending order
struct Node* sortLinkedList(struct Node* head) {
    struct Node *current, *index;
    int temp;

    if (head == NULL) {
        return head;
    }

    for (current = head; current != NULL; current = current->next) {
        for (index = current->next; index != NULL; index = index->next) {
            if (current->data > index->data) {
                // Swap data if the current element is greater than the next element
                temp = current->data;
                current->data = index->data;
                index->data = temp;
            }
        }
    }

    return head;
}

// Function to display the elements of the linked list
void displayList(struct Node* head) {
    struct Node* current = head;
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
    printf("\n");
}

// Main function
int main() {
    struct Node* head = NULL;

    // Insert elements into the linked list
    head = insertAtEnd(head, 50);
    head = insertAtEnd(head, 30);
    head = insertAtEnd(head, 20);
    head = insertAtEnd(head, 40);

    // Display the original linked list
    printf("Original List: ");
    displayList(head);

    // Sort the linked list
    head = sortLinkedList(head);

    // Display the sorted linked list
    printf("Sorted List: ");
    displayList(head);

    // Insert a new element at the beginning
    head = insertAtBeginning(head, 10);

    // Display the list after insertion
    printf("List after insertion: ");
    displayList(head);

    // Delete an element from the list
    head = deleteNode(head, 30);

    // Display the list after deletion
    printf("List after deletion: ");
    displayList(head);

    // Free the memory occupied by the linked list
    struct Node* current = head;
    while (current != NULL) {
        struct Node* next = current->next;
        free(current);
        current = next;
    }

    return 0;
}


@Use index sequential file to maintain the student/employee data and perform operation on it like search, display , delete, insert.


