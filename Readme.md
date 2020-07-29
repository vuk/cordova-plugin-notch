# cordova-plugin-cutout

Detect if the device screen has cutout or notch

## Installation

`cordova plugin add cordova-plugin-cutout`

## Methods 

### has()

``` javascript
/** 
* @name has
* @returns Promise<boolean>
*/
cutout.has();
```

## Support 

### Android 

Currently devices with Android P or newer are supported. For non supported devices, return value will be `false` even if the screen may have cutout.

### iOS 

Devices with iOS 11 or higher are supported. Calling this on older devices will just return `false` as no older iPhones have cutout.

## Usage in Ionic

There are not typedefs yet, so to use it with Ionic framework, do as follows 

```typescript
declare var cutout: any;

cutout.has()
  .then(result => console.log(result));
```
