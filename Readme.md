#cordova-plugin-cutout

Detect if current device has cutout or notch

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

Currently devices with Android P or newer are supported. For non supported devices, return value will be `false` even if they may have cutout.

### iOS 

Devices with iOS 11 or higher are supported. Calling this on older devices will just return `false` as no older iPhones have cutout.
