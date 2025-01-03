# Circular Dependency Solution with Modular Design

This repository demonstrates how to resolve circular dependencies in a Swift project by leveraging modular design. The example uses two main modules, `Store` and `Travel`, and showcases how to split modules into shared protocols and implementations for better decoupling.

## Modules Overview

### `TravelService`
- Defines lightweight shared protocols for the `Travel` functionality.
- Provides abstractions that other modules, like `Store`, can depend on.

### `Travel`
- Contains the actual implementation of `Travel` functionality.
- Depends on `TravelService` for protocol definitions.

### `StoreService`
- Defines shared protocols for the `Store` functionality.
- Relies on abstractions to integrate with other modules, like `Travel`.

### `Store`
- Implements the core `Store` functionality.
- Depends on `StoreService` and `TravelService` for protocols, ensuring no circular dependency.

### Main App
- Integrates `Travel` and `Store` by creating instances and injecting dependencies at runtime.

## Key Features
- **Decoupling**: Ensures `Store` and `Travel` modules are loosely coupled, allowing independent updates.
- **Dependency Inversion**: Modules depend on abstractions (`StoreService`, `TravelService`) instead of concrete implementations.
- **Testability**: Simplifies unit testing by enabling mock implementations of protocols.
- **Modularity**: Improves build times and scalability for larger projects.

## Example Usage

The Main App creates a `StoreCore` (from `Store`) and a `TravelCore` (from `Travel`). It injects the `StoreCore` into `TravelCore` using the `StoreService` protocol, facilitating seamless communication.

```swift
import Travel
import Store

let store = StoreCore() // Implements StoreService
let travelService = TravelCore(store: store) // Uses StoreService

// Example usage
travelService.book()
