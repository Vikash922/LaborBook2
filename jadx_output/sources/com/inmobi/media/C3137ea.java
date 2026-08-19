package com.inmobi.media;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.ea */
/* JADX INFO: loaded from: classes6.dex */
public final class C3137ea extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3137ea f2048a = new C3137ea();

    public C3137ea() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        try {
            Class.forName(InAppPurchaseConstants.CLASSNAME_BILLING_CLIENT);
            z = true;
        } catch (ClassNotFoundException | Exception unused) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
