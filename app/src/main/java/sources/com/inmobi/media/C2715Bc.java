package com.inmobi.media;

import java.util.Iterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Bc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2715Bc extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a */
    public static final C2715Bc f860a = new C2715Bc();

    public C2715Bc() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        JSONObject param = (JSONObject) obj;
        int iIntValue = ((Number) obj2).intValue();
        Intrinsics.checkNotNullParameter(param, "param");
        Iterator<String> itKeys = param.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        boolean z = true;
        while (itKeys.hasNext()) {
            if (param.getInt(itKeys.next()) < iIntValue) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
