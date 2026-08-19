package com.google.ads.mediation.inmobi;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.MobileAds;
import com.inmobi.compliance.InMobiPrivacyCompliance;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiExtrasBuilder {
    public static final String COPPA = "coppa";
    public static final String THIRD_PARTY_KEY = "tp";
    public static final String THIRD_PARTY_VERSION = "tp-ver";

    public static InMobiExtras build(Context context, Bundle bundle, String str) {
        HashMap map = new HashMap();
        if (bundle != null && bundle.keySet() != null) {
            for (String str2 : bundle.keySet()) {
                if (!str2.contains(InMobiNetworkKeys.IAB_US_PRIVACY_STRING)) {
                    map.put(str2, bundle.getString(str2));
                }
            }
        }
        String string = context.getSharedPreferences("NonNullPackage", 0).getString(InMobiNetworkKeys.IAB_US_PRIVACY_STRING, null);
        if (string != null) {
            InMobiPrivacyCompliance.setUSPrivacyString(string);
        }
        map.put("tp", str);
        map.put("tp-ver", MobileAds.getVersion().toString());
        if (MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() == 1) {
            map.put("coppa", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        } else {
            map.put("coppa", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        return new InMobiExtras(map, "");
    }
}
