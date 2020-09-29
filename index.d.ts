declare module 'react-native-inbeacon' {
  export enum LogLevel {
    WARN = 'WARN',
    INFO = 'INFO',
    DEBUG = 'DEBUG',
    ERROR = 'ERROR',
    VERBOSE = 'VERBOSE',
  };
  export enum EventType {
    IN = 'IN',
    ONESHOT = 'ONESHOT',
    OUT = 'OUT'
  };
  export function initialize(clientId: string, clientSecret: string): Promise<void>;
  export function getUserPropertyStringWithFallback(property: string, fallback: string): Promise<string>;
  export function getUserPropertyString(property: string): Promise<string>;
  export function putUserPropertyString(property: string, value: string): Promise<boolean>;
  export function getUserPropertyLongWithFallback(property: string, fallback: number): Promise<number>;
  export function getUserPropertyLong(property: string): Promise<number>;
  export function putUserPropertyLong(property: string, value: number): Promise<boolean>;
  export function getUserPropertyDoubleWithFallback(property: string, fallback: number): Promise<number>;
  export function getUserPropertyDouble(property: string): Promise<number>;
  export function putUserPropertyDouble(property: string, value: number): Promise<boolean>;
  export function hasTag(tag: string): Promise<boolean>;
  export function setTag(tag: string): Promise<boolean>;
  export function resetTag(tag: string): Promise<boolean>;
  export function verifyCapabilities(): Promise<string>;
  export function setLogLevel(level: LogLevel): Promise<boolean>;
  export function getLogLevel(): Promise<LogLevel | string>;
  export function setForegroundService(state: boolean, notification: string): Promise<boolean>;
  export function askPermission(): void;
  export function setPpid(): Promise<void>;
  export function getPpid(): Promise<string>;
  export function triggerCustomEvent(eventId: number, eventType: EventType, extra: string): Promise<void>;
}
