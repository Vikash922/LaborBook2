package com.laborbook.base;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.laborbook.base.analytics.Analytics;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: BaseActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J=\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102(\b\u0002\u0010\u0011\u001a\"\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0014j\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\u0012¢\u0006\u0002\u0010\u0015J=\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102(\b\u0002\u0010\u0011\u001a\"\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0014j\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u0001`\u0012¢\u0006\u0002\u0010\u0015R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, m2722d2 = {"Lcom/laborbook/base/BaseActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "recordClickEvent", "eventName", "", "hashMap", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;)V", "triggerSystemEvent", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public class BaseActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private final Lazy analytics;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseActivity() {
        final BaseActivity baseActivity = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.analytics = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Analytics>() { // from class: com.laborbook.base.BaseActivity$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                ComponentCallbacks componentCallbacks = baseActivity;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier, objArr);
            }
        });
    }

    public final Analytics getAnalytics() {
        return (Analytics) this.analytics.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    /* JADX INFO: renamed from: com.laborbook.base.BaseActivity$recordClickEvent$1 */
    /* JADX INFO: compiled from: BaseActivity.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.BaseActivity$recordClickEvent$1", m2735f = "BaseActivity.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35681(String str, HashMap<String, Object> map, Continuation<? super C35681> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BaseActivity.this.new C35681(this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            BaseActivity.this.getAnalytics().logEvent(this.$eventName, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), this.$hashMap);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void recordClickEvent$default(BaseActivity baseActivity, String str, HashMap map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: recordClickEvent");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        baseActivity.recordClickEvent(str, map);
    }

    public final void recordClickEvent(String eventName, HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35681(eventName, hashMap, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.base.BaseActivity$triggerSystemEvent$1 */
    /* JADX INFO: compiled from: BaseActivity.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.BaseActivity$triggerSystemEvent$1", m2735f = "BaseActivity.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35691(String str, HashMap<String, Object> map, Continuation<? super C35691> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BaseActivity.this.new C35691(this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35691) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            BaseActivity.this.getAnalytics().logEvent(this.$eventName, Analytics.SYSTEM, CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), this.$hashMap);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void triggerSystemEvent$default(BaseActivity baseActivity, String str, HashMap map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: triggerSystemEvent");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        baseActivity.triggerSystemEvent(str, map);
    }

    public final void triggerSystemEvent(String eventName, HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35691(eventName, hashMap, null), 2, null);
    }
}
