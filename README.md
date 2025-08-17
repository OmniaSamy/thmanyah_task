# 📱 Podcast App
##  Solution Overview

This project was built using **SwiftUI** & **UIKit** with **MVVM architecture**.

Frameworks added using **Swift Package Manager**.

Data loading is handled by a ViewModel and happens only once when the screen first appears.

A loader is displayed only during the initial fetch for a smoother user experience.

The UI is structured into sections with horizontally scrollable items for efficient navigation.

Reusable SwiftUI views are used for cells, headers, and shared components.
custom component added for generic parts in app.

##  Project Structure
The project is organized into the following groups and layers:

#### 🔹AppDelegate+SceneDelegate
- it contains appdelegate & scene delegate files and extensions to include any new func not related to lifecycle
  
#### 🔹StoryBoard
- contains launch screen stoaryboard file (splash screen)

#### 🔹Resources
- Fonts - custom fonts files and AppFont to use custom fonts in code
- Colors - has colors catalog in app - to handle dark and light colors
- Assets - has assests catalog in app
- Configurations - has AppConfig to store base urls and api key in secure way
  
#### 🔹Utilities
- AppManager - has app window & responsible for set app root
- ImageLoader - custom image loader to be used in any screen in app

#### 🔹Services
- Container - responsible for create all app screens and embeded in navigationcontroller
  
#### 🔹Custom
- Loader - has AppLoader to be used in any screen untill data return
- AppAlertManager - used for show error message alert if api return error or want to show error message to user
- AppTabBar - has custom tabbar controller using **UIKit**
- AppNavigationController - has genric custom navigation controller to be used in app using **UIKit**

#### 🔹NetworkServices
- has NetworkManager and parse response genric layer all app use same parse response file and same network manager 

#### 🔹Models
- contains apis data modle and NetworkError model to handle error back from api or initernet issue

#### 🔹Extension
- FontExtension - for swiftui to use all custom font directly
- UIColor+App - for use colors in colors catalog from code directly in UIKit screens
- Color+App - for use colors in colors catalog from code directly in swiftui screens

#### 🔹Scenes
- this contains groups represent each screen in app
- Home Scene
   - custom header group contains header view
   - cells group contains sections cells
   - HomeViewModel - responsible for call home api to get data and manage load more and sort func
   - SectionsRenderTypes - contains sections types that can return from api
   - HomeView - has section structure and depend on section type call specifc cell view
- Search Scene
   - SearchBarView custom search bar
   - SearchViewModel - handle get search result data and in case user make serach again request old request before send new one 
  
#### 🔹Frameworks
- Used frameworks
   - Moya for handle network layer
   - swiftmessages for show custom error message in app

##  Unit Tests
- Unit tests were added to ensure the stability of the solution:

- Added ViewModel Tests - HomeViewModel.
- Logic Tests: Check content sort logic.

## Challenges Faced

During implementation, a few challenges were encountered:
- Managing data loading only once when the screen appears (similar to viewDidLoad in UIKit).
- Handling horizontal scrolling inside a section in a way that is memory-efficient.
- Designing a generic custom loader overlay to appear only on the first load of the screen, that can be used in any screen in app.
- Designing a generic custom load more to be used in anay screen in app.
- models with params that can return some time int and sometimes string


## Suggestions for Improvement

For future improvements, the following ideas could enhance the solution:
Consider using UICollectionView with Compositional Layout (UIKit) for more memory-efficient horizontal scrolling if performance becomes an issue with SwiftUI.
Add more unit tests to cover edge cases and error handling.
Integrate local caching (Core Data or Realm) for offline support.
Improve the UI/UX with animations, accessibility features, and localization.

##  Demo Video

https://github.com/user-attachments/assets/bdea4f4a-cd66-4a6a-8758-45b149273bcc













