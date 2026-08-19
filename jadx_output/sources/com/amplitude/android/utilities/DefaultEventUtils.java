package com.amplitude.android.utilities;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.amplitude.android.Amplitude;
import com.amplitude.core.Storage;
import com.amplitude.core.events.EventOptions;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultEventUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m2722d2 = {"Lcom/amplitude/android/utilities/DefaultEventUtils;", "", "amplitude", "Lcom/amplitude/android/Amplitude;", "(Lcom/amplitude/android/Amplitude;)V", "getReferrer", "Landroid/net/Uri;", "activity", "Landroid/app/Activity;", "trackAppBackgroundedEvent", "", "trackAppOpenedEvent", "packageInfo", "Landroid/content/pm/PackageInfo;", "isFromBackground", "", "trackAppUpdatedInstalledEvent", "trackDeepLinkOpenedEvent", "trackScreenViewedEvent", "EventProperties", "EventTypes", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DefaultEventUtils {
    private final Amplitude amplitude;

    /* JADX INFO: compiled from: DefaultEventUtils.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;", "", "()V", "APPLICATION_BACKGROUNDED", "", "APPLICATION_INSTALLED", "APPLICATION_OPENED", "APPLICATION_UPDATED", "DEEP_LINK_OPENED", "SCREEN_VIEWED", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class EventTypes {
        public static final String APPLICATION_BACKGROUNDED = "[Amplitude] Application Backgrounded";
        public static final String APPLICATION_INSTALLED = "[Amplitude] Application Installed";
        public static final String APPLICATION_OPENED = "[Amplitude] Application Opened";
        public static final String APPLICATION_UPDATED = "[Amplitude] Application Updated";
        public static final String DEEP_LINK_OPENED = "[Amplitude] Deep Link Opened";
        public static final EventTypes INSTANCE = new EventTypes();
        public static final String SCREEN_VIEWED = "[Amplitude] Screen Viewed";

        private EventTypes() {
        }
    }

    public DefaultEventUtils(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.amplitude = amplitude;
    }

    /* JADX INFO: compiled from: DefaultEventUtils.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;", "", "()V", "BUILD", "", "FROM_BACKGROUND", "LINK_REFERRER", "LINK_URL", "PREVIOUS_BUILD", "PREVIOUS_VERSION", "SCREEN_NAME", "VERSION", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class EventProperties {
        public static final String BUILD = "[Amplitude] Build";
        public static final String FROM_BACKGROUND = "[Amplitude] From Background";
        public static final EventProperties INSTANCE = new EventProperties();
        public static final String LINK_REFERRER = "[Amplitude] Link Referrer";
        public static final String LINK_URL = "[Amplitude] Link URL";
        public static final String PREVIOUS_BUILD = "[Amplitude] Previous Build";
        public static final String PREVIOUS_VERSION = "[Amplitude] Previous Version";
        public static final String SCREEN_NAME = "[Amplitude] Screen Name";
        public static final String VERSION = "[Amplitude] Version";

        private EventProperties() {
        }
    }

    public final void trackAppUpdatedInstalledEvent(PackageInfo packageInfo) {
        Intrinsics.checkNotNullParameter(packageInfo, "packageInfo");
        String str = packageInfo.versionName;
        String string = DefaultEventUtilsKt.getVersionCode(packageInfo).toString();
        Storage storage = this.amplitude.getStorage();
        String str2 = storage.read(Storage.Constants.APP_VERSION);
        String str3 = storage.read(Storage.Constants.APP_BUILD);
        if (str3 == null) {
            com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.APPLICATION_INSTALLED, MapsKt.mapOf(TuplesKt.m2729to(EventProperties.VERSION, str), TuplesKt.m2729to(EventProperties.BUILD, string)), (EventOptions) null, 4, (Object) null);
        } else if (!Intrinsics.areEqual(string, str3)) {
            com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.APPLICATION_UPDATED, MapsKt.mapOf(TuplesKt.m2729to(EventProperties.PREVIOUS_VERSION, str2), TuplesKt.m2729to(EventProperties.PREVIOUS_BUILD, str3), TuplesKt.m2729to(EventProperties.VERSION, str), TuplesKt.m2729to(EventProperties.BUILD, string)), (EventOptions) null, 4, (Object) null);
        }
        BuildersKt__Builders_commonKt.launch$default(this.amplitude.getAmplitudeScope(), this.amplitude.getStorageIODispatcher(), null, new C10531(storage, str, string, null), 2, null);
    }

    /* JADX INFO: renamed from: com.amplitude.android.utilities.DefaultEventUtils$trackAppUpdatedInstalledEvent$1 */
    /* JADX INFO: compiled from: DefaultEventUtils.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.utilities.DefaultEventUtils$trackAppUpdatedInstalledEvent$1", m2735f = "DefaultEventUtils.kt", m2736i = {}, m2737l = {67, 68}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10531 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $currentBuild;
        final /* synthetic */ String $currentVersion;
        final /* synthetic */ Storage $storage;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10531(Storage storage, String str, String str2, Continuation<? super C10531> continuation) {
            super(2, continuation);
            this.$storage = storage;
            this.$currentVersion = str;
            this.$currentBuild = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10531(this.$storage, this.$currentVersion, this.$currentBuild, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10531) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Storage storage = this.$storage;
                Storage.Constants constants = Storage.Constants.APP_VERSION;
                String currentVersion = this.$currentVersion;
                Intrinsics.checkNotNullExpressionValue(currentVersion, "currentVersion");
                this.label = 1;
                if (storage.write(constants, currentVersion, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 2;
            if (this.$storage.write(Storage.Constants.APP_BUILD, this.$currentBuild, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final void trackAppOpenedEvent(PackageInfo packageInfo, boolean isFromBackground) {
        Intrinsics.checkNotNullParameter(packageInfo, "packageInfo");
        com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.APPLICATION_OPENED, MapsKt.mapOf(TuplesKt.m2729to(EventProperties.FROM_BACKGROUND, Boolean.valueOf(isFromBackground)), TuplesKt.m2729to(EventProperties.VERSION, packageInfo.versionName), TuplesKt.m2729to(EventProperties.BUILD, DefaultEventUtilsKt.getVersionCode(packageInfo).toString())), (EventOptions) null, 4, (Object) null);
    }

    public final void trackAppBackgroundedEvent() {
        com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.APPLICATION_BACKGROUNDED, (Map) null, (EventOptions) null, 6, (Object) null);
    }

    public final void trackDeepLinkOpenedEvent(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intent intent = activity.getIntent();
        if (intent == null) {
            return;
        }
        Uri referrer = getReferrer(activity);
        String string = referrer == null ? null : referrer.toString();
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        String string2 = data.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "uri.toString()");
        com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.DEEP_LINK_OPENED, MapsKt.mapOf(TuplesKt.m2729to(EventProperties.LINK_URL, string2), TuplesKt.m2729to(EventProperties.LINK_REFERRER, string)), (EventOptions) null, 4, (Object) null);
    }

    public final void trackScreenViewedEvent(Activity activity) {
        CharSequence charSequenceLoadLabel;
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            PackageManager packageManager = activity.getPackageManager();
            String str = null;
            ActivityInfo activityInfo = packageManager == null ? null : packageManager.getActivityInfo(activity.getComponentName(), 128);
            String string = (activityInfo == null || (charSequenceLoadLabel = activityInfo.loadLabel(packageManager)) == null) ? null : charSequenceLoadLabel.toString();
            if (string != null) {
                str = string;
            } else if (activityInfo != null) {
                str = activityInfo.name;
            }
            com.amplitude.core.Amplitude.track$default(this.amplitude, EventTypes.SCREEN_VIEWED, MapsKt.mapOf(TuplesKt.m2729to(EventProperties.SCREEN_NAME, str)), (EventOptions) null, 4, (Object) null);
        } catch (PackageManager.NameNotFoundException e) {
            this.amplitude.getLogger().error(Intrinsics.stringPlus("Failed to get activity info: ", e));
        } catch (Exception e2) {
            this.amplitude.getLogger().error(Intrinsics.stringPlus("Failed to track screen viewed event: ", e2));
        }
    }

    private final Uri getReferrer(Activity activity) {
        return activity.getReferrer();
    }
}
