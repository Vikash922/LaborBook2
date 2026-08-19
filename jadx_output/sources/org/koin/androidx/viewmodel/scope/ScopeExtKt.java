package org.koin.androidx.viewmodel.scope;

import android.os.Bundle;
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
import org.koin.androidx.viewmodel.ViewModelOwner;
import org.koin.androidx.viewmodel.ViewModelParameter;
import org.koin.androidx.viewmodel.ViewModelResolverKt;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ScopeExt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003\u001a'\u0010\u0004\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\t¢\u0006\u0002\u0010\n\u001au\u0010\u0004\u001a\u0002H\u0005\"\b\b\u0000\u0010\u0005*\u00020\u0006*\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001j\u0004\u0018\u0001`\u00032\u0010\u0010\u000e\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0001j\u0002`\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00122\u0016\b\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0001j\u0004\u0018\u0001`\u0015¢\u0006\u0002\u0010\u0016\u001aq\u0010\u0004\u001a\u0002H\u0005\"\n\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0016\b\n\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001j\u0004\u0018\u0001`\u00032\u0012\b\b\u0010\u000e\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0001j\u0002`\u00102\u0016\b\n\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0001j\u0004\u0018\u0001`\u0015H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a|\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0019\"\n\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006*\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0016\b\n\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001j\u0004\u0018\u0001`\u00032\u0012\b\b\u0010\u000e\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0001j\u0002`\u00102\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\u0016\b\n\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0001j\u0004\u0018\u0001`\u0015H\u0086\bø\u0001\u0000*\u0016\u0010\u001c\"\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0016\u0010\u001d\"\b\u0012\u0004\u0012\u00020\u001e0\u00012\b\u0012\u0004\u0012\u00020\u001e0\u0001*\u0016\u0010\u001f\"\b\u0012\u0004\u0012\u00020 0\u00012\b\u0012\u0004\u0012\u00020 0\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006!"}, m2722d2 = {"emptyState", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", "getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/scope/Scope;", "viewModelParameters", "Lorg/koin/androidx/viewmodel/ViewModelParameter;", "(Lorg/koin/core/scope/Scope;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/ViewModel;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "state", "owner", "Lorg/koin/androidx/viewmodel/ViewModelOwner;", "Lorg/koin/androidx/viewmodel/ViewModelOwnerDefinition;", "clazz", "Lkotlin/reflect/KClass;", "parameters", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "(Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "viewModel", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "BundleDefinition", "SavedStateRegistryOwnerDefinition", "Landroidx/savedstate/SavedStateRegistryOwner;", "ViewModelStoreDefinition", "Landroidx/lifecycle/ViewModelStore;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ScopeExtKt {
    public static final Function0<Bundle> emptyState() {
        return new Function0<Bundle>() { // from class: org.koin.androidx.viewmodel.scope.ScopeExtKt.emptyState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                return new Bundle();
            }
        };
    }

    public static /* synthetic */ Lazy viewModel$default(Scope scope, Qualifier qualifier, Function0 function0, Function0 owner, LazyThreadSafetyMode mode, Function0 function02, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        Function0 function03 = (i & 2) != 0 ? null : function0;
        if ((i & 8) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        Function0 function04 = (i & 16) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48581(scope, qualifier2, function03, owner, function04));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.androidx.viewmodel.scope.ScopeExtKt$viewModel$1 */
    /* JADX INFO: compiled from: ScopeExt.kt */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", "Landroidx/lifecycle/ViewModel;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48581<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<ViewModelOwner> $owner;
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ Function0<Bundle> $state;
        final /* synthetic */ Scope $this_viewModel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48581(Scope scope, Qualifier qualifier, Function0<Bundle> function0, Function0<ViewModelOwner> function02, Function0<? extends DefinitionParameters> function03) {
            super(0);
            this.$this_viewModel = scope;
            this.$qualifier = qualifier;
            this.$state = function0;
            this.$owner = function02;
            this.$parameters = function03;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModel invoke() {
            Scope scope = this.$this_viewModel;
            Qualifier qualifier = this.$qualifier;
            Function0<Bundle> function0 = this.$state;
            Function0<ViewModelOwner> function02 = this.$owner;
            Function0<DefinitionParameters> function03 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return ScopeExtKt.getViewModel(scope, qualifier, function0, function02, Reflection.getOrCreateKotlinClass(ViewModel.class), function03);
        }
    }

    public static final /* synthetic */ Lazy viewModel(Scope scope, Qualifier qualifier, Function0 function0, Function0 owner, LazyThreadSafetyMode mode, Function0 function02) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48581(scope, qualifier, function0, owner, function02));
    }

    public static /* synthetic */ ViewModel getViewModel$default(Scope scope, Qualifier qualifier, Function0 function0, Function0 owner, Function0 function02, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        Function0 function03 = (i & 2) != 0 ? null : function0;
        Function0 function04 = (i & 8) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getViewModel(scope, qualifier2, function03, owner, Reflection.getOrCreateKotlinClass(ViewModel.class), function04);
    }

    public static final /* synthetic */ ViewModel getViewModel(Scope scope, Qualifier qualifier, Function0 function0, Function0 owner, Function0 function02) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getViewModel(scope, qualifier, function0, owner, Reflection.getOrCreateKotlinClass(ViewModel.class), function02);
    }

    public static final <T extends ViewModel> T getViewModel(Scope scope, Qualifier qualifier, Function0<Bundle> function0, Function0<ViewModelOwner> owner, KClass<T> clazz, Function0<? extends DefinitionParameters> function02) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        ViewModelOwner viewModelOwnerInvoke = owner.invoke();
        return (T) getViewModel(scope, new ViewModelParameter(clazz, qualifier, function02, function0 == null ? null : function0.invoke(), viewModelOwnerInvoke.getStore(), viewModelOwnerInvoke.getStateRegistry()));
    }

    public static final <T extends ViewModel> T getViewModel(Scope scope, ViewModelParameter<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        return (T) ViewModelResolverKt.resolveInstance(ViewModelResolverKt.createViewModelProvider(scope, viewModelParameters), viewModelParameters);
    }
}
