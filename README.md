# 📱 Podcast App
## 📝 Solution Overview

This project was built using **SwiftUI** & **UIKit** with **MVVM architecture**.

Frameworks added using **Swift Package Manager**.

Data loading is handled by a ViewModel and happens only once when the screen first appears.

A loader is displayed only during the initial fetch for a smoother user experience.

The UI is structured into sections with horizontally scrollable items for efficient navigation.

Reusable SwiftUI views are used for cells, headers, and shared components.
custom component added for generic parts in app.

## 📂 Project Structure
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
  
#### 🔹Frameworks
- used two frameworks
   - Moya for handle network layer
   - swiftmessages for show custom error message in app

## 🧪 Unit Tests
- Unit tests were added to ensure the stability of the solution:

- Added ViewModel Tests - HomeViewModel.
- Logic Tests: Check content sort logic.


## 🎥 Demo Video

https://github.com/user-attachments/assets/49ac56e6-dd49-4644-9ceb-2a49890fe415














