package com.mixpanel.android.mpmetrics;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.mixpanel.android.util.MPLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class SystemInformation {
    private static final String LOGTAG = "MixpanelAPI.SysInfo";
    private static SystemInformation sInstance;
    private static final Object sInstanceLock = new Object();
    private final String mAppName;
    private final Integer mAppVersionCode;
    private final String mAppVersionName;
    private final Context mContext;
    private final DisplayMetrics mDisplayMetrics;
    private final Boolean mHasNFC;
    private final Boolean mHasTelephony;

    static SystemInformation getInstance(Context context) {
        synchronized (sInstanceLock) {
            if (sInstance == null) {
                sInstance = new SystemInformation(context.getApplicationContext());
            }
        }
        return sInstance;
    }

    private SystemInformation(Context context) {
        String str;
        Integer numValueOf;
        String string;
        Method method;
        Boolean bool;
        Boolean bool2;
        this.mContext = context;
        PackageManager packageManager = context.getPackageManager();
        Boolean bool3 = null;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName;
            try {
                numValueOf = Integer.valueOf(packageInfo.versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                MPLog.m2688w(LOGTAG, "System information constructed with a context that apparently doesn't exist.");
                numValueOf = null;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            str = null;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        this.mAppVersionName = str;
        this.mAppVersionCode = numValueOf;
        if (i == 0) {
            string = applicationInfo.nonLocalizedLabel == null ? "Misc" : applicationInfo.nonLocalizedLabel.toString();
        } else {
            string = context.getString(i);
        }
        this.mAppName = string;
        try {
            method = packageManager.getClass().getMethod("hasSystemFeature", String.class);
        } catch (NoSuchMethodException unused3) {
            method = null;
        }
        if (method != null) {
            try {
                bool = (Boolean) method.invoke(packageManager, "android.hardware.nfc");
                try {
                    bool2 = (Boolean) method.invoke(packageManager, "android.hardware.telephony");
                } catch (IllegalAccessException unused4) {
                    MPLog.m2688w(LOGTAG, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    bool2 = null;
                } catch (InvocationTargetException unused5) {
                    MPLog.m2688w(LOGTAG, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    bool2 = null;
                }
            } catch (IllegalAccessException unused6) {
                bool = null;
            } catch (InvocationTargetException unused7) {
                bool = null;
            }
            bool3 = bool;
        } else {
            bool2 = null;
        }
        this.mHasNFC = bool3;
        this.mHasTelephony = bool2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mDisplayMetrics = displayMetrics;
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
    }

    public String getAppVersionName() {
        return this.mAppVersionName;
    }

    public Integer getAppVersionCode() {
        return this.mAppVersionCode;
    }

    public String getAppName() {
        return this.mAppName;
    }

    public boolean hasNFC() {
        return this.mHasNFC.booleanValue();
    }

    public boolean hasTelephony() {
        return this.mHasTelephony.booleanValue();
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mDisplayMetrics;
    }

    public String getCurrentNetworkOperator() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean isWifiConnected() {
        /*
            r3 = this;
            android.content.Context r0 = r3.mContext
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            int r0 = r0.checkCallingOrSelfPermission(r1)
            if (r0 != 0) goto L2e
            android.content.Context r0 = r3.mContext
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            if (r0 == 0) goto L28
            int r1 = r0.getType()
            r2 = 1
            if (r1 != r2) goto L28
            boolean r0 = r0.isConnected()
            if (r0 == 0) goto L28
            goto L29
        L28:
            r2 = 0
        L29:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            goto L2f
        L2e:
            r0 = 0
        L2f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.SystemInformation.isWifiConnected():java.lang.Boolean");
    }

    public Boolean isBluetoothEnabled() {
        BluetoothAdapter defaultAdapter;
        try {
            if (this.mContext.getPackageManager().checkPermission("android.permission.BLUETOOTH", this.mContext.getPackageName()) != 0 || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null) {
                return null;
            }
            return Boolean.valueOf(defaultAdapter.isEnabled());
        } catch (Exception unused) {
            return null;
        }
    }

    public String getBluetoothVersion() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return "ble";
        }
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth")) {
            return "none";
        }
        return "classic";
    }
}
