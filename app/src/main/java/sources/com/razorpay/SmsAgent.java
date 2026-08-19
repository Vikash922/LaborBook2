package com.razorpay;

import android.app.Activity;
import android.content.IntentFilter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
class SmsAgent {
    static final int READ_SMS_PERMISSION_CODE = 1;
    static SmsAgent sSmsAgent;
    ArrayList<SmsAgentInterface> interfaceArrayList = new ArrayList<>();
    private SmsReceiver l$1_I$l$;

    void deregisterForCallbacks(SmsAgentInterface smsAgentInterface) {
    }

    void postSms(String str, String str2) {
    }

    void registerForCallbacks(SmsAgentInterface smsAgentInterface) {
    }

    void sendSmsPermissionCallBack(boolean z) {
    }

    boolean takeActionsIfPermissionsAreGranted(Activity activity) {
        return false;
    }

    static SmsAgent getSmsAgentInstance() {
        if (sSmsAgent == null) {
            sSmsAgent = new SmsAgent();
        }
        return sSmsAgent;
    }

    SmsAgent() {
    }

    void addSMSBroadcastReceiver(Activity activity) {
        if (this.l$1_I$l$ != null) {
            return;
        }
        Logger.m2690d("Adding SMS Broadcast receiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        this.l$1_I$l$ = new SmsReceiver(this);
        intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        Logger.m2690d("Added SMS Broadcast receiver");
    }

    void removeSMSBroadcastReceiver(Activity activity) {
        sendSmsPermissionCallBack(false);
        SmsReceiver smsReceiver = this.l$1_I$l$;
        if (smsReceiver == null) {
            Logger.m2690d("removeSMSBroadcastReceiver called but it was not registered");
            return;
        }
        try {
            activity.unregisterReceiver(smsReceiver);
        } catch (Exception e) {
            AnalyticsUtil.reportError("SmsAgent", "S0", e.getMessage());
        }
        this.l$1_I$l$ = null;
        Logger.m2690d("SMS Broadcast receiver removed");
    }

    void handleRequestPermissionsResult(Activity activity, int i, String[] strArr, int[] iArr) {
        if (i != 1) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            sendSmsPermissionCallBack(true);
            addSMSBroadcastReceiver(activity);
            AnalyticsUtil.trackEvent(AnalyticsEvent.SMS_PERMISSION_NOW_GRANTED);
        } else {
            sendSmsPermissionCallBack(false);
            AnalyticsUtil.trackEvent(AnalyticsEvent.SMS_PERMISSION_NOW_DENIED);
        }
    }
}
