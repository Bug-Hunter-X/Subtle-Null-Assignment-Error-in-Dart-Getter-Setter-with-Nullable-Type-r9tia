# Subtle Null Assignment Error in Dart Getter/Setter with Nullable Type

This repository demonstrates a common yet subtle bug in Dart related to nullable types and getter/setter methods.  The issue arises when attempting to assign a null value to an integer variable indirectly through a setter, even if the backing field allows nulls.

The `bug.dart` file contains the buggy code, while `bugSolution.dart` provides a corrected version.

## Bug Description

The bug stems from the interaction between a nullable backing field (`_myVariable` of type `int?`) and a getter/setter designed to handle null values. While the getter gracefully returns 0 if the backing field is null, the setter still expects an integer value. Assigning `null` to `myVariable` will result in a runtime error because `null` is not an instance of `int`.

## Solution

The solution lies in modifying the setter to explicitly handle null assignments.  By allowing null to be assigned to the backing field, the expected behavior is maintained. See `bugSolution.dart` for the corrected code.
