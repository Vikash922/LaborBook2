package com.inmobi.media;

import com.google.android.gms.appset.AppSetIdInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.d1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3113d1 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public static final C3113d1 f1974a = new C3113d1();

    public C3113d1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractC3128e1.f2038a = (AppSetIdInfo) obj;
        return Unit.INSTANCE;
    }
}
