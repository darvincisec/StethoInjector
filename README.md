# StethoInjector
Inspired from [mobilesecurity](https://github.com/m0bilesecurity) [RMS tool](https://github.com/m0bilesecurity/RMS-Runtime-Mobile-Security) which dynamically injects Stetho library created a counterpart to perform static tampering. This script tampers the apk to inject Facebook Stetho library(http://facebook.github.io/stetho) and Stetho initialization code to inspect app sandbox data via Chrome browser even on a non-rooted device

## Initialize Stetho Library
```Java
    static{
        try {
            Class activityThreadCls = Class.forName("android.app.ActivityThread");

            Method method = activityThreadCls.getMethod("currentApplication");
            Application stethoApp = (Application) method.invoke(null, null);
            Context stethocontext = stethoApp.getApplicationContext();
            Stetho.initialize(
                    Stetho.newInitializerBuilder(stethocontext)
                            .enableDumpapp(Stetho.defaultDumperPluginsProvider(stethocontext))
                            .enableWebKitInspector(Stetho.defaultInspectorModulesProvider(stethocontext))
                            .build());

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
```

# Usage
```Shell
sh StethoInjector.sh <xyz.apk> <Class file where Stetho needs to be injected >
```
Ex: sh StethoInjector.sh 123.apk MainActivity

Once the APK is successfully tampered to include Stetho
- Connect your device to desktop with USB.
- Open the Desktop Chrome browser and type chrome://inspect/#devices.
- You will see the mobile device model
- Open the tampered app which you wanted to inspect
- You can see the application that can be inspected in Chrome Browser
- Press the inspect button corresponding to the app opened on device.
- Boom! You can find the databases and shared preferences of the opened app(provided it created database and shared preferences)

You can also modify the data inside databases or shared preferences. Stetho also provides [dumpapp tool](https://github.com/facebook/stetho/tree/master/scripts), which allows you to list the files in app’s sandbox or dump specific folder/file or the entire sandbox data on a non-rooted device.

## Dumpapp usage

### List the files in sandbox
```Shell
./dumpapp -p <process name> files tree
```
### Download specific files to /mnt/sdcard  provided app has write permission to external storage
```Shell
./dumpapp -p <process name> files download files.zip files/<xxx>/<xyz.ext>
```

### Download all the app sandbox files to /mnt/sdcard  provided app has write permission to external storage
```Shell
./dumpapp -p <process name> files download files.zip
```

# Demo
For a demo used LastPass Authenticator and Duo Authenticator to inject Stetho library and initialize it. Once the tampered app is executed on a device, you can inspect the applications via Chrome browser.

![Demo](demo.gif)

# Enjoy hacking!!!
