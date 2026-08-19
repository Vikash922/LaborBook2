package com.razorpay;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes5.dex */
class StorageBridge {
    SharedPreferences.Editor editor;
    SharedPreferences preferences;

    StorageBridge(Context context) {
        this.preferences = SharedPreferenceUtil.getStorageBridgePrefs(context);
        this.editor = SharedPreferenceUtil.getStorageBridgeEditor(context);
    }

    @JavascriptInterface
    public void setString(String str, String str2) {
        try {
            this.editor.putString(str, str2);
            this.editor.commit();
        } catch (Exception e) {
            Logger.m2693e("Error saving string", e);
        }
    }

    @JavascriptInterface
    public void setBoolean(String str, boolean z) {
        try {
            this.editor.putBoolean(str, z);
            this.editor.commit();
        } catch (Exception e) {
            Logger.m2693e("Error saving boolean", e);
        }
    }

    @JavascriptInterface
    public void setInt(String str, int i) {
        try {
            this.editor.putInt(str, i);
            this.editor.commit();
        } catch (Exception e) {
            Logger.m2693e("Error saving integer", e);
        }
    }

    @JavascriptInterface
    public void setFloat(String str, float f) {
        try {
            this.editor.putFloat(str, f);
            this.editor.commit();
        } catch (Exception e) {
            Logger.m2693e("Error saving float", e);
        }
    }

    @JavascriptInterface
    public String getString(String str) {
        try {
            return this.preferences.getString(str, null);
        } catch (Exception unused) {
            return null;
        }
    }

    @JavascriptInterface
    public boolean getBoolean(String str) {
        try {
            return this.preferences.getBoolean(str, false);
        } catch (Exception unused) {
            return false;
        }
    }

    @JavascriptInterface
    public float getFloat(String str) {
        try {
            return this.preferences.getFloat(str, 0.0f);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @JavascriptInterface
    public int getInt(String str) {
        try {
            return this.preferences.getInt(str, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public void remove(String str) {
        try {
            this.editor.remove(str);
            this.editor.commit();
        } catch (Exception unused) {
        }
    }
}
