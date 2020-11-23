# Todo-List-Flutter-

Video:
[![Alt text](https://img.youtube.com/vi/Z6mS95eBito/0.jpg)](https://www.youtube.com/watch?v=Z6mS95eBito)

##How to Run the APP
1. Install flutter from here
https://flutter.dev/docs/get-started/install
2. Optionally you can Install Android Studio from
https://developer.android.com/studio?gclid=CjwKCAiA2O39BRBjEiwApB2IklUot2wKA2863SbV3BOxu44idrakcjggZIq-dmIz9_PA4jDQnosbmhoCgx8QAvD_BwE&gclsrc=aw.ds
3. Clone/Download the code repo and extract it.
4. Goto to the root folder of the code .
5. open cmd/terminal and type the following commands
 On MAC/LINUx:
 keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
 on WINDOWS:
 keytool -genkey -v -keystore c:\Users\USER_NAME\key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key
6. Goto android directory -> app -> src-> key.properties and put your store password,keypassword, storeFile URL without any quotes
        storePassword=YOURPASSWORD
        keyPassword=YOURPASSWORD
        keyAlias=key
        storeFile=C:\\Users\\YOUR_USER_NAME\\key.jks
7. Go back to the root folder and now type the following cmd in terminal/cmd.
    flutter build apk for Android
    or flutter build ios for ios


##Features of the APP:
1. Add task
2. Remove Task
3. Check off the task

<br>
<img src="./TodoList_output/ss1.jpg" widht="720" height="1280"/>
<br>
<img src="./TodoList_output/ss2.jpg" widht="720" height="1280"/>


