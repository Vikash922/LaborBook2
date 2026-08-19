package com.inmobi.media;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0592z2 {
    public static final Object a(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m596constructorimpl(block.invoke());
        } catch (Error e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m596constructorimpl(ResultKt.createFailure(e));
        } catch (Exception e2) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m596constructorimpl(ResultKt.createFailure(e2));
        }
    }
}
