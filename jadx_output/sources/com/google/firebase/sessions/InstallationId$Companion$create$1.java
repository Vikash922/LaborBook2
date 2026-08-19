package com.google.firebase.sessions;

import com.google.firebase.sessions.InstallationId;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: InstallationId.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.google.firebase.sessions.InstallationId$Companion", m2735f = "InstallationId.kt", m2736i = {0, 1}, m2737l = {32, 40}, m2738m = "create", m2739n = {"firebaseInstallations", "authToken"}, m2740s = {"L$0", "L$0"})
final class InstallationId$Companion$create$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InstallationId.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InstallationId$Companion$create$1(InstallationId.Companion companion, Continuation<? super InstallationId$Companion$create$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.create(null, this);
    }
}
