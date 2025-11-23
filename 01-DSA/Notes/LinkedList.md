
# Linked List Notes

## 1. What is Linked List

A Linked List is a form of a sequential collection and it does not have to be in order.  
A Linked List is made up of independent nodes that may contain any type of data and each node has a reference to the next node in the link.

- Each node contains:
  - Data
  - Reference (link) to the next node
- Nodes are independent objects connected together through links.
- The first node is called **Head** and the last node is called **Tail**.

---

## 2. Linked List vs Array

### Linked List
- Elements of Linked List are independent objects.
- Size is variable and not predefined.
- Connected through references (links) between nodes.

### Array
- Elements are stored in contiguous memory locations.
- Size is fixed.
- Allows random access to elements (very efficient indexing). :contentReference[oaicite:2]{index=2}

---

## 3. Types of Linked List

There are four main types of Linked List:

1. **Singly Linked List**  
   Each node contains data and a reference to the next node.

2. **Circular Singly Linked List**  
   Last node points back to the first node making a circle.

3. **Doubly Linked List**  
   Each node has two references:
   - One to the previous node
   - One to the next node

4. **Circular Doubly Linked List**  
   Similar to doubly linked list, but the last node points back to the first and the first points to the last, forming a closed loop.

---

## 4. Linked List in Memory

### Array in Memory
Elements are stored in continuous memory blocks with direct indexing:
```

0 | 1 | 2 | 3 | 4 | 5

```

### Linked List in Memory
Nodes are stored in different memory locations and connected by references:
```

Head -> [ Data | Next ] -> [ Data | Next ] -> [ Data | Next ] -> null

```

- Each node holds:
  - Actual value
  - Address of the next node
- Head stores the address of the first node.
- Tail stores the address of the last node and its reference points to null.

---
