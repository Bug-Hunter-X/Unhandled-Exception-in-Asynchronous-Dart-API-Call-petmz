# Unhandled Exception in Asynchronous Dart API Call

This repository demonstrates a common error in Dart asynchronous programming: neglecting to handle potential exceptions during an API call using the `http` package. The code might throw an exception, causing an unexpected program termination.  The solution showcases robust error handling and demonstrates best practices for dealing with API calls in a production environment.

## Bug Description

The `fetchData` function attempts to fetch data from a remote API.  If the API request fails (e.g., network error, server error), it throws an exception without proper handling. This leads to a crash and disrupts application flow.

## Solution

The solution enhances the `fetchData` function with a `try-catch` block to gracefully handle exceptions. It prints error messages for debugging purposes and allows for additional error handling, such as implementing retry mechanisms or displaying user-friendly error messages.