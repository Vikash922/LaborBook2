package com.amplitude.android.migration;

import com.amplitude.android.Amplitude;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApiKeyStorageMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, m2722d2 = {"Lcom/amplitude/android/migration/ApiKeyStorageMigration;", "", "amplitude", "Lcom/amplitude/android/Amplitude;", "(Lcom/amplitude/android/Amplitude;)V", "execute", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ApiKeyStorageMigration {
    private final Amplitude amplitude;

    /* JADX INFO: renamed from: com.amplitude.android.migration.ApiKeyStorageMigration$execute$1 */
    /* JADX INFO: compiled from: ApiKeyStorageMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.migration.ApiKeyStorageMigration", m2735f = "ApiKeyStorageMigration.kt", m2736i = {0, 0, 0}, m2737l = {17, 24}, m2738m = "execute", m2739n = {"this", "configuration", "logger"}, m2740s = {"L$0", "L$1", "L$2"})
    static final class C10331 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C10331(Continuation<? super C10331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiKeyStorageMigration.this.execute(this);
        }
    }

    public ApiKeyStorageMigration(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.amplitude = amplitude;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.migration.ApiKeyStorageMigration.execute(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
