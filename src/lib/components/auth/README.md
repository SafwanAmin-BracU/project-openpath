# Authentication Components

## Overview
This directory contains the authentication components for the OpenPath application. The components are designed following SOLID principles and implement several design patterns to ensure maintainability, extensibility, and testability.

## Components

### BaseAuthForm
A reusable base component that implements the **Template Method Pattern** by providing the structure for authentication forms while allowing specific implementations to override certain parts.

### LoginForm
Implements the login form functionality by extending the BaseAuthForm component.

### SignupForm
Implements the signup form functionality by extending the BaseAuthForm component.

## Design Patterns Used

1. **Template Method Pattern**: The BaseAuthForm provides a template structure that the LoginForm and SignupForm extend and customize.

2. **Strategy Pattern**: Different authentication strategies (login, signup) are encapsulated in separate components that can be swapped at runtime.

3. **Observer Pattern**: Components use Svelte's built-in event system to communicate with parent components without tight coupling.

4. **Singleton Pattern**: The AuthService is implemented as a singleton to ensure a single instance is used throughout the application.

## SOLID Principles Implementation

1. **Single Responsibility Principle (SRP)**:
   - Each component has a single responsibility (BaseAuthForm for structure, LoginForm for login, SignupForm for signup)
   - AuthService handles only authentication-related operations

2. **Open/Closed Principle (OCP)**:
   - Components are open for extension but closed for modification
   - New authentication methods can be added without modifying existing code

3. **Liskov Substitution Principle (LSP)**:
   - LoginForm and SignupForm can be used interchangeably where BaseAuthForm is expected

4. **Interface Segregation Principle (ISP)**:
   - Different interfaces for different types of credentials (LoginCredentials, SignupCredentials)

5. **Dependency Inversion Principle (DIP)**:
   - High-level components depend on abstractions, not concrete implementations
   - AuthService uses interfaces for different credential types

## Icon Implementation

Icons are implemented using Iconify with Tailwind CSS v4, which provides:

- Access to thousands of icons from various icon sets
- Consistent styling through Tailwind classes
- Optimized performance by only loading used icons

Example usage: `<span class="i-[mdi-github]"></span>`