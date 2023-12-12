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
#include <stdio.h>
#include <stdlib.h>

// Employee structure
struct Employee {
    int id;
    char name[50];
    float salary;
};

// Index structure
struct Index {
    int id;
    long offset; // Offset of the record in the data file
};

// Function to display an employee record
void displayEmployee(struct Employee emp) {
    printf("ID: %d\n", emp.id);
    printf("Name: %s\n", emp.name);
    printf("Salary: %.2f\n", emp.salary);
    printf("----------------------------\n");
}

// Function to display all employee records from the data file
void displayAllRecords(FILE* dataFile) {
    struct Employee emp;
    fseek(dataFile, 0, SEEK_SET);

    while (fread(&emp, sizeof(struct Employee), 1, dataFile) == 1) {
        displayEmployee(emp);
    }
}

// Function to search for an employee by ID
void searchEmployee(FILE* dataFile, int id) {
    struct Employee emp;
    fseek(dataFile, 0, SEEK_SET);

    while (fread(&emp, sizeof(struct Employee), 1, dataFile) == 1) {
        if (emp.id == id) {
            displayEmployee(emp);
            return;
        }
    }

    printf("Employee with ID %d not found.\n", id);
}

// Function to insert a new employee record
void insertEmployee(FILE* dataFile, FILE* indexFile, struct Employee emp) {
    fseek(dataFile, 0, SEEK_END);
    long offset = ftell(dataFile);

    fwrite(&emp, sizeof(struct Employee), 1, dataFile);

    struct Index indexRecord;
    indexRecord.id = emp.id;
    indexRecord.offset = offset;

    fwrite(&indexRecord, sizeof(struct Index), 1, indexFile);
}

// Function to delete an employee record by ID
void deleteEmployee(FILE* dataFile, FILE* indexFile, int id) {
    struct Employee emp;
    struct Index indexRecord;

    FILE* tempDataFile = fopen("tempDataFile.dat", "wb");
    FILE* tempIndexFile = fopen("tempIndexFile.dat", "wb");

    fseek(dataFile, 0, SEEK_SET);

    while (fread(&emp, sizeof(struct Employee), 1, dataFile) == 1) {
        if (emp.id != id) {
            fwrite(&emp, sizeof(struct Employee), 1, tempDataFile);
            fread(&indexRecord, sizeof(struct Index), 1, indexFile);

            while (indexRecord.id != id) {
                fwrite(&indexRecord, sizeof(struct Index), 1, tempIndexFile);
                fread(&indexRecord, sizeof(struct Index), 1, indexFile);
            }
        }
    }

    fclose(dataFile);
    fclose(indexFile);
    fclose(tempDataFile);
    fclose(tempIndexFile);

    remove("dataFile.dat");
    remove("indexFile.dat");

    rename("tempDataFile.dat", "dataFile.dat");
    rename("tempIndexFile.dat", "indexFile.dat");
}

