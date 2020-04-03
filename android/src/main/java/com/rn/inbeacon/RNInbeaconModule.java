
package com.rn.inbeacon;

import android.util.Log;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Promise;
import com.inbeacon.sdk.Base.VerifiedCapability;
import com.inbeacon.sdk.Custom.EventType;
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
  public void initialize(String clientId, String clientSecret, final Promise promise) {
    try {
      if (InbeaconManager.getInstance().getContext() == null) {
        InbeaconManager.initialize(getReactApplicationContext(), clientId, clientSecret);
        promise.resolve(null);
        return;
      }
      promise.reject("InitializationError", "InbeaconManager is already initialized and can only be initialized once!");
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }


  @ReactMethod
  public void getUserPropertyStringWithFallback(String property, String defaultValue, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyString(property, defaultValue));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void getUserPropertyString(String property, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyString(property));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void putUserPropertyString(String property, String value, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.putPropertyString(property, value);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }


  @ReactMethod
  public void getUserPropertyLongWithFallback(String property, long defaultValue, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyLong(property, defaultValue));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void getUserPropertyLong(String property, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyLong(property));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void putUserPropertyLong(String property, long value, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.putPropertyLong(property, value);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }


  @ReactMethod
  public void getUserPropertyDoubleWithFallback(String property, double defaultValue, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyDouble(property, defaultValue));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void getUserPropertyDouble(String property, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.getPropertyDouble(property));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void putUserPropertyDouble(String property, double value, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.putPropertyDouble(property, value);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }


  @ReactMethod
  public void hasTag(String tag, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      promise.resolve(userPropertyService.hasTag(tag));
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void setTag(String tag, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.setTag(tag);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void resetTag(String tag, final Promise promise) {
    try {
      UserPropertyService userPropertyService = this.getUserPropertyService();
      userPropertyService.resetTag(tag);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  public void verifyCapabilities(final Promise promise) {
    try {
      VerifiedCapability cap = InbeaconManager.getInstance().verifyCapabilities();
      switch (cap) {
        case CAP_OK:
          promise.resolve("CAP_OK");
          break;
        case CAP_SDK_TOO_OLD:
          promise.resolve("CAP_SDK_TOO_OLD");
          break;
        case CAP_BLUETOOTH_DISABLED:
          promise.resolve("CAP_BLUETOOTH_DISABLED");
          break;
        case CAP_BLUETOOTH_LE_NOT_AVAILABLE:
          promise.resolve("CAP_BLUETOOTH_LE_NOT_AVAILABLE");
          break;
        default:
          promise.reject("ERROR", "Could not receive capabilities");
          break;
      }
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void setLogLevel(String logLevel, final Promise promise) {
    try {
      switch (logLevel) {
        case "WARN":
          InbeaconManager.getInstance().setLogLevel(Log.WARN);
          break;
        case "INFO":
          InbeaconManager.getInstance().setLogLevel(Log.INFO);
          break;
        case "DEBUG":
          InbeaconManager.getInstance().setLogLevel(Log.DEBUG);
          break;
        case "ERROR":
          InbeaconManager.getInstance().setLogLevel(Log.ERROR);
          break;
        case "VERBOSE":
          InbeaconManager.getInstance().setLogLevel(Log.VERBOSE);
          break;
        default:
          promise.reject("Wrong logLevel value: ", "logLevel should be WARN | INFO | DEBUG | ERROR | VERBOSE");
          break;
      }
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void getLogLevel(final Promise promise) {
    try {
      int level = (int) InbeaconManager.getInstance().getLogLevel();
      switch (level) {
        case 5:
          promise.resolve("WARN");
          break;
        case 4:
          promise.resolve("INFO");
          break;
        case 3:
          promise.resolve("DEBUG");
          break;
        case 6:
          promise.resolve("ERROR");
          break;
        case 2:
          promise.resolve("VERBOSE");
          break;
        default:
          promise.resolve("NONE");
          break;
      }
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void setForegroundService(boolean state, String notification, final Promise promise) {
    try {
      InbeaconManager.getInstance().setForegroundservice(state, notification);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void askPermission() {
    InbeaconManager.getInstance().askPermissions(getCurrentActivity());
  }

  @ReactMethod
  public void setPpid(String ppid, final Promise promise) {
    try {
      InbeaconManager.getInstance().setPPID(ppid);
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void getPpid(final Promise promise) {
    try {
      promise.resolve(InbeaconManager.getInstance().getPPID());
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }

  @ReactMethod
  public void triggerCustomEvent(long eventId, String eventType, String extra, final Promise promise) {
    try {
      switch(eventType) {
        case "IN":
          InbeaconManager.getInstance().triggerCustomEvent(eventId, EventType.IN, extra);
          break;
        case "ONESHOT":
          InbeaconManager.getInstance().triggerCustomEvent(eventId, EventType.ONESHOT, extra);
          break;
        case "OUT":
          InbeaconManager.getInstance().triggerCustomEvent(eventId, EventType.OUT, extra);
          break;
        default:
          promise.reject("Wrong eventType: ", "eventType should be IN | ONESHOT | OUT");
      }
      promise.resolve(null);
    } catch (Exception e) {
      promise.reject(e.getClass().toString(), e.getMessage());
    }
  }
}
