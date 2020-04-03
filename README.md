<p align="center">
  <a href="./LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT license" />
  </a>
  <a href="https://npmjs.org/package/react-native-inbeacon">
    <img src="http://img.shields.io/npm/v/react-native-inbeacon.svg" alt="Current npm package version" />
  </a>
  <a href="https://github.com/ramonvermeulen/react-native-inbeacon/graphs/commit-activity">
    <img src="https://img.shields.io/badge/Maintained%3F-yes-brightgreen.svg" alt="Maintenance" />
  </a>
  <a href="https://npmjs.org/package/react-native-inbeacon-reborn">
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
__NOTE: This module is still under development and is not stable yet.__  
__STATE: Early development__

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

### Manual installation

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
## Documentation
#### Methods
Please take a look at the [__Android__](https://github.com/inbeacon/InbeaconSdk-android/blob/master/documentation/using-the-sdk.md) and [__iOS__](https://github.com/inbeacon/InbeaconSdk-IOS/blob/master/documentation/using-the-sdk.md) SDK documentation for a better understanding.

| Name          | Params        | Return value | iOS   |  Android |
|:-------------:|:-------------:|:------------:|:-----:|---------:|
| **initialize** | clientId: string,<br>clientSecret: string | Promise&lt;void&gt; | In development | ✔ |
| **getUserPropertyStringWithFallback** | property: string,<br>fallback: string | Promise&lt;string&gt; | In development | ✔ |
| **getUserPropertyString** | property: string | Promise&lt;string&gt; | In development | ✔ |
| **putUserPropertyString** | property: string,<br>value: string | Promise&lt;void&gt; | In development | ✔ |
| **getUserPropertyLongWithFallback** | property: string,<br>fallback: number | Promise&lt;number&gt; | In development | ✔ |
| **getUserPropertyLong** | property: string | Promise&lt;number&gt; | In development | ✔ |
| **putUserPropertyLong** | property: string,<br>value: number | Promise&lt;void&gt; | In development | ✔ |
| **getUserPropertyDoubleWithFallback** | property: string,<br>fallback: number | Promise&lt;number&gt; | In development | ✔ |
| **getUserPropertyDouble** | property: string | Promise&lt;number&gt; | In development | ✔ |
| **putUserPropertyDouble** | property: string,<br>value: number | Promise&lt;void&gt; | In development | ✔ |
| **hasTag** | tag: string | Promise&lt;boolean&gt; | In development | ✔ |
| **setTag** | tag: string | Promise&lt;void&gt; | In development | ✔ |
| **resetTag** | tag: string | Promise&lt;void&gt; | In development | ✔ |
| **verifyCapabilities** | None | Promise&lt;string&gt; | In development | ✔ |
| **setLogLevel** | level: LogLevel | Promise&lt;void&gt; | In development | ✔ |
| **getLogLevel** | None | Promise&lt;string&gt; | In development | ✔ |
| **setForegroundService** | state: boolean,<br>notification: string | Promise&lt;void&gt; | In development | ✔ |
| **askPermission** | None | void | In development | ✔ |
| **setPpid** | ppid: string | Promise&lt;void&gt; | In development | ✔ |
| **getPpid** | None | Promise&lt;string&gt; | In development | ✔ |
| **triggerCustomEvent** | eventId: number,<br>eventType: EventType,<br>extra: string | void | In development | ✔ |


## Usage
```javascript
import RNInbeacon from 'react-native-inbeacon';

// Usage examples are in development
RNInbeacon;
```
