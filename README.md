![](https://www.babup.com/do.php?img=60651)
# Quick Nav
Enhance your app with our Flutter Plugin, featuring an elegant messenger bubble overlay and integrated notifications, ensuring a seamless and interactive user experience across all applications.

## _Supported platforms_
- #### Android
![](images/package%20video.gif)
## _About_
Quick Nav offers a streamlined solution to effortlessly display a messenger bubble. Simply follow these easy steps to enhance your app's functionality and user interaction.

The plugin is exclusively designed for Android, leveraging its unique capability to appear atop all applications. This feature is not available on iOS systems.

## _Key Features:_
- #### Display chat head overlays above all Android apps.
- #### Integrated notification capabilities for enhanced user engagement.
- #### Customization options for chat head appearance and behavior.
- #### Simplified API for seamless integration into Flutter projects.
- #### Ideal for creating intuitive and responsive user interfaces.


## _Usage_
1- First, add the package to your application in the `pubspec.yaml` file
```yml
    quick_nav: ^updated_version
```

2- Navigate to the AndroidManifest.xml file to incorporate necessary permissions for the app's functionality.
```xml
  <uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
  <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
  <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```

3- Effortlessly utilize the plugin and explore its full potential by viewing the [example project](https://github.com/codexalco/quick_nav/tree/main/example) for plugin so that you can discover all the advantages easily.

## _Power of Plugin_

- `initService`
  should be employed initially to activate the plugin, as it requires specific properties for configuring the bubble.

| Parameter | Required | Description                                                                                                                                                                                                                                                                                                                                                                         |
| --- | --- |-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
| `screenHeight` | true | Ensure to transmit the logical pixel screen height obtained from  MediaQurey                                                                                                                                                                                                                                                                                                                            | 
| `chatHeadIcon` | false | To customize the chat head icon, simply add the new icon to the 'drawable' folder located at `android/app/src/main/res/drawable/`. Then, specify the image name without the file format. <br> <br> In the absence of specifying a custom icon, the plugin defaults to using the `Android chat head icon` stored within its 'drawable' resources.<br> <img src="https://www.babup.com/do.php?img=28116" width="150" height="150" /> |
| `notificationIcon` | false | Same as `chatHeadIcon` <br> <br> When you don't pass a icon the default icon is `android notification icon` placed inside the drawable of the plugin. <br> <img src="https://www.babup.com/do.php?img=28117" width="150" height="150" /> | 
| `notificationTitle` | false | when you close the chat head .. we show a notification that contain title and body .. so when you doen't send any title the default notifcation title is `App Name`                                                                                                                                                                                                                 | 
| `notificationBody` | false | Same as `notificationTitle` except the default notification body is `Your Service is still working`                                                                                                                                                                                                                                                                                 | 
| `notificationCircleHexColor` | false | In android 13 and above the system but the notification icon inside the circle so you can change the circle color by this parameter .. <br> <br> But in android 10 and below this parameter used to change the notification icon                                                                                                                                                    | 

- `checkPermission`
  This function checks if the app has the necessary permission to display 
  above other apps. It returns a boolean value...
** `true`: Permission is granted, allowing you to initiate the bubble.
** `false`: Permission is denied; in this case, use `askPermission` first.

- `askPermission`
  Using this function, you will be guided to the system settings, specifically the 'Display over other applications' section, to grant the necessary permission to your application.

- `startService`
  This function enables you to initiate the service for displaying the overlay.

| Parameter | Required | Description                                                                                                                                                                                                            |
| --- | --- |------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
| `notificationTitle` | false | To modify the notification title before initiating the service, provide a new title as a parameter. Otherwise, if you have specified a title in `initService`, it will be used by the service. | 
| `notificationBody` | false | Same as `notificationTitle`                                                                                                                                                                                            | 

- `stopService`
  This function enables you to stop the service, closing the overlay.

- `clearNotificationService`
  This function allows you to remove the notification from the status bar.

## _Discussion_
Use the [issue tracker](https://github.com/codexalco/quick_nav/issues) for bug reports and feature requests.
Pull requests are welcome.