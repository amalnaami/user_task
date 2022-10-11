## [Floward](https://flowardcareers.elevatus.io)

#### Technology, Information and Internet,

Founded in 2017, Floward is an online flower and gifting company, Operating in 35 cities in nine countries across the
MENA region and London, UK, we guarantee same-day delivery across the board through our own refrigerated fleet to ensure
our arrangements arrive fresh to the customer.

![Logo](https://floward.imgix.net/web/Files/attachment/floward-logo-01-637374032965010488.svg?w=110&h=32&fit=crop&crop=entropy)
<br><br>

# 🚀🚀 User and posts App

## 📝 Task Explanation

I upload `screen Recording`, that explains almost the flow of the task

At first, I turn off the internet on my laptop and tried to open the app, to show the message when the user has no
connection to the internet.
Then turn on the internet, click on the button, to retry again, start the app, and show a list of users then clicking on
any user you will move to his posts.

* Publish the project on Github
* Define App Text Theme which contain

    *
        - [x] TextTheme
        
    *
        - [x] App Font Family
* Define color palette for the app on Constant.
* For API calls : `Dio`
* Log APIs using LogInterceptor in Dio package
* State management: `Riverpod`
* For route navigation: `GoRoute`
* Provide Localization options (English and Arabic)
* Reusable UI components



https://user-images.githubusercontent.com/75214477/195036744-38084225-c18c-4599-8a1e-4f1ed4bc6a83.mp4



## Tech Stack

**API Calls:** [dio](https://pub.dev/packages/dio)

**State management:** [riverpod](https://pub.dev/packages/riverpod)

**Navigaton Route:** [go_route](https://pub.dev/packages/go_router)

**Project structure:**




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
