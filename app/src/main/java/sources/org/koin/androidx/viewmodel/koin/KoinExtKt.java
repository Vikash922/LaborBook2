package org.koin.androidx.viewmodel.koin;

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
import org.koin.androidx.viewmodel.scope.ScopeExtKt;
import org.koin.core.Koin;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;

/* JADX INFO: compiled from: KoinExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000R\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\u0010\u0006\u001au\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\f2\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000e0\nj\u0002`\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00112\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\nj\u0004\u0018\u0001`\u0014¢\u0006\u0002\u0010\u0015\u001aq\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0016\b\n\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\f2\u0012\b\b\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000e0\nj\u0002`\u000f2\u0016\b\n\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\nj\u0004\u0018\u0001`\u0014H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a|\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0018\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0016\b\n\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\f2\u0012\b\b\u0010\r\u001a\f\u0012\u0004\u0012\u00020\u000e0\nj\u0002`\u000f2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\u0016\b\n\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0018\u00010\nj\u0004\u0018\u0001`\u0014H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, m2722d2 = {"getViewModel", "T", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/Koin;", "viewModelParameters", "Lorg/koin/androidx/viewmodel/ViewModelParameter;", "(Lorg/koin/core/Koin;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/ViewModel;", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "state", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", "owner", "Lorg/koin/androidx/viewmodel/ViewModelOwner;", "Lorg/koin/androidx/viewmodel/ViewModelOwnerDefinition;", "clazz", "Lkotlin/reflect/KClass;", "parameters", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/Koin;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "(Lorg/koin/core/Koin;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "viewModel", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinExtKt {
    public static /* synthetic */ Lazy viewModel$default(Koin koin, Qualifier qualifier, Function0 function0, Function0 owner, LazyThreadSafetyMode mode, Function0 function02, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        Function0 function03 = (i & 2) != 0 ? null : function0;
        if ((i & 8) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        Function0 function04 = (i & 16) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48561(koin, qualifier2, function03, owner, function04));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.androidx.viewmodel.koin.KoinExtKt$viewModel$1 */
    /* JADX INFO: compiled from: KoinExt.kt */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", "Landroidx/lifecycle/ViewModel;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48561<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<ViewModelOwner> $owner;
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ Function0<Bundle> $state;
        final /* synthetic */ Koin $this_viewModel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48561(Koin koin, Qualifier qualifier, Function0<Bundle> function0, Function0<ViewModelOwner> function02, Function0<? extends DefinitionParameters> function03) {
            super(0);
            this.$this_viewModel = koin;
            this.$qualifier = qualifier;
            this.$state = function0;
            this.$owner = function02;
            this.$parameters = function03;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // kotlin.jvm.functions.Function0
        public final ViewModel invoke() {
            Koin koin = this.$this_viewModel;
            Qualifier qualifier = this.$qualifier;
            Function0<Bundle> function0 = this.$state;
            Function0<ViewModelOwner> function02 = this.$owner;
            Function0<DefinitionParameters> function03 = this.$parameters;
            Intrinsics.reifiedOperationMarker(4, "T");
            return KoinExtKt.getViewModel(koin, qualifier, function0, function02, Reflection.getOrCreateKotlinClass(ViewModel.class), function03);
        }
    }

    public static final /* synthetic */ Lazy viewModel(Koin koin, Qualifier qualifier, Function0 function0, Function0 owner, LazyThreadSafetyMode mode, Function0 function02) {
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48561(koin, qualifier, function0, owner, function02));
    }

    public static /* synthetic */ ViewModel getViewModel$default(Koin koin, Qualifier qualifier, Function0 function0, Function0 owner, Function0 function02, int i, Object obj) {
        Qualifier qualifier2 = (i & 1) != 0 ? null : qualifier;
        Function0 function03 = (i & 2) != 0 ? null : function0;
        Function0 function04 = (i & 8) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getViewModel(koin, qualifier2, function03, owner, Reflection.getOrCreateKotlinClass(ViewModel.class), function04);
    }

    public static final /* synthetic */ ViewModel getViewModel(Koin koin, Qualifier qualifier, Function0 function0, Function0 owner, Function0 function02) {
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.reifiedOperationMarker(4, "T");
        return getViewModel(koin, qualifier, function0, owner, Reflection.getOrCreateKotlinClass(ViewModel.class), function02);
    }

    public static final <T extends ViewModel> T getViewModel(Koin koin, Qualifier qualifier, Function0<Bundle> function0, Function0<ViewModelOwner> owner, KClass<T> clazz, Function0<? extends DefinitionParameters> function02) {
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) ScopeExtKt.getViewModel(koin.getScopeRegistry().getRootScope(), qualifier, function0, owner, clazz, function02);
    }

    public static final <T extends ViewModel> T getViewModel(Koin koin, ViewModelParameter<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(koin, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        return (T) ScopeExtKt.getViewModel(koin.getScopeRegistry().getRootScope(), viewModelParameters);
    }
}
