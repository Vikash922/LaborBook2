package com.inmobi.media;

import com.inmobi.ads.rendering.InMobiAdActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Ma extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Ma f182a = new Ma();

    public Ma() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Ya ya = InMobiAdActivity.l;
        if (ya != null) {
            ya.m();
        }
        return Unit.INSTANCE;
    }
}
