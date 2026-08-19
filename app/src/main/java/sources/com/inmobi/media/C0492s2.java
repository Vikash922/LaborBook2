package com.inmobi.media;

import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0492s2 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0492s2 f477a = new C0492s2();

    public C0492s2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = K2.f154a;
        return Boolean.valueOf(!((RootConfig) V4.a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null)).getMonetizationDisabled());
    }
}
