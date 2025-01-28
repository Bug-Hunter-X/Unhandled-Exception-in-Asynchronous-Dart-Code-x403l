# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: unhandled exceptions within asynchronous operations. The `bug.dart` file shows code that makes a network request and doesn't properly handle potential exceptions, leading to silent failures or crashes. The `bugSolution.dart` demonstrates the corrected code with improved error handling.

## Problem
The original code lacks comprehensive error handling in the `fetchData` function's `catch` block.  A simple `print` statement is insufficient for production-ready code.  Missing a `rethrow` will swallow exceptions preventing higher level handlers from responding to errors.

## Solution
The solution provides robust exception handling: it prints the error for debugging purposes and then `rethrows` the exception allowing higher-level error handling mechanisms to take over if present.