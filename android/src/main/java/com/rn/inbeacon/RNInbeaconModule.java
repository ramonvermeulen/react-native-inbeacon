
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.inbeacon.sdk.InbeaconManager;
import java.lang.String

public class RNInbeaconModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNInbeaconModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNInbeacon";
  }

  /* All bridge methods */
  @ReactMethod
  public void initialize(String clientId, String clientSecret) {
    System.out.println('Test test - RNInBeacon');
    InbeaconManager.initialize(this, clientId, clientSecret);
  }
}
