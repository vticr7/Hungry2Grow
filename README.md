# Hungry2Grow Assignment

This is an iOS app developed using SwiftUI that fetches and displays a list of items from a public API. The app follows the MVVM (Model-View-ViewModel) architecture pattern for a modular and maintainable codebase.

## Features

- Fetches a list of items from the provided API endpoint.
- Displays the fetched items in a scrollable list with an aesthetic UI.
- Shows the title and body of each item in the list.
- Implements error handling for the API call.
- Allows navigation to a detail view that displays more information about a selected item.
- Utilizes a visually appealing color scheme and typography for an enhanced user experience.



## Architecture

The app follows the MVVM architecture pattern, which separates the concerns of data management, UI presentation, and business logic. The key components of the architecture are:

- **Model**: Represents the data and business logic of the app. In this case, the `Item` struct defines the structure of an item retrieved from the API.
- **View**: Represents the UI components and the visual elements displayed to the user. The `ItemListView` displays the list of items, while the `ItemDetailView` shows the details of a selected item.
- **ViewModel**: Acts as an intermediary between the View and the Model. The `ItemListViewModel` handles the data retrieval, error handling, and data preparation for the View.

The MVVM pattern promotes a clear separation of responsibilities, improves testability, and enhances the maintainability of the codebase.

## Requirements

- Xcode 12 or later
- iOS 14 or later
- Swift 5.3 or later

## Getting Started

### Clone the repository:

```bash
git clone https://github.com/your# Hungry2Grow Assignment




