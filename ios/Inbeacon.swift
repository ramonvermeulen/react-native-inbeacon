import Foundation
import InbeaconSdk

@objc(Inbeacon)
class Inbeacon: NSObject {
    @objc(initialize:resolver:rejecter:)
    func initialize(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["clientId"] == nil || params["clientSecret"] == nil) { reject("1", "ClientId or ClientSecret not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.askPermissions = false;
        InbeaconSdk.createWith(clientId: params["clientId"]!, clientSecret: "")
        resolve(nil)
    }
    
    @objc(getUserPropertyStringWithFallback:resolver:rejecter:)
    func getUserPropertyStringWithFallback(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["fallback"] == nil) { reject("1", "Property or fallback not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result = InbeaconSdk.sharedInstance.user[params["property"]!] ?? params["fallback"]
        resolve(result)
    }
    
    @objc(getUserPropertyString:resolver:rejecter:)
    func getUserPropertyString(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil) { reject("1", "Property not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result:String? = InbeaconSdk.sharedInstance.user[params["property"]!] ?? nil
        resolve(result)
    }
    
    @objc(putUserPropertyString:resolver:rejecter:)
    func putUserPropertyString(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["value"] == nil) { reject("1", "Property or value not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.user[params["property"]!] = params["value"]
        resolve(nil)
    }
    
    @objc(getUserPropertyLongWithFallback:resolver:rejecter:)
    func getUserPropertyLongWithFallback(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["fallback"] == nil) { reject("1", "Property or fallback not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result = InbeaconSdk.sharedInstance.user[params["property"]!] ?? params["fallback"]
        resolve(result)
    }
    
    @objc(getUserPropertyLong:resolver:rejecter:)
    func getUserPropertyLong(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil) { reject("1", "Property not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result:Int? = InbeaconSdk.sharedInstance.user[params["property"]!] ?? nil
        resolve(result)
    }
    
    @objc(putUserPropertyLong:resolver:rejecter:)
    func putUserPropertyLong(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["value"] == nil) { reject("1", "Property or value not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.user[params["property"]!] = params["value"]
        resolve(nil)
    }
    
    @objc(getUserPropertyDoubleWithFallback:resolver:rejecter:)
    func getUserPropertyDoubleWithFallback(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["fallback"] == nil) { reject("1", "Property or fallback not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result = InbeaconSdk.sharedInstance.user[params["property"]!] ?? params["fallback"]
        resolve(result)
    }
    
    @objc(getUserPropertyDouble:resolver:rejecter:)
    func getUserPropertyDouble(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil) { reject("1", "Property not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let result:Double? = InbeaconSdk.sharedInstance.user[params["property"]!] ?? nil
        resolve(result)
    }
    
    @objc(putUserPropertyDouble:resolver:rejecter:)
    func putUserPropertyDouble(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["property"] == nil || params["value"] == nil) { reject("1", "Property or value not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.user[params["property"]!] = params["value"]
        resolve(nil)
    }
    
    @objc(hasTag:resolver:rejecter:)
    func hasTag(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["tag"] == nil) { reject("1", "Tag not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        resolve(InbeaconSdk.sharedInstance.user.hasTag(params["tag"]!))
    }
    
    @objc(setTag:resolver:rejecter:)
    func setTag(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["tag"] == nil) { reject("1", "Tag not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.user.setTag(params["tag"]!)
        resolve(nil)
    }
    
    @objc(resetTag:resolver:rejecter:)
    func resetTag(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["tag"] == nil) { reject("1", "Tag not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.user.resetTag(params["tag"]!)
        resolve(nil)
    }
    
    @objc(verifyCapabilities:resolver:rejecter:)
    func verifyCapabilities(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        guard let error : NSError = InbeaconSdk.sharedInstance.checkCapabilitiesAndRights() else {
            return resolve("CAP_OK")
        }
        resolve(error.userInfo["action"])
    }
    
    @objc(setLogLevel:resolver:rejecter:)
    func setLogLevel(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["logLevel"] == nil) { reject("1", "logLevel not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        switch params["logLevel"] {
        case "WARN":
            InbeaconSdk.sharedInstance.logLevel = InbLogLevel.warning
            break;
        case "INFO":
            InbeaconSdk.sharedInstance.logLevel = InbLogLevel.info
            break;
        case "DEBUG":
            InbeaconSdk.getInstance().logLevel = InbLogLevel.debug
            break;
        case "ERROR":
            InbeaconSdk.getInstance().logLevel = InbLogLevel.error
            break;
        case "VERBOSE":
            InbeaconSdk.getInstance().logLevel = InbLogLevel.verbose
            break;
        default:
            reject(
                "Wrong logLevel value: ",
                "logLevel should be WARN | INFO | DEBUG | ERROR | VERBOSE",
                NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)
            )
            break;
        }
        resolve(nil)
    }
    
    @objc(getLogLevel:resolver:rejecter:)
    func getLogLevel(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["logLevel"] == nil) { reject("1", "logLevel not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let logLevel = InbeaconSdk.sharedInstance.logLevel
        switch logLevel {
        case InbLogLevel.warning:
            return resolve("WARN")
        case InbLogLevel.info:
            return resolve("INFO")
        case InbLogLevel.debug:
            return resolve("DEBUG")
        case InbLogLevel.error:
            return resolve("ERROR")
        case InbLogLevel.verbose:
            return resolve("VERBOSE")
        default:
            return resolve("NONE")
        }
    }

    @objc(setForegroundService:resolver:rejecter:)
    func setForegroundService(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        resolve("Needs implementation")
        
    }
    
    @objc(askPermission:resolver:rejecter:)
    func askPermission(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        InbeaconSdk.sharedInstance.askPermissions = true;
        resolve(nil)
    }
    
    @objc(setPpid:resolver:rejecter:)
    func setPpid(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["ppid"] == nil) { reject("1", "ppid not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        InbeaconSdk.sharedInstance.PPID = params["ppid"]!
        resolve(nil)
    }
    
    @objc(getPpid:resolver:rejecter:)
    func getPpid(_ params: [String: String], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        resolve(InbeaconSdk.sharedInstance.PPID)
    }
    
    @objc(triggerCustomEvent:resolver:rejecter:)
    func triggerCustomEvent(_ params: [String: Any], _ resolve: RCTPromiseResolveBlock, rejecter reject:RCTPromiseRejectBlock) -> Void {
        if (params["eventId"] == nil || params["eventType"] == nil || params["extra"] == nil) { reject("1", "eventId or eventType or extra not provided", NSError(domain: "InbeaconSdk", code: 1, userInfo: nil)) }
        let id = params["eventId"]! as! Int
        let ioType:String = params["eventId"]! as! String
        let extra:String = params["extra"]! as! String
        InbeaconSdk.sharedInstance.triggerCustomEvent(id: id, ioType: ioType, extra: extra)
        resolve(nil)
    }
}