int main() {
    FILE* dataFile = fopen("dataFile.dat", "ab+");
    FILE* indexFile = fopen("indexFile.dat", "ab+");

    if (dataFile == NULL || indexFile == NULL) {
        perror("Error opening files");
        exit(EXIT_FAILURE);
    }

    int choice, id;
    struct Employee emp;

    do {
        printf("\nMenu:\n");
        printf("1. Display All Records\n");
        printf("2. Search for Employee\n");
        printf("3. Insert Employee\n");
        printf("4. Delete Employee\n");
        printf("5. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                displayAllRecords(dataFile);
                break;
            case 2:
                printf("Enter employee ID to search: ");
                scanf("%d", &id);
                searchEmployee(dataFile, id);
                break;
            case 3:
                printf("Enter employee ID: ");
                scanf("%d", &emp.id);
                printf("Enter employee name: ");
                scanf("%s", emp.name);
                printf("Enter employee salary: ");
                scanf("%f", &emp.salary);
                insertEmployee(dataFile, indexFile, emp);
                break;
            case 4:
                printf("Enter employee ID to delete: ");
                scanf("%d", &id);
                deleteEmployee(dataFile, indexFile, id);
                break;
            case 5:
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 5);

    fclose(dataFile);
    fclose(indexFile);

    return 0;
}


@Implement the full AVL tree insert function in c
#include <stdio.h>
#include <stdlib.h>

// AVL tree node structure
struct Node {
    int key;
    struct Node* left;
    struct Node* right;
    int height;
};

// Function to get the height of a node
int height(struct Node* node) {
    if (node == NULL)
        return 0;
    return node->height;
}

// Function to get the maximum of two integers
int max(int a, int b) {
    return (a > b) ? a : b;
}

// Function to create a new node with a given key
struct Node* newNode(int key) {
    struct Node* node = (struct Node*)malloc(sizeof(struct Node));
    node->key = key;
    node->left = NULL;
    node->right = NULL;
    node->height = 1; // New node is initially at height 1
    return node;
}

// Function to right rotate subtree rooted with y
struct Node* rightRotate(struct Node* y) {
    struct Node* x = y->left;
    struct Node* T2 = x->right;

    // Perform rotation
    x->right = y;
    y->left = T2;

    // Update heights
    y->height = max(height(y->left), height(y->right)) + 1;
    x->height = max(height(x->left), height(x->right)) + 1;

    // Return new root
    return x;
}

// Function to left rotate subtree rooted with x
struct Node* leftRotate(struct Node* x) {
    struct Node* y = x->right;
    struct Node* T2 = y->left;

    // Perform rotation
    y->left = x;
    x->right = T2;

    // Update heights
    x->height = max(height(x->left), height(x->right)) + 1;
    y->height = max(height(y->left), height(y->right)) + 1;

    // Return new root
    return y;
}

// Get the balance factor of a node
int getBalance(struct Node* node) {
    if (node == NULL)
        return 0;
    return height(node->left) - height(node->right);
}

// Recursive function to insert a key into the AVL tree
struct Node* insert(struct Node* node, int key) {
    // Perform standard BST insertion
    if (node == NULL)
        return newNode(key);

    if (key < node->key)
        node->left = insert(node->left, key);
    else if (key > node->key)
        node->right = insert(node->right, key);
    else // Equal keys are not allowed in BST
        return node;

    // Update height of the current node
    node->height = 1 + max(height(node->left), height(node->right));

    // Get the balance factor to check whether this node became unbalanced
    int balance = getBalance(node);

    // Left Left Case
    if (balance > 1 && key < node->left->key)
        return rightRotate(node);

    // Right Right Case
    if (balance < -1 && key > node->right->key)
        return leftRotate(node);

    // Left Right Case
    if (balance > 1 && key > node->left->key) {
        node->left = leftRotate(node->left);
        return rightRotate(node);
    }

    // Right Left Case
    if (balance < -1 && key < node->right->key) {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }

    // Return the unchanged node pointer
    return node;
}

// A utility function to print preorder traversal of the tree
void preOrder(struct Node* root) {
    if (root != NULL) {
        printf("%d ", root->key);
        preOrder(root->left);
        preOrder(root->right);
    }
}

// Driver program
int main() {
    struct Node* root = NULL;

    /* Constructing the AVL tree */
    root = insert(root, 10);
    root = insert(root, 20);
    root = insert(root, 30);
    root = insert(root, 40);
    root = insert(root, 50);
    root = insert(root, 25);

    /* The constructed AVL Tree would be
             30
            /  \
          20   40
         / \     \
        10 25    50
    */

    printf("Preorder traversal of the constructed AVL tree: \n");
    preOrder(root);

    return 0;
}


@Write a program to perform DFS/BFS traversal on graph.
#include <stdio.h>
#include <stdlib.h>

#define MAX_VERTICES 100

// Node structure for adjacency list
struct Node {
    int vertex;
    struct Node* next;
};

// Graph structure
struct Graph {
    int numVertices;
    struct Node* adjList[MAX_VERTICES];
};

// Function to create a new graph with 'n' vertices
struct Graph* createGraph(int n) {
    struct Graph* graph = (struct Graph*)malloc(sizeof(struct Graph));
    graph->numVertices = n;
    for (int i = 0; i < n; ++i)
        graph->adjList[i] = NULL;
    return graph;
}

// Function to add an edge to the graph
void addEdge(struct Graph* graph, int src, int dest) {
    // Add edge from src to dest
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->vertex = dest;
    newNode->next = graph->adjList[src];
    graph->adjList[src] = newNode;

    // Add edge from dest to src (for undirected graph)
    newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->vertex = src;
    newNode->next = graph->adjList[dest];
    graph->adjList[dest] = newNode;
}

// Function to perform DFS traversal
void DFS(struct Graph* graph, int vertex, int visited[]) {
    visited[vertex] = 1;
    printf("%d ", vertex);

    struct Node* temp = graph->adjList[vertex];
    while (temp != NULL) {
        int adjVertex = temp->vertex;
        if (!visited[adjVertex])
            DFS(graph, adjVertex, visited);
        temp = temp->next;
    }
}

// Function to initialize visited array and call DFS
void performDFS(struct Graph* graph, int startVertex) {
    int visited[MAX_VERTICES] = {0};
    printf("DFS traversal starting from vertex %d: ", startVertex);
    DFS(graph, startVertex, visited);
    printf("\n");
}

// Driver program
int main() {
    struct Graph* graph = createGraph(5);
    addEdge(graph, 0, 1);
    addEdge(graph, 0, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);

    performDFS(graph, 0);

    return 0;
}

#include <stdio.h>
#include <stdlib.h>

#define MAX_VERTICES 100

// Node structure for adjacency list
struct Node {
    int vertex;
    struct Node* next;
};

// Graph structure
struct Graph {
    int numVertices;
    struct Node* adjList[MAX_VERTICES];
};

// Queue structure for BFS
struct Queue {
    int front, rear, size;
    unsigned capacity;
    int* array;
};

// Function to create a new graph with 'n' vertices
struct Graph* createGraph(int n) {
    struct Graph* graph = (struct Graph*)malloc(sizeof(struct Graph));
    graph->numVertices = n;
    for (int i = 0; i < n; ++i)
        graph->adjList[i] = NULL;
    return graph;
}

// Function to create a new queue
struct Queue* createQueue(unsigned capacity) {
    struct Queue* queue = (struct Queue*)malloc(sizeof(struct Queue));
    queue->capacity = capacity;
    queue->front = queue->size = 0;
    queue->rear = capacity - 1;
    queue->array = (int*)malloc(queue->capacity * sizeof(int));
    return queue;
}

// Function to check if the queue is empty
int isEmpty(struct Queue* queue) {
    return (queue->size == 0);
}

// Function to enqueue an item
void enqueue(struct Queue* queue, int item) {
    if (isFull(queue))
        return;
    queue->rear = (queue->rear + 1) % queue->capacity;
    queue->array[queue->rear] = item;
    queue->size = queue->size + 1;
}

// Function to dequeue an item
int dequeue(struct Queue* queue) {
    if (isEmpty(queue))
        return -1;
    int item = queue->array[queue->front];
    queue->front = (queue->front + 1) % queue->capacity;
    queue->size = queue->size - 1;
    return item;
}

// Function to check if the queue is full
int isFull(struct Queue* queue) {
    return (queue->size == queue->capacity);
}

// Function to add an edge to the graph
void addEdge(struct Graph* graph, int src, int dest) {
    // Add edge from src to dest
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->vertex = dest;
    newNode->next = graph->adjList[src];
    graph->adjList[src] = newNode;

    // Add edge from dest to src (for undirected graph)
    newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->vertex = src;
    newNode->next = graph->adjList[dest];
    graph->adjList[dest] = newNode;
}

// Function to perform BFS traversal
void BFS(struct Graph* graph, int startVertex) {
    int visited[MAX_VERTICES] = {0};

    struct Queue* queue = createQueue(MAX_VERTICES);
    visited[startVertex] = 1;
    enqueue(queue, startVertex);

    printf("BFS traversal starting from vertex %d: ", startVertex);

    while (!isEmpty(queue)) {
        int currentVertex = dequeue(queue);
        printf("%d ", currentVertex);

        struct Node* temp = graph->adjList[currentVertex];
        while (temp != NULL) {
            int adjVertex = temp->vertex;
            if (!visited[adjVertex]) {
                visited[adjVertex] = 1;
                enqueue(queue, adjVertex);
            }
            temp = temp->next;
        }
    }

    printf("\n");
}

// Driver program
int main() {
    struct Graph* graph = createGraph(5);
    addEdge(graph, 0, 1);
    addEdge(graph, 0, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);

    BFS(graph, 0);

    return 0;
}



@Write a program to find out minimum spanning tree kruskals / single source shortest path./ Find the shortest route between each city and city "abc".
#include <stdio.h>
#include <stdlib.h>

#define MAX_EDGES 100

// Structure to represent an edge in the graph
struct Edge {
    int src, dest, weight;
};

// Structure to represent a subset for union-find
struct Subset {
    int parent, rank;
};

// Function prototypes
int find(struct Subset subsets[], int i);
void Union(struct Subset subsets[], int x, int y);
int compare(const void* a, const void* b);
void Kruskal(struct Edge edges[], int V, int E);

// Driver program
int main() {
    int V = 4; // Number of vertices
    int E = 5; // Number of edges

    // Array of edges representing the graph
    struct Edge edges[MAX_EDGES] = {
        {0, 1, 10},
        {0, 2, 6},
        {0, 3, 5},
        {1, 3, 15},
        {2, 3, 4}
    };

    // Perform Kruskal's algorithm
    Kruskal(edges, V, E);

    return 0;
}

// Find set of an element i
int find(struct Subset subsets[], int i) {
    if (subsets[i].parent != i)
        subsets[i].parent = find(subsets, subsets[i].parent);

    return subsets[i].parent;
}

// Union of two sets x and y
void Union(struct Subset subsets[], int x, int y) {
    int xroot = find(subsets, x);
    int yroot = find(subsets, y);

    // Attach the smaller rank tree under the root of the high rank tree
    if (subsets[xroot].rank < subsets[yroot].rank)
        subsets[xroot].parent = yroot;
    else if (subsets[xroot].rank > subsets[yroot].rank)
        subsets[yroot].parent = xroot;
    else {
        // If ranks are the same, make one as the root and increment its rank
        subsets[yroot].parent = xroot;
        subsets[xroot].rank++;
    }
}

// Comparison function for sorting edges based on their weights
int compare(const void* a, const void* b) {
    return ((struct Edge*)a)->weight - ((struct Edge*)b)->weight;
}

// Kruskal's algorithm to find the minimum spanning tree
void Kruskal(struct Edge edges[], int V, int E) {
    // Allocate memory for subsets
    struct Subset* subsets = (struct Subset*)malloc(V * sizeof(struct Subset));

    // Initialize subsets
    for (int i = 0; i < V; ++i) {
        subsets[i].parent = i;
        subsets[i].rank = 0;
    }

    // Sort edges in non-decreasing order of their weights
    qsort(edges, E, sizeof(struct Edge), compare);

    printf("Edges in the minimum spanning tree:\n");

    // Process each edge in sorted order
    for (int i = 0; i < E; ++i) {
        int x = find(subsets, edges[i].src);
        int y = find(subsets, edges[i].dest);

        // If including this edge does not cause a cycle, include it in the result
        if (x != y) {
            printf("%d - %d\n", edges[i].src, edges[i].dest);
            Union(subsets, x, y);
        }
    }

    free(subsets);
}


#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define V 6 // Number of vertices

// Function prototypes
void dijkstra(int graph[V][V], int src);

// Driver program
int main() {
    int graph[V][V] = {
        {0, 1, 4, 0, 0, 0},
        {0, 0, 2, 7, 0, 0},
        {0, 0, 0, 0, 1, 0},
        {0, 0, 0, 0, 0, 3},
        {0, 0, 0, 2, 0, 5},
        {0, 0, 0, 0, 0, 0}
    };

    int src = 0; // Source vertex

    dijkstra(graph, src);

    return 0;
}

// Function to find the vertex with the minimum distance value
// from the set of vertices not yet included in the shortest path tree
int minDistance(int dist[], int sptSet[]) {
    int min = INT_MAX, min_index;

    for (int v = 0; v < V; v++) {
        if (sptSet[v] == 0 && dist[v] <= min) {
            min = dist[v];
            min_index = v;
        }
    }

    return min_index;
}

// Function to print the constructed distance array
void printSolution(int dist[], int n) {
    printf("Vertex   Distance from Source\n");
    for (int i = 0; i < n; i++)
        printf("%d \t\t %d\n", i, dist[i]);
}

// Function to implement Dijkstra's algorithm for a given graph
void dijkstra(int graph[V][V], int src) {
    int dist[V];     // The output array dist[i] holds the shortest distance from src to i
    int sptSet[V];   // sptSet[i] is true if vertex i is included in the shortest path tree

    // Initialize all distances as INFINITE and sptSet[] as false
    for (int i = 0; i < V; i++) {
        dist[i] = INT_MAX;
        sptSet[i] = 0;
    }

    // Distance of source vertex from itself is always 0
    dist[src] = 0;

    // Find the shortest path for all vertices
    for (int count = 0; count < V - 1; count++) {
        int u = minDistance(dist, sptSet);

        // Mark the picked vertex as processed
        sptSet[u] = 1;

        // Update dist value of the adjacent vertices of the picked vertex
        for (int v = 0; v < V; v++)
            if (!sptSet[v] && graph[u][v] && dist[u] != INT_MAX &&
                dist[u] + graph[u][v] < dist[v])
                dist[v] = dist[u] + graph[u][v];
    }

    // Print the constructed distance array
    printSolution(dist, V);
}





