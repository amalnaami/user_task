
# User Project

## Description: 

A User project created in flutter using Riverpod. It supports both android and ios, clone the appropriate branches mentioned below:

For Mobile: https://github.com/amalnaami/user_task

## How to use

#### Step 1 
Download or clone this repo by using the link below:

```bash
  https://github.com/amalnaami/user_task
```
#### Step 2 
Go to project root and execute the following command in console to get the required dependencies:

```bash
  flutter pub get
```
#### Step 3 
Run project:

```bash
  flutter run
```


## 🚀 Explain the flow off app: 

This app contain two screens the first screen will show a list of users and when click on any user it will move you to second screen which contain user image and his posts.

I upload `screen Recording`, that explains almost the flow of the task


## 🚀 Screen Record

https://user-images.githubusercontent.com/75214477/195036744-38084225-c18c-4599-8a1e-4f1ed4bc6a83.mp4


I also handel if there is api status failed or disconnect internet issue.


## 🚀 Screenshot
<img src=https://user-images.githubusercontent.com/75214477/195056127-71a1bfb0-c7e1-4af6-a496-075abaf21d51.png width="200" height="400">
<img src=https://user-images.githubusercontent.com/75214477/195056154-1143debc-76c0-4049-b2ce-a6ebad9c4b55.png width="200" height="400">

### Rules: 
* Publish the project on Github
* Define App Text Theme which contain

    *
         TextTheme
        
    *
         App Font Family
* Define color palette for the app on Constant.
* For API calls : `Dio`
* Log APIs using LogInterceptor in Dio package
* State management: `Riverpod`
* For route navigation: `GoRoute`

### Pointers:
* Provide Localization options (English and Arabic)
* Reusable UI components




## 🚀 App Features
* Get List Of Users.

* Get Posts to every user.


## 🚀 Libraries & Tools Used
* [dio](https://pub.dev/packages/dio)
* [riverpod](https://pub.dev/packages/riverpod)
* [go_route](https://pub.dev/packages/go_router)
* [cached_network_image](https://pub.dev/packages/cached_network_image)
* [flutter_localizations](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)






## 🚀 Folder Structure


#### Here is the core folder structure which flutter provides.

```bash
| flutter-app/
  |- android
  |- build
  |- ios
  |- lib
  |- test
```

#### Here is the folder structure we have been using in this project

  <pre> 

|-- lib
    |-- core (Contains any code can shared between features such as app theme, constants, etc.)
    |-- models
    |   |-- feature_name_model.dart
    |-- providers (Contain all feartures provider)
    |-- repositories
    |   |-- feature_repository.dart
    |-- screens
    |   |-- screen_name
    |   |-- screen_widgets
    |-- services (Contain api manger and all Api Status)
    |-- utils 
    |   |-- localization
    |   |-- shared_widgets (Like loader and errors)
    |-- main 
    |-- route (Conatin all router and screens of all)

</pre>

#### Routes
<img width="579" alt="routes" src="https://user-images.githubusercontent.com/75214477/195066327-11a8a0c6-2884-4604-af30-c181ce848855.png">

#### Main
<img width="510" alt="main" src="https://user-images.githubusercontent.com/75214477/195066375-1fbc81e9-29c3-4dc4-8087-c1b6b469d692.png">


# Conclusion
I will be happy to answer any questions that you may have on this approach 🙂


### Assignment From [Floward](https://flowardcareers.elevatus.io)
![Uploading Simulator Screen Shot - iPhone 14 Pro - 2022-10-11 at 13.31.30.png…]()



