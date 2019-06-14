package com.vukstankovic;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class CDVCutout extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("has")) {
            this.has(callbackContext);
            return true;
        }
        return false;
    }

    private void has(CallbackContext callbackContext) {
        int resourceId = cordova.getActivity().getResources().getIdentifier("status_bar_height", "dimen", "android");
        callbackContext.success(resourceId > 0 ? "true" : "false");
    }
}
