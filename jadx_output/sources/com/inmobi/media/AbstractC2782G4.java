package com.inmobi.media;

import com.facebook.appevents.AppEventsConstants;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.G4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2782G4 {
    /* JADX INFO: renamed from: a */
    public static HashMap m1139a() {
        String str;
        HashMap map = new HashMap();
        try {
            map.put("mk-version", C2864Lb.m1313a());
            Boolean boolM1203c = C2835Jc.f1140a.m1203c();
            if (boolM1203c != null) {
                map.put("u-id-adt", boolM1203c.booleanValue() ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
            map.put("ts", String.valueOf(Calendar.getInstance().getTimeInMillis()));
            Calendar calendar = Calendar.getInstance();
            map.put("tz", String.valueOf(calendar.get(16) + calendar.get(15)));
            C2924Pb.f1397a.getClass();
            HashMap map2 = new HashMap();
            if (C2924Pb.f1401e && (str = C2924Pb.f1400d) != null) {
                map2.put("u-s-id", str);
            }
            map.putAll(map2);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("G4", "TAG");
        }
        return map;
    }
}
