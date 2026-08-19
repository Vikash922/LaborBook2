package com.amplitude.android.plugins;

import com.amplitude.android.Configuration;
import com.amplitude.android.utilities.AndroidNetworkConnectivityChecker;
import com.amplitude.android.utilities.AndroidNetworkListener;
import com.amplitude.core.Amplitude;
import com.amplitude.core.platform.Plugin;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidNetworkConnectivityCheckerPlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u001b\u001a\u00020\u001aH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "networkConnectivityChecker", "Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;", "getNetworkConnectivityChecker$android_release", "()Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;", "setNetworkConnectivityChecker$android_release", "(Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;)V", "networkListener", "Lcom/amplitude/android/utilities/AndroidNetworkListener;", "getNetworkListener$android_release", "()Lcom/amplitude/android/utilities/AndroidNetworkListener;", "setNetworkListener$android_release", "(Lcom/amplitude/android/utilities/AndroidNetworkListener;)V", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "setup", "", "teardown", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidNetworkConnectivityCheckerPlugin implements Plugin {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Void Disabled = null;
    public Amplitude amplitude;
    public AndroidNetworkConnectivityChecker networkConnectivityChecker;
    public AndroidNetworkListener networkListener;
    private final Plugin.Type type = Plugin.Type.Before;

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }

    @Override // com.amplitude.core.platform.Plugin
    public Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    public final AndroidNetworkConnectivityChecker getNetworkConnectivityChecker$android_release() {
        AndroidNetworkConnectivityChecker androidNetworkConnectivityChecker = this.networkConnectivityChecker;
        if (androidNetworkConnectivityChecker != null) {
            return androidNetworkConnectivityChecker;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkConnectivityChecker");
        return null;
    }

    public final void setNetworkConnectivityChecker$android_release(AndroidNetworkConnectivityChecker androidNetworkConnectivityChecker) {
        Intrinsics.checkNotNullParameter(androidNetworkConnectivityChecker, "<set-?>");
        this.networkConnectivityChecker = androidNetworkConnectivityChecker;
    }

    public final AndroidNetworkListener getNetworkListener$android_release() {
        AndroidNetworkListener androidNetworkListener = this.networkListener;
        if (androidNetworkListener != null) {
            return androidNetworkListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkListener");
        return null;
    }

    public final void setNetworkListener$android_release(AndroidNetworkListener androidNetworkListener) {
        Intrinsics.checkNotNullParameter(androidNetworkListener, "<set-?>");
        this.networkListener = androidNetworkListener;
    }

    /* JADX INFO: compiled from: AndroidNetworkConnectivityCheckerPlugin.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidNetworkConnectivityCheckerPlugin$Companion;", "", "()V", "Disabled", "", "getDisabled", "()Ljava/lang/Void;", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Void getDisabled() {
            return AndroidNetworkConnectivityCheckerPlugin.Disabled;
        }
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setup(final Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        amplitude.getLogger().debug("Installing AndroidNetworkConnectivityPlugin, offline feature should be supported.");
        setNetworkConnectivityChecker$android_release(new AndroidNetworkConnectivityChecker(((Configuration) amplitude.getConfiguration()).getContext(), amplitude.getLogger()));
        BuildersKt__Builders_commonKt.launch$default(amplitude.getAmplitudeScope(), amplitude.getStorageIODispatcher(), null, new C10481(amplitude, this, null), 2, null);
        AndroidNetworkListener.NetworkChangeCallback networkChangeCallback = new AndroidNetworkListener.NetworkChangeCallback() { // from class: com.amplitude.android.plugins.AndroidNetworkConnectivityCheckerPlugin$setup$networkChangeHandler$1
            @Override // com.amplitude.android.utilities.AndroidNetworkListener.NetworkChangeCallback
            public void onNetworkAvailable() {
                amplitude.getLogger().debug("AndroidNetworkListener, onNetworkAvailable.");
                amplitude.getConfiguration().setOffline(false);
                amplitude.flush();
            }

            @Override // com.amplitude.android.utilities.AndroidNetworkListener.NetworkChangeCallback
            public void onNetworkUnavailable() {
                amplitude.getLogger().debug("AndroidNetworkListener, onNetworkUnavailable.");
                amplitude.getConfiguration().setOffline(true);
            }
        };
        setNetworkListener$android_release(new AndroidNetworkListener(((Configuration) amplitude.getConfiguration()).getContext()));
        getNetworkListener$android_release().setNetworkChangeCallback(networkChangeCallback);
        getNetworkListener$android_release().startListening();
    }

    /* JADX INFO: renamed from: com.amplitude.android.plugins.AndroidNetworkConnectivityCheckerPlugin$setup$1 */
    /* JADX INFO: compiled from: AndroidNetworkConnectivityCheckerPlugin.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.plugins.AndroidNetworkConnectivityCheckerPlugin$setup$1", m2735f = "AndroidNetworkConnectivityCheckerPlugin.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Amplitude $amplitude;
        int label;
        final /* synthetic */ AndroidNetworkConnectivityCheckerPlugin this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10481(Amplitude amplitude, AndroidNetworkConnectivityCheckerPlugin androidNetworkConnectivityCheckerPlugin, Continuation<? super C10481> continuation) {
            super(2, continuation);
            this.$amplitude = amplitude;
            this.this$0 = androidNetworkConnectivityCheckerPlugin;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10481(this.$amplitude, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10481) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$amplitude.getConfiguration().setOffline(Boxing.boxBoolean(!this.this$0.getNetworkConnectivityChecker$android_release().isConnected()));
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.platform.Plugin
    public void teardown() {
        getNetworkListener$android_release().stopListening();
    }
}
