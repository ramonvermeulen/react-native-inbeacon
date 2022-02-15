<p align="center">
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT license" />
  </a>
  <a href="https://npmjs.org/package/react-native-inbeacon">
    <img src="http://img.shields.io/npm/v/react-native-inbeacon.svg" alt="Current npm package version" />
  </a>
  <a href="https://github.com/ramonvermeulen/react-native-inbeacon/graphs/commit-activity">
    <img src="https://img.shields.io/maintenance/no/2021" alt="Maintenance" />
  </a>
  <a href="https://npmjs.org/package/react-native-inbeacon">
    <img src="http://img.shields.io/npm/dm/react-native-inbeacon.svg" alt="Downloads" />
  </a>
  <a href="https://npmjs.org/package/react-native-inbeacon">
    <img src="http://img.shields.io/npm/dt/react-native-inbeacon.svg?label=total%20downloads" alt="Total downloads" />
  </a>
  <a href="https://github.com/ramonvermeulen/react-native-inbeacon/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/ramonvermeulen/react-native-inbeacon" alt="Contributors" />
  </a>
  <a href="https://github.com/ramonvermeulen/react-native-inbeacon/issues">
    <img src="https://img.shields.io/github/issues-raw/ramonvermeulen/react-native-inbeacon" alt="Open issues" />
  </a>
</p>

# react-native-inbeacon

This module is providing a bridge between React Native and the Android / iOS Native SDKs from Inbeacon. 
This is a third-party module, so it is not developed or maintained by any of the Inbeacon creators themselves. 
The reason for creating this module was because there was no react-native module for Inbeacon yet, and I had to use it in react-native. 
So why not publish my code to npm so people can use it and improve it?

Contribution to this module is highly appreciated! 👍

Inbeacon Android SDK: https://github.com/inbeacon/InbeaconSdk-android \
Inbeacon iOS SDK: https://github.com/inbeacon/InbeaconSdk-ios

## Installation
`$ npm install react-native-inbeacon --save`

For react-native versions 0.60 and higher the installation will take place through autolinking.

For react-native versions lower than 0.60, please take a look at the manual installation.

For Android the following permission is required in your AndroidManifest.xml:<br>
`<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />`
### Manual installation
<details>
  <summary>Click to expand!</summary>
  
  #### iOS

  1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
  2. Go to `node_modules` ➜ `react-native-inbeacon` and add `RNInbeacon.xcodeproj`
  3. In XCode, in the project navigator, select your project. Add `libRNInbeacon.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
  4. Run your project (`Cmd+R`)<

  #### Android

  1. Open up `android/app/src/main/java/[...]/MainActivity.java`
    - Add `import com.reactlibrary.RNInbeaconPackage;` to the imports at the top of the file
    - Add `new RNInbeaconPackage()` to the list returned by the `getPackages()` method
  2. Append the following lines to `android/settings.gradle`:
      ```
      include ':react-native-inbeacon'
      project(':react-native-inbeacon').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-inbeacon/android')
      ```
  3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
      ```
        compile project(':react-native-inbeacon')
      ```
</details>

## Documentation
#### Methods
Please take a look at the [__Android__](https://github.com/inbeacon/InbeaconSdk-android/blob/master/documentation/using-the-sdk.md) and [__iOS__](https://github.com/inbeacon/InbeaconSdk-IOS/blob/master/documentation/using-the-sdk.md) SDK documentation for a better understanding.

| Name          | Params        | Return value | iOS   |  Android |
|:-------------:|:-------------:|:------------:|:-----:|---------:|
| **initialize** | clientId: string,<br>clientSecret: string | Promise&lt;void&gt; | ✔ | ✔ |
| **getUserPropertyStringWithFallback** | property: string,<br>fallback: string | Promise&lt;string&gt; | ✔ | ✔ |
| **getUserPropertyString** | property: string | Promise&lt;string&gt; | ✔ | ✔ |
| **putUserPropertyString** | property: string,<br>value: string | Promise&lt;void&gt; | ✔ | ✔ |
| **getUserPropertyLongWithFallback** | property: string,<br>fallback: number | Promise&lt;number&gt; | ✔ | ✔ |
| **getUserPropertyLong** | property: string | Promise&lt;number&gt; | ✔ | ✔ |
| **putUserPropertyLong** | property: string,<br>value: number | Promise&lt;void&gt; | ✔ | ✔ |
| **getUserPropertyDoubleWithFallback** | property: string,<br>fallback: number | Promise&lt;number&gt; | ✔ | ✔ |
| **getUserPropertyDouble** | property: string | Promise&lt;number&gt; | ✔ | ✔ |
| **putUserPropertyDouble** | property: string,<br>value: number | Promise&lt;void&gt; | ✔ | ✔ |
| **hasTag** | tag: string | Promise&lt;boolean&gt; | ✔ | ✔ |
| **setTag** | tag: string | Promise&lt;void&gt; | ✔ | ✔ |
| **resetTag** | tag: string | Promise&lt;void&gt; | ✔ | ✔ |
| **verifyCapabilities** | None | Promise&lt;string&gt; | ✔ | ✔ |
| **setLogLevel** | level: LogLevel | Promise&lt;void&gt; | ✔ | ✔ |
| **getLogLevel** | None | Promise&lt;string&gt; | ✔ | ✔ |
| **setForegroundService** | state: boolean,<br>notification: string | Promise&lt;void&gt; | No support | ✔ |
| **askPermission** | None | void | ✔ | ✔ |
| **setPpid** | ppid: string | Promise&lt;void&gt; | ✔ | ✔ |
| **getPpid** | None | Promise&lt;string&gt; | ✔ | ✔ |
| **triggerCustomEvent** | eventId: number,<br>eventType: EventType,<br>extra: string | void | ✔ | ✔ |


## Example
```javascript
import React from 'react';
import RNInbeacon from 'react-native-inbeacon';
import { useEffect } from 'react-native';

export function RNIBTest({ children }) {

  useEffect(() => {
    RNInbeacon.initialize('CLIENT_ID', 'CLIENT_SECRET').then(() => {
      console.log('RNInbeacon is initialized');
    }).catch(err => {
      console.log('RNInbeacon threw an error while initializing', err);
    });
  }, []);

  return (<>{children}</>)
}
```
