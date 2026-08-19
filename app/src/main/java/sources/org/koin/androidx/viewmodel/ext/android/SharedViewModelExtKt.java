package org.koin.androidx.viewmodel.ext.android;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.androidx.viewmodel.ViewModelOwner;
import org.koin.androidx.viewmodel.scope.ScopeExtKt;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: SharedViewModelExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001aK\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000b¢\u0006\u0002\u0010\f\u001aE\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\b\n\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\r\u001aL\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00010\u000f\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000b\u001aF\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00010\u000f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0016\b\n\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, m2722d2 = {"getSharedViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/Fragment;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "clazz", "Lkotlin/reflect/KClass;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "sharedViewModel", "Lkotlin/Lazy;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class SharedViewModelExtKt {
    public static /* synthetic */ Lazy sharedViewModel$default(Fragment fragment, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C48491(fragment, qualifier, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.androidx.viewmodel.ext.android.SharedViewModelExtKt$sharedViewModel$1 */
    /* JADX INFO: compiled from: SharedViewModelExt.kt */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", "Landroidx/lifecycle/ViewModel;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48491<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ Fragment $this_sharedViewModel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48491(Fragment fragment, Qualifier qualifier, Function0<? extends DefinitionParameters> function0) {
            super(0);
            this.$this_sharedViewModel = fragment;
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModel invoke() {
            Fragment fragment = this.$this_sharedViewModel;
            Qualifier qualifier = this.$qualifier;
            Function0<DefinitionParameters> function0 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return SharedViewModelExtKt.getSharedViewModel(fragment, qualifier, Reflection.getOrCreateKotlinClass(ViewModel.class), function0);
        }
    }

    public static final /* synthetic */ Lazy sharedViewModel(Fragment fragment, Qualifier qualifier, Function0 function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C48491(fragment, qualifier, function0));
    }

    public static /* synthetic */ Lazy sharedViewModel$default(Fragment fragment, Qualifier qualifier, KClass kClass, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return sharedViewModel(fragment, qualifier, kClass, function0);
    }

    public static final <T extends ViewModel> Lazy<T> sharedViewModel(final Fragment fragment, final Qualifier qualifier, final KClass<T> clazz, final Function0<? extends DefinitionParameters> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: org.koin.androidx.viewmodel.ext.android.SharedViewModelExtKt.sharedViewModel.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModel invoke() {
                return SharedViewModelExtKt.getSharedViewModel(fragment, qualifier, clazz, function0);
            }
        });
    }

    public static /* synthetic */ ViewModel getSharedViewModel$default(Fragment fragment, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getSharedViewModel(fragment, qualifier, Reflection.getOrCreateKotlinClass(ViewModel.class), function0);
    }

    public static final /* synthetic */ ViewModel getSharedViewModel(Fragment fragment, Qualifier qualifier, Function0 function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getSharedViewModel(fragment, qualifier, Reflection.getOrCreateKotlinClass(ViewModel.class), function0);
    }

    public static /* synthetic */ ViewModel getSharedViewModel$default(Fragment fragment, Qualifier qualifier, KClass kClass, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return getSharedViewModel(fragment, qualifier, kClass, function0);
    }

    public static final <T extends ViewModel> T getSharedViewModel(final Fragment fragment, Qualifier qualifier, KClass<T> clazz, Function0<? extends DefinitionParameters> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) ScopeExtKt.getViewModel(ComponentCallbackExtKt.getDefaultScope(fragment), qualifier, null, new Function0<ViewModelOwner>() { // from class: org.koin.androidx.viewmodel.ext.android.SharedViewModelExtKt.getSharedViewModel.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ViewModelOwner invoke() {
                ViewModelOwner.Companion companion = ViewModelOwner.INSTANCE;
                FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
                return companion.from(fragmentActivityRequireActivity);
            }
        }, clazz, function0);
    }
}
