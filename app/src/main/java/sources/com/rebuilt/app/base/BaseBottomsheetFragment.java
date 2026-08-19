package com.rebuilt.app.base;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.viewbinding.ViewBinding;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.rebuilt.app.base.analytics.Analytics;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.base.navigator.FragmentNavigator;
import com.rebuilt.app.base.navigator.ModuleNavigator;
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

/* JADX INFO: compiled from: BaseBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010%\u001a\u0004\u0018\u00018\u00002\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+H&¢\u0006\u0002\u0010,J&\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u001a\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020.2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\b\u00102\u001a\u000200H\u0016J\b\u00103\u001a\u000200H\u0016J7\u00104\u001a\u0002002(\b\u0002\u00105\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u000108j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u0001`6H\u0002¢\u0006\u0002\u00109J=\u00104\u001a\u0002002\u0006\u0010:\u001a\u00020\r2(\b\u0002\u00105\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u000108j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u0001`6¢\u0006\u0002\u0010;J=\u0010<\u001a\u0002002\u0006\u0010:\u001a\u00020\r2(\b\u0002\u00105\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u000108j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u000207\u0018\u0001`6¢\u0006\u0002\u0010;R\u001e\u0010\u0006\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0016\u001a\u00020\u00178FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001b\u001a\u00020\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0015\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0015\u001a\u0004\b\"\u0010#¨\u0006="}, m2722d2 = {"Lcom/laborbook/base/BaseBottomsheetFragment;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "setBinding", "(Landroidx/viewbinding/ViewBinding;)V", "Landroidx/viewbinding/ViewBinding;", "screenName", "", "getScreenName", "()Ljava/lang/String;", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "Lkotlin/Lazy;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "fragmentNavigator", "Lcom/laborbook/base/navigator/FragmentNavigator;", "getFragmentNavigator", "()Lcom/laborbook/base/navigator/FragmentNavigator;", "fragmentNavigator$delegate", "moduleNavigator", "Lcom/laborbook/base/navigator/ModuleNavigator;", "getModuleNavigator", "()Lcom/laborbook/base/navigator/ModuleNavigator;", "moduleNavigator$delegate", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;", "onCreateView", "Landroid/view/View;", "onViewCreated", "", "view", "onDestroyView", "onResume", "triggerImpressionEvent", "hashMap", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/util/HashMap;)V", "eventName", "(Ljava/lang/String;Ljava/util/HashMap;)V", "recordClickEvent", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class BaseBottomsheetFragment<VB extends ViewBinding> extends BottomSheetDialogFragment {

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private final Lazy analytics;
    private VB binding;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX INFO: renamed from: fragmentNavigator$delegate, reason: from kotlin metadata */
    private final Lazy fragmentNavigator;

    /* JADX INFO: renamed from: moduleNavigator$delegate, reason: from kotlin metadata */
    private final Lazy moduleNavigator;

    public abstract String getScreenName();

    public abstract VB getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState);

    /* JADX WARN: Multi-variable type inference failed */
    public BaseBottomsheetFragment() {
        final BaseBottomsheetFragment<VB> baseBottomsheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.analytics = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Analytics>() { // from class: com.rebuilt.app.base.BaseBottomsheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                ComponentCallbacks componentCallbacks = baseBottomsheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier, objArr);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr2 = 0 == true ? 1 : 0;
        final Object[] objArr3 = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyMode2, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.base.BaseBottomsheetFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                ComponentCallbacks componentCallbacks = baseBottomsheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), objArr2, objArr3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode3 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr4 = 0 == true ? 1 : 0;
        final Object[] objArr5 = 0 == true ? 1 : 0;
        this.fragmentNavigator = LazyKt.lazy(lazyThreadSafetyMode3, (Function0) new Function0<FragmentNavigator>() { // from class: com.rebuilt.app.base.BaseBottomsheetFragment$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.navigator.FragmentNavigator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final FragmentNavigator invoke() {
                ComponentCallbacks componentCallbacks = baseBottomsheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(FragmentNavigator.class), objArr4, objArr5);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode4 = LazyThreadSafetyMode.SYNCHRONIZED;
        final Object[] objArr6 = 0 == true ? 1 : 0;
        final Object[] objArr7 = 0 == true ? 1 : 0;
        this.moduleNavigator = LazyKt.lazy(lazyThreadSafetyMode4, (Function0) new Function0<ModuleNavigator>() { // from class: com.rebuilt.app.base.BaseBottomsheetFragment$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.rebuilt.app.base.navigator.ModuleNavigator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ModuleNavigator invoke() {
                ComponentCallbacks componentCallbacks = baseBottomsheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(ModuleNavigator.class), objArr6, objArr7);
            }
        });
    }

    public final VB getBinding() {
        return this.binding;
    }

    public final void setBinding(VB vb) {
        this.binding = vb;
    }

    public final Analytics getAnalytics() {
        return (Analytics) this.analytics.getValue();
    }

    public final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    public final FragmentNavigator getFragmentNavigator() {
        return (FragmentNavigator) this.fragmentNavigator.getValue();
    }

    public final ModuleNavigator getModuleNavigator() {
        return (ModuleNavigator) this.moduleNavigator.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        VB vb = (VB) getViewBinding(inflater, container, savedInstanceState);
        this.binding = vb;
        if (vb != null) {
            return vb.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        triggerImpressionEvent$default(this, null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void triggerImpressionEvent$default(BaseBottomsheetFragment baseBottomsheetFragment, HashMap map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: triggerImpressionEvent");
        }
        if ((i & 1) != 0) {
            map = null;
        }
        baseBottomsheetFragment.triggerImpressionEvent(map);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.base.BaseBottomsheetFragment$triggerImpressionEvent$1 */
    /* JADX INFO: compiled from: BaseBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.base.BaseBottomsheetFragment$triggerImpressionEvent$1", m2735f = "BaseBottomsheetFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35711 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;
        final /* synthetic */ BaseBottomsheetFragment<VB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35711(BaseBottomsheetFragment<VB> baseBottomsheetFragment, HashMap<String, Object> map, Continuation<? super C35711> continuation) {
            super(2, continuation);
            this.this$0 = baseBottomsheetFragment;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C35711(this.this$0, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                this.this$0.getAnalytics().logEvent(this.this$0.getScreenName(), "impression", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), this.$hashMap);
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    private final void triggerImpressionEvent(HashMap<String, Object> hashMap) {
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35711(this, hashMap, null), 2, null);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void triggerImpressionEvent$default(BaseBottomsheetFragment baseBottomsheetFragment, String str, HashMap map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: triggerImpressionEvent");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        baseBottomsheetFragment.triggerImpressionEvent(str, map);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.base.BaseBottomsheetFragment$triggerImpressionEvent$2 */
    /* JADX INFO: compiled from: BaseBottomsheetFragment.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.base.BaseBottomsheetFragment$triggerImpressionEvent$2", m2735f = "BaseBottomsheetFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35722 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;
        final /* synthetic */ BaseBottomsheetFragment<VB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35722(BaseBottomsheetFragment<VB> baseBottomsheetFragment, String str, HashMap<String, Object> map, Continuation<? super C35722> continuation) {
            super(2, continuation);
            this.this$0 = baseBottomsheetFragment;
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C35722(this.this$0, this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35722) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                this.this$0.getAnalytics().logEvent(this.$eventName, "impression", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), this.$hashMap);
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    public final void triggerImpressionEvent(String eventName, HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35722(this, eventName, hashMap, null), 2, null);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void recordClickEvent$default(BaseBottomsheetFragment baseBottomsheetFragment, String str, HashMap map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: recordClickEvent");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        baseBottomsheetFragment.recordClickEvent(str, map);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.base.BaseBottomsheetFragment$recordClickEvent$1 */
    /* JADX INFO: compiled from: BaseBottomsheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.base.BaseBottomsheetFragment$recordClickEvent$1", m2735f = "BaseBottomsheetFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ HashMap<String, Object> $hashMap;
        int label;
        final /* synthetic */ BaseBottomsheetFragment<VB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35701(BaseBottomsheetFragment<VB> baseBottomsheetFragment, String str, HashMap<String, Object> map, Continuation<? super C35701> continuation) {
            super(2, continuation);
            this.this$0 = baseBottomsheetFragment;
            this.$eventName = str;
            this.$hashMap = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C35701(this.this$0, this.$eventName, this.$hashMap, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                this.this$0.getAnalytics().logEvent(this.$eventName, "click", CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), this.$hashMap);
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    public final void recordClickEvent(String eventName, HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        try {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new C35701(this, eventName, hashMap, null), 2, null);
        } catch (Exception unused) {
        }
    }
}
