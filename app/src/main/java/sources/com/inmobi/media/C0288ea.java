package com.inmobi.media;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0288ea extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0288ea f342a = new C0288ea();

    public C0288ea() {
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
