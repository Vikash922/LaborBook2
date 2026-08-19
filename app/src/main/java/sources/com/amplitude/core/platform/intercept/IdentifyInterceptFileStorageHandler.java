package com.amplitude.core.platform.intercept;

import com.amplitude.common.Logger;
import com.amplitude.core.Amplitude;
import com.amplitude.core.utilities.EventsFileStorage;
import com.facebook.share.internal.ShareInternalUtility;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: IdentifyInterceptFileStorageHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\t\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u0004\u0018\u00010\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;", "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;", "storage", "Lcom/amplitude/core/utilities/EventsFileStorage;", "logger", "Lcom/amplitude/common/Logger;", "amplitude", "Lcom/amplitude/core/Amplitude;", "(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)V", "clearIdentifyIntercepts", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransferIdentifyEvent", "Lcom/amplitude/core/events/BaseEvent;", "removeFile", ShareInternalUtility.STAGING_PARAM, "", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentifyInterceptFileStorageHandler implements IdentifyInterceptStorageHandler {
    private final Amplitude amplitude;
    private final Logger logger;
    private final EventsFileStorage storage;

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1 */
    /* JADX INFO: compiled from: IdentifyInterceptFileStorageHandler.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler", m2735f = "IdentifyInterceptFileStorageHandler.kt", m2736i = {0}, m2737l = {69}, m2738m = "clearIdentifyIntercepts", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10621 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10621(Continuation<? super C10621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentifyInterceptFileStorageHandler.this.clearIdentifyIntercepts(this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$getTransferIdentifyEvent$1 */
    /* JADX INFO: compiled from: IdentifyInterceptFileStorageHandler.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler", m2735f = "IdentifyInterceptFileStorageHandler.kt", m2736i = {0, 1, 1, 1, 1}, m2737l = {21, 36}, m2738m = "getTransferIdentifyEvent", m2739n = {"this", "this", "event", "identifyEventUserProperties", "eventPath"}, m2740s = {"L$0", "L$0", "L$1", "L$2", "L$4"})
    static final class C10631 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C10631(Continuation<? super C10631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentifyInterceptFileStorageHandler.this.getTransferIdentifyEvent(this);
        }
    }

    public IdentifyInterceptFileStorageHandler(EventsFileStorage storage, Logger logger, Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.storage = storage;
        this.logger = logger;
        this.amplitude = amplitude;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a6 A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:13:0x003c, B:39:0x009b, B:41:0x00a6, B:36:0x0086, B:42:0x00ad, B:44:0x00bc, B:46:0x00c5, B:57:0x00ff, B:61:0x010b, B:60:0x0108), top: B:78:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:13:0x003c, B:39:0x009b, B:41:0x00a6, B:36:0x0086, B:42:0x00ad, B:44:0x00bc, B:46:0x00c5, B:57:0x00ff, B:61:0x010b, B:60:0x0108), top: B:78:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0098 -> B:39:0x009b). Please report as a decompilation issue!!! */
    @Override // com.amplitude.core.platform.intercept.IdentifyInterceptStorageHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getTransferIdentifyEvent(kotlin.coroutines.Continuation<? super com.amplitude.core.events.BaseEvent> r14) {
        /*
            Method dump skipped, instruction units count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler.getTransferIdentifyEvent(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.amplitude.core.platform.intercept.IdentifyInterceptStorageHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object clearIdentifyIntercepts(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler.C10621
            if (r0 == 0) goto L14
            r0 = r5
            com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1 r0 = (com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler.C10621) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1 r0 = new com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$clearIdentifyIntercepts$1
            r0.<init>(r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r0 = r0.L$0
            com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler r0 = (com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.io.FileNotFoundException -> L2e
            goto L49
        L2e:
            r5 = move-exception
            goto L71
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r5)
            com.amplitude.core.utilities.EventsFileStorage r5 = r4.storage     // Catch: java.io.FileNotFoundException -> L6f
            r0.L$0 = r4     // Catch: java.io.FileNotFoundException -> L6f
            r0.label = r3     // Catch: java.io.FileNotFoundException -> L6f
            java.lang.Object r5 = r5.rollover(r0)     // Catch: java.io.FileNotFoundException -> L6f
            if (r5 != r1) goto L48
            return r1
        L48:
            r0 = r4
        L49:
            com.amplitude.core.utilities.EventsFileStorage r5 = r0.storage
            java.util.List r5 = r5.readEventsContent()
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L58
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L58:
            java.util.Iterator r5 = r5.iterator()
        L5c:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L6c
            java.lang.Object r1 = r5.next()
            java.lang.String r1 = (java.lang.String) r1
            r0.removeFile(r1)
            goto L5c
        L6c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L6f:
            r5 = move-exception
            r0 = r4
        L71:
            java.lang.String r5 = r5.getMessage()
            if (r5 != 0) goto L78
            goto L83
        L78:
            com.amplitude.common.Logger r0 = r0.logger
            java.lang.String r1 = "Event storage file not found: "
            java.lang.String r5 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r5)
            r0.warn(r5)
        L83:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler.clearIdentifyIntercepts(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$removeFile$1 */
    /* JADX INFO: compiled from: IdentifyInterceptFileStorageHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptFileStorageHandler$removeFile$1", m2735f = "IdentifyInterceptFileStorageHandler.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10641 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $file;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10641(String str, Continuation<? super C10641> continuation) {
            super(2, continuation);
            this.$file = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IdentifyInterceptFileStorageHandler.this.new C10641(this.$file, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10641) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IdentifyInterceptFileStorageHandler.this.storage.removeFile(this.$file);
            return Unit.INSTANCE;
        }
    }

    private final void removeFile(String file) {
        BuildersKt__Builders_commonKt.launch$default(this.amplitude.getAmplitudeScope(), this.amplitude.getStorageIODispatcher(), null, new C10641(file, null), 2, null);
    }
}
