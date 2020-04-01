
# react-native-inbeacon

## Getting started

`$ npm install react-native-inbeacon --save`

### Mostly automatic installation

`$ react-native link react-native-inbeacon`

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

## Usage
```javascript
import RNInbeacon from 'react-native-inbeacon';

// TODO: What to do with the module?
RNInbeacon;
```
