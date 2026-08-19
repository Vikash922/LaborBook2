package com.inmobi.media;

import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.s2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3339s2 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3339s2 f2525a = new C3339s2();

    public C3339s2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        return Boolean.valueOf(!((RootConfig) AbstractC3001V4.m1873a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null)).getMonetizationDisabled());
    }
}
