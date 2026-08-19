package com.amplitude.android;

import com.amplitude.android.plugins.AndroidContextPlugin;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.p009id.IdentityConfiguration;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
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

/* JADX INFO: compiled from: Amplitude.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0094@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u000eH\u0014J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\bJ\b\u0010\u0016\u001a\u00020\fH\u0002J\b\u0010\u0017\u001a\u00020\u0001H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, m2722d2 = {"Lcom/amplitude/android/Amplitude;", "Lcom/amplitude/core/Amplitude;", "configuration", "Lcom/amplitude/android/Configuration;", "(Lcom/amplitude/android/Configuration;)V", "androidContextPlugin", "Lcom/amplitude/android/plugins/AndroidContextPlugin;", "sessionId", "", "getSessionId", "()J", "buildInternal", "", "identityConfiguration", "Lcom/amplitude/id/IdentityConfiguration;", "(Lcom/amplitude/id/IdentityConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createIdentityConfiguration", "createTimeline", "Lcom/amplitude/android/Timeline;", "onEnterForeground", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "onExitForeground", "registerShutdownHook", "reset", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Amplitude extends com.amplitude.core.Amplitude {
    public static final String DUMMY_ENTER_FOREGROUND_EVENT = "dummy_enter_foreground";
    public static final String DUMMY_EXIT_FOREGROUND_EVENT = "dummy_exit_foreground";
    public static final String END_SESSION_EVENT = "session_end";
    public static final String START_SESSION_EVENT = "session_start";
    private AndroidContextPlugin androidContextPlugin;

    /* JADX INFO: renamed from: com.amplitude.android.Amplitude$buildInternal$1 */
    /* JADX INFO: compiled from: Amplitude.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Amplitude", m2735f = "Amplitude.kt", m2736i = {0, 0, 1, 1}, m2737l = {51, 54}, m2738m = "buildInternal$suspendImpl", m2739n = {"this", "identityConfiguration", "this", "identityConfiguration"}, m2740s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C10241 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10241(Continuation<? super C10241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Amplitude.buildInternal$suspendImpl(Amplitude.this, (IdentityConfiguration) null, (Continuation) this);
        }
    }

    @Override // com.amplitude.core.Amplitude
    protected Object buildInternal(IdentityConfiguration identityConfiguration, Continuation<? super Unit> continuation) {
        return buildInternal$suspendImpl(this, identityConfiguration, (Continuation) continuation);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Amplitude(Configuration configuration) {
        super(configuration);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        registerShutdownHook();
    }

    public final long getSessionId() {
        return ((Timeline) getTimeline()).getSessionId();
    }

    @Override // com.amplitude.core.Amplitude
    public Timeline createTimeline() {
        Timeline timeline = new Timeline(getConfiguration().getSessionId());
        timeline.setAmplitude(this);
        return timeline;
    }

    @Override // com.amplitude.core.Amplitude
    protected IdentityConfiguration createIdentityConfiguration() {
        Configuration configuration = (Configuration) getConfiguration();
        return new IdentityConfiguration(configuration.getInstanceName(), configuration.getApiKey(), null, configuration.getIdentityStorageProvider(), configuration.getContext().getDir(Intrinsics.stringPlus("amplitude-kotlin-", configuration.getInstanceName()), 0), configuration.getLoggerProvider().getLogger(this), 4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object buildInternal$suspendImpl(com.amplitude.android.Amplitude r6, com.amplitude.p009id.IdentityConfiguration r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.Amplitude.buildInternal$suspendImpl(com.amplitude.android.Amplitude, com.amplitude.id.IdentityConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.amplitude.android.Amplitude$reset$1 */
    /* JADX INFO: compiled from: Amplitude.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Amplitude$reset$1", m2735f = "Amplitude.kt", m2736i = {}, m2737l = {86}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10281(Continuation<? super C10281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Amplitude.this.new C10281(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Amplitude.this.isBuilt().await(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            AndroidContextPlugin androidContextPlugin = null;
            Amplitude.this.getIdContainer().getIdentityManager().editIdentity().setDeviceId(null).commit();
            AndroidContextPlugin androidContextPlugin2 = Amplitude.this.androidContextPlugin;
            if (androidContextPlugin2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidContextPlugin");
            } else {
                androidContextPlugin = androidContextPlugin2;
            }
            androidContextPlugin.initializeDeviceId((Configuration) Amplitude.this.getConfiguration());
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.Amplitude
    public com.amplitude.core.Amplitude reset() {
        setUserId(null);
        BuildersKt__Builders_commonKt.launch$default(getAmplitudeScope(), getAmplitudeDispatcher(), null, new C10281(null), 2, null);
        return this;
    }

    public final void onEnterForeground(long timestamp) {
        BaseEvent baseEvent = new BaseEvent();
        baseEvent.setEventType(DUMMY_ENTER_FOREGROUND_EVENT);
        baseEvent.setTimestamp(Long.valueOf(timestamp));
        getTimeline().process(baseEvent);
    }

    public final void onExitForeground(long timestamp) {
        BaseEvent baseEvent = new BaseEvent();
        baseEvent.setEventType(DUMMY_EXIT_FOREGROUND_EVENT);
        baseEvent.setTimestamp(Long.valueOf(timestamp));
        getTimeline().process(baseEvent);
        BuildersKt__Builders_commonKt.launch$default(getAmplitudeScope(), getAmplitudeDispatcher(), null, new C10261(null), 2, null);
    }

    /* JADX INFO: renamed from: com.amplitude.android.Amplitude$onExitForeground$1 */
    /* JADX INFO: compiled from: Amplitude.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Amplitude$onExitForeground$1", m2735f = "Amplitude.kt", m2736i = {}, m2737l = {107}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10261(Continuation<? super C10261> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Amplitude.this.new C10261(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Amplitude.this.isBuilt().await(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Configuration) Amplitude.this.getConfiguration()).getFlushEventsOnClose()) {
                Amplitude.this.flush();
            }
            return Unit.INSTANCE;
        }
    }

    private final void registerShutdownHook() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amplitude.android.Amplitude.registerShutdownHook.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ((Timeline) Amplitude.this.getTimeline()).stop$android_release();
            }
        });
    }
}
