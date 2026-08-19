package org.koin.androidx.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.androidx.viewmodel.factory.DefaultViewModelFactory;
import org.koin.androidx.viewmodel.factory.StateViewModelFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ViewModelResolver.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a$\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000\u001aA\u0010\u0007\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000bH\u0000¢\u0006\u0002\u0010\f\u001a$\u0010\r\u001a\u00020\u000e\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0002\u001a)\u0010\u000f\u001a\u0002H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, m2722d2 = {"createViewModelProvider", "Landroidx/lifecycle/ViewModelProvider;", "T", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/scope/Scope;", "viewModelParameters", "Lorg/koin/androidx/viewmodel/ViewModelParameter;", "get", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "javaClass", "Ljava/lang/Class;", "(Landroidx/lifecycle/ViewModelProvider;Lorg/koin/androidx/viewmodel/ViewModelParameter;Lorg/koin/core/qualifier/Qualifier;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "pickFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "resolveInstance", "(Landroidx/lifecycle/ViewModelProvider;Lorg/koin/androidx/viewmodel/ViewModelParameter;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ViewModelResolverKt {
    public static final <T extends ViewModel> T resolveInstance(ViewModelProvider viewModelProvider, ViewModelParameter<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(viewModelProvider, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        return (T) get(viewModelProvider, viewModelParameters, viewModelParameters.getQualifier(), JvmClassMappingKt.getJavaClass((KClass) viewModelParameters.getClazz()));
    }

    public static final <T extends ViewModel> T get(ViewModelProvider viewModelProvider, ViewModelParameter<T> viewModelParameters, Qualifier qualifier, Class<T> javaClass) {
        Intrinsics.checkNotNullParameter(viewModelProvider, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        Intrinsics.checkNotNullParameter(javaClass, "javaClass");
        if (viewModelParameters.getQualifier() != null) {
            T t = (T) viewModelProvider.get(String.valueOf(qualifier), javaClass);
            Intrinsics.checkNotNullExpressionValue(t, "{\n        get(qualifier.toString(), javaClass)\n    }");
            return t;
        }
        T t2 = (T) viewModelProvider.get(javaClass);
        Intrinsics.checkNotNullExpressionValue(t2, "{\n        get(javaClass)\n    }");
        return t2;
    }

    public static final <T extends ViewModel> ViewModelProvider createViewModelProvider(Scope scope, ViewModelParameter<T> viewModelParameters) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(viewModelParameters, "viewModelParameters");
        return new ViewModelProvider(viewModelParameters.getViewModelStore(), pickFactory(scope, viewModelParameters));
    }

    private static final <T extends ViewModel> ViewModelProvider.Factory pickFactory(Scope scope, ViewModelParameter<T> viewModelParameter) {
        return (viewModelParameter.getRegistryOwner() == null || viewModelParameter.getInitialState() == null) ? new DefaultViewModelFactory(scope, viewModelParameter) : new StateViewModelFactory(scope, viewModelParameter);
    }
}
