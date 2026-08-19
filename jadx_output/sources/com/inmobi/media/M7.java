package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class M7 {
    public static byte a(String referencedCreativeString) {
        Intrinsics.checkNotNullParameter(referencedCreativeString, "referencedCreativeString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = referencedCreativeString.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) lowerCase.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String strA = AbstractC0348i7.a(length, 1, lowerCase, i);
        int iHashCode = strA.hashCode();
        if (iHashCode != -1412832500) {
            if (iHashCode != 0) {
                if (iHashCode == 112202875 && strA.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                    return (byte) 1;
                }
            } else if (strA.equals("")) {
                return (byte) 1;
            }
        } else if (strA.equals("companion")) {
            return (byte) 2;
        }
        return (byte) 0;
    }
}
