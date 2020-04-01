declare module 'react-native-inbeacon' {
  export function initialze(clientId: string, clientSecret: string): void;
  export function getUserPropertyString(property: string, fallback: string): Promise<string>;
  export function putUserPropertyString(property: string, value: string): Promise<string>;
}
