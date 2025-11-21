
# Arrays & ArrayList — Java Notes

## 1\. Arrays in Java

### ▸ What is an Array?

> An array is a fixed-size data structure that stores elements of the same data type in contiguous memory, each uniquely identified by an index starting from 0. Think of it as a disciplined orchestra: every musician has a seat number and no one changes chairs mid-performance.

### ▸ Key Characteristics

  * **Type Strict:** Stores data of a specified type.
  * **Contiguous Memory:** Elements lie side-by-side in memory.
  * **Indexing:** Each element has a unique index ($0$ to $n-1$).
  * **Fixed Size:** Size is predefined and **cannot** be modified after creation.

-----

### Creating an Array

There are three sacred steps:

1.  **Declaration** – Create a reference.
2.  **Instantiation** – Allocate memory.
3.  **Initialization** – Assign values.

<!-- end list -->

```java
int[] arr;              // Declaration
arr = new int[5];       // Instantiation
arr[0] = 10;            // Initialization
```

**Or simply:**

```java
int[] arr = {10, 20, 30, 40, 50};
```

-----

### Types of Arrays

#### One Dimensional

Single index array.

```java
int[] a = {5, 4, 10};
// Access: a[i]
```

#### Two Dimensional

Matrix-style structure.

```java
int[][] matrix = {
  {1, 2, 3},
  {4, 5, 6}
};
// Access: matrix[i][j]
```

#### Three Dimensional

Rare, mysterious, and academically fashionable.

```java
// Access: a[i][j][k]
```

-----

### Common Operations on Arrays

| Operation | Description | Complexity |
| :--- | :--- | :--- |
| **Access** | Direct access using index | $O(1)$ |
| **Traversal** | Visit each element | $O(n)$ |
| **Insertion** | Add at index (only if space exists) | $O(1)$ / $O(n)$ |
| **Deletion** | Mark with `Integer.MIN_VALUE` or shift elements | $O(n)$ (if shifting) |

**Traversal Example:**

```java
for(int i = 0; i < arr.length; i++) {
    System.out.println(arr[i]);
}
```

### Time & Space Complexity (1D Array)

| Operation | Time | Space |
| :--- | :--- | :--- |
| Access | $O(1)$ | $O(1)$ |
| Search | $O(n)$ | $O(1)$ |
| Insert | $O(1)$ | $O(1)$ |
| Traverse | $O(n)$ | $O(1)$ |

### When to Use Arrays

  * ✅ Fixed size known beforehand
  * ✅ Fast random access required
  * ✅ Same data type elements needed
  * ❌ When dynamic resizing is required
  * ❌ When frequent insertions/deletions exist

-----

## 2\. ArrayList in Java

### ▸ What is ArrayList?

ArrayList is a resizable array implementation of the `List` interface from the Java Collection Framework. Unlike its rigid cousin (Array), it loves flexibility and grows with ambition.

```java
import java.util.ArrayList;

ArrayList<Integer> list = new ArrayList<>();
```

### Key Features

  * **Dynamic size:** Auto grows when full.
  * **Duplicates:** Allows duplicate values.
  * **Ordering:** Preserves insertion order.
  * **Objects Only:** Only stores objects (must use wrapper classes like `Integer`, `Double`).

### Common ArrayList Methods

```java
list.add(10);          // Adds 10 to the end
list.get(0);           // Retrieves element at index 0
list.set(0, 20);       // Updates index 0 to value 20
list.remove(0);        // Removes element at index 0
list.size();           // Returns current size
```

-----

## 3\. Comparison & Analysis

### Array vs ArrayList

| Feature | Array | ArrayList |
| :--- | :--- | :--- |
| **Size** | Fixed | Dynamic |
| **Data Type** | Primitive / Object | Object only |
| **Performance** | Faster | Slightly slower |
| **Flexibility** | Low | High |
| **Part of JCF** | ❌ No | ✅ Yes |

### Time Complexity (ArrayList)

| Operation | Time Complexity |
| :--- | :--- |
| `get()` | $O(1)$ |
| `add()` | $O(1)$ (amortized) |
| `remove()` | $O(n)$ |
| `search()` | $O(n)$ |

-----

## Quick Example

```java
ArrayList<String> names = new ArrayList<>();
names.add("Luna");
names.add("Orion");
names.remove("Luna");

System.out.println(names); 
// Output: [Orion]
```

> "A bouquet of names, trimmed with surgical grace."

-----

## Summary

  * **Arrays:** Fixed size, efficient, memory strict. Best for static data and direct indexing.
  * **ArrayList:** Dynamic size, flexible. Ideal for growing datasets and utilizes built-in utility methods.

-----