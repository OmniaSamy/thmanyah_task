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
- AppTabBar - has custom tabbar controller
- AppNavigationController - has genric custom navigation controller to be used in app

#### 🔹NetworkServices
- has NetworkManager and parse response genric layer all app use same parse response file and same network manager 

#### 🔹Models
- contains apis data modle and NetworkError model to handle error back from api or initernet issue

#### 🔹Extension
- FontExtension - for swiftui to use all custom font directly
- UIColor+App - for use colors in colors catalog from code directly in uikit screens
- Color+App - for use colors in colors catalog from code directly in swiftui screens

#### 🔹Scenes
- this contains groups represent each screen in app
- Home - has custom header, cells files and viewmodel and main screen view 

















