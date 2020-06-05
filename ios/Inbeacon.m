// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Inbeacon, NSObject)

RCT_EXTERN_METHOD(initialize:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyStringWithFallback:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyString:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(putUserPropertyString:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyLongWithFallback:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyLong:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(putUserPropertyLong:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyDoubleWithFallback:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getUserPropertyDouble:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(putUserPropertyDouble:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(hasTag:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(setTag:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(resetTag:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(verifyCapabilities:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(setLogLevel:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getLogLevel:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(setForegroundService:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(askPermission:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(setPpid:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(getPpid:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
RCT_EXTERN_METHOD(triggerCustomEvent:(NSDictionary) params
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter);
@end
