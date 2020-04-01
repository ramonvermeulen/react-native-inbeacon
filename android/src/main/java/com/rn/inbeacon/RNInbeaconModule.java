
package com.rn.inbeacon;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Promise;
import com.inbeacon.sdk.InbeaconManager;
import com.inbeacon.sdk.User.UserPropertyService;

import java.lang.String;

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

  /* All helper methods */
  private UserPropertyService getUserPropertyService() {
    InbeaconManager inbManager = (InbeaconManager) InbeaconManager.getInstance();
    return inbManager.getUserPropertyService();
  }

  /* All bridge methods */
  @ReactMethod
  public void initialize(String clientId, String clientSecret) {
    InbeaconManager.initialize(getReactApplicationContext(), clientId, clientSecret);
  }

  @ReactMethod
  public void getUserPropertyString(String property, String defaultValue, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyString(property, defaultValue));
    } catch (Exception e) {
      promise.reject(e.getMessage());
    }
  }

  @ReactMethod void putPropertyString(String property, String value, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.putPropertyString(property, value);
      promise.resolve(value);
    } catch (Exception e) {
      promise.reject(e.getMessage());
    }
  }
}
