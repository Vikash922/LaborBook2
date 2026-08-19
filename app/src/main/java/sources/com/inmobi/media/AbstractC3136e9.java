package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3136e9 {
    /* JADX INFO: renamed from: a */
    public static String m2107a(String valueTypeString) {
        Intrinsics.checkNotNullParameter(valueTypeString, "valueTypeString");
        int length = valueTypeString.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) valueTypeString.charAt(!z ? i : length), 32) <= 0;
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
        String strM2246a = AbstractC3194i7.m2246a(length, 1, valueTypeString, i);
        int iHashCode = strM2246a.hashCode();
        if (iHashCode != -1900324833) {
            if (iHashCode != -835221992) {
                if (iHashCode != 116079) {
                    if (iHashCode == 3213227 && strM2246a.equals("html")) {
                        return "HTML";
                    }
                } else if (strM2246a.equals("url")) {
                    return "URL";
                }
            } else if (strM2246a.equals("reference_iframe")) {
                return "REF_IFRAME";
            }
        } else if (strM2246a.equals("reference_html")) {
            return "REF_HTML";
        }
        return "UNKNOWN";
    }
}
