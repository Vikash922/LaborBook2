package org.koin.androidx.viewmodel.ext.android;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
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
import org.koin.androidx.viewmodel.koin.KoinExtKt;
import org.koin.androidx.viewmodel.scope.ScopeExtKt;
import org.koin.core.context.GlobalContext;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: SavedStateRegistryOwnerExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a_\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00010\u000b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\u0004\u0018\u0001`\u000e¢\u0006\u0002\u0010\u000f\u001aY\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\b\n\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t2\u0016\b\n\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\u0004\u0018\u0001`\u000eH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a`\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0012\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00010\u000b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\u0004\u0018\u0001`\u000e\u001aZ\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0012\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\b\n\u0010\u0006\u001a\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\t2\u0016\b\n\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0018\u00010\u0007j\u0004\u0018\u0001`\u000eH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, m2722d2 = {"getStateViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Landroidx/savedstate/SavedStateRegistryOwner;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "state", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", "clazz", "Lkotlin/reflect/KClass;", "parameters", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "(Landroidx/savedstate/SavedStateRegistryOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "stateViewModel", "Lkotlin/Lazy;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class SavedStateRegistryOwnerExtKt {
    public static /* synthetic */ Lazy stateViewModel$default(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 state, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            state = ScopeExtKt.emptyState();
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C48421(savedStateRegistryOwner, qualifier, state, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.androidx.viewmodel.ext.android.SavedStateRegistryOwnerExtKt$stateViewModel$1 */
    /* JADX INFO: compiled from: SavedStateRegistryOwnerExt.kt */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", "Landroidx/lifecycle/ViewModel;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48421<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ Function0<Bundle> $state;
        final /* synthetic */ SavedStateRegistryOwner $this_stateViewModel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48421(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0<Bundle> function0, Function0<? extends DefinitionParameters> function02) {
            super(0);
            this.$this_stateViewModel = savedStateRegistryOwner;
            this.$qualifier = qualifier;
            this.$state = function0;
            this.$parameters = function02;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModel invoke() {
            SavedStateRegistryOwner savedStateRegistryOwner = this.$this_stateViewModel;
            Qualifier qualifier = this.$qualifier;
            Function0<Bundle> function0 = this.$state;
            Function0<DefinitionParameters> function02 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return SavedStateRegistryOwnerExtKt.getStateViewModel(savedStateRegistryOwner, qualifier, function0, Reflection.getOrCreateKotlinClass(ViewModel.class), function02);
        }
    }

    public static final /* synthetic */ Lazy stateViewModel(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 state, Function0 function0) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        Intrinsics.needClassReification();
        return LazyKt.lazy(lazyThreadSafetyMode, (Function0) new C48421(savedStateRegistryOwner, qualifier, state, function0));
    }

    public static /* synthetic */ Lazy stateViewModel$default(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 function0, KClass kClass, Function0 function02, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = ScopeExtKt.emptyState();
        }
        if ((i & 8) != 0) {
            function02 = null;
        }
        return stateViewModel(savedStateRegistryOwner, qualifier, function0, kClass, function02);
    }

    public static final <T extends ViewModel> Lazy<T> stateViewModel(final SavedStateRegistryOwner savedStateRegistryOwner, final Qualifier qualifier, final Function0<Bundle> state, final KClass<T> clazz, final Function0<? extends DefinitionParameters> function0) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: org.koin.androidx.viewmodel.ext.android.SavedStateRegistryOwnerExtKt.stateViewModel.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModel invoke() {
                return SavedStateRegistryOwnerExtKt.getStateViewModel(savedStateRegistryOwner, qualifier, state, clazz, function0);
            }
        });
    }

    public static /* synthetic */ ViewModel getStateViewModel$default(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 state, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            state = ScopeExtKt.emptyState();
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getStateViewModel(savedStateRegistryOwner, qualifier, state, Reflection.getOrCreateKotlinClass(ViewModel.class), function0);
    }

    public static final /* synthetic */ ViewModel getStateViewModel(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 state, Function0 function0) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getStateViewModel(savedStateRegistryOwner, qualifier, state, Reflection.getOrCreateKotlinClass(ViewModel.class), function0);
    }

    public static /* synthetic */ ViewModel getStateViewModel$default(SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0 function0, KClass kClass, Function0 function02, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = ScopeExtKt.emptyState();
        }
        if ((i & 8) != 0) {
            function02 = null;
        }
        return getStateViewModel(savedStateRegistryOwner, qualifier, function0, kClass, function02);
    }

    public static final <T extends ViewModel> T getStateViewModel(final SavedStateRegistryOwner savedStateRegistryOwner, Qualifier qualifier, Function0<Bundle> state, KClass<T> clazz, Function0<? extends DefinitionParameters> function0) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (savedStateRegistryOwner instanceof ComponentCallbacks) {
            return (T) ScopeExtKt.getViewModel(ComponentCallbackExtKt.getDefaultScope((ComponentCallbacks) savedStateRegistryOwner), qualifier, state, new Function0<ViewModelOwner>() { // from class: org.koin.androidx.viewmodel.ext.android.SavedStateRegistryOwnerExtKt.getStateViewModel.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final ViewModelOwner invoke() {
                    ViewModelOwner.Companion companion = ViewModelOwner.INSTANCE;
                    SavedStateRegistryOwner savedStateRegistryOwner2 = savedStateRegistryOwner;
                    return companion.from((ViewModelStoreOwner) savedStateRegistryOwner2, savedStateRegistryOwner2);
                }
            }, clazz, function0);
        }
        return (T) KoinExtKt.getViewModel(GlobalContext.INSTANCE.get(), qualifier, state, new Function0<ViewModelOwner>() { // from class: org.koin.androidx.viewmodel.ext.android.SavedStateRegistryOwnerExtKt.getStateViewModel.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ViewModelOwner invoke() {
                ViewModelOwner.Companion companion = ViewModelOwner.INSTANCE;
                SavedStateRegistryOwner savedStateRegistryOwner2 = savedStateRegistryOwner;
                return companion.from((ViewModelStoreOwner) savedStateRegistryOwner2, savedStateRegistryOwner2);
            }
        }, clazz, function0);
    }
}
