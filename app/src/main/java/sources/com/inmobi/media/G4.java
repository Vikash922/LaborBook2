package com.inmobi.media;

import com.facebook.appevents.AppEventsConstants;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class G4 {
    public static HashMap a() {
        String str;
        HashMap map = new HashMap();
        try {
            map.put("mk-version", Lb.a());
            Boolean boolC = Jc.f151a.c();
            if (boolC != null) {
                map.put("u-id-adt", boolC.booleanValue() ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
            map.put("ts", String.valueOf(Calendar.getInstance().getTimeInMillis()));
            Calendar calendar = Calendar.getInstance();
            map.put("tz", String.valueOf(calendar.get(16) + calendar.get(15)));
            Pb.f217a.getClass();
            HashMap map2 = new HashMap();
            if (Pb.e && (str = Pb.d) != null) {
                map2.put("u-s-id", str);
            }
            map.putAll(map2);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("G4", "TAG");
        }
        return map;
    }
}
