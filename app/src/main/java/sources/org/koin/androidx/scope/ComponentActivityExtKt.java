package org.koin.androidx.scope;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ComponentActivityExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0003\u001a\u0016\u0010\u0006\u001a\u00020\u0002*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u001a\f\u0010\t\u001a\u0004\u0018\u00010\u0002*\u00020\u0003¨\u0006\n"}, m2722d2 = {"activityRetainedScope", "Lkotlin/Lazy;", "Lorg/koin/core/scope/Scope;", "Landroidx/activity/ComponentActivity;", "activityScope", "Lorg/koin/androidx/scope/LifecycleScopeDelegate;", "createScope", "source", "", "getScopeOrNull", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ComponentActivityExtKt {
    public static final LifecycleScopeDelegate activityScope(ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return new LifecycleScopeDelegate(componentActivity, null, null, 6, null);
    }

    public static final Lazy<Scope> activityRetainedScope(final ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return LazyKt.lazy(new Function0<Scope>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt.activityRetainedScope.1
            {
                super(0);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function0
            public final Scope invoke() {
                final ComponentActivity componentActivity2 = componentActivity;
                ScopeHandlerViewModel scopeHandlerViewModel = (ScopeHandlerViewModel) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ScopeHandlerViewModel.class), new Function0<ViewModelStore>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$2
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final ViewModelStore invoke() {
                        ViewModelStore viewModelStore = componentActivity2.getViewModelStore();
                        Intrinsics.checkNotNullExpressionValue(viewModelStore, "viewModelStore");
                        return viewModelStore;
                    }
                }, new Function0<ViewModelProvider.Factory>() { // from class: org.koin.androidx.scope.ComponentActivityExtKt$activityRetainedScope$1$invoke$$inlined$viewModels$default$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final ViewModelProvider.Factory invoke() {
                        return componentActivity2.getDefaultViewModelProviderFactory();
                    }
                }).getValue();
                if (scopeHandlerViewModel.getScope() == null) {
                    scopeHandlerViewModel.setScope(ComponentActivityExtKt.createScope$default(componentActivity, null, 1, null));
                }
                Scope scope = scopeHandlerViewModel.getScope();
                Intrinsics.checkNotNull(scope);
                return scope;
            }
        });
    }

    public static final Scope createScope(ComponentActivity componentActivity, Object obj) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return ComponentCallbackExtKt.getKoin(componentActivity).createScope(KoinScopeComponentKt.getScopeId(componentActivity), KoinScopeComponentKt.getScopeName(componentActivity), obj);
    }

    public static /* synthetic */ Scope createScope$default(ComponentActivity componentActivity, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return createScope(componentActivity, obj);
    }

    public static final Scope getScopeOrNull(ComponentActivity componentActivity) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        return ComponentCallbackExtKt.getKoin(componentActivity).getScopeOrNull(KoinScopeComponentKt.getScopeId(componentActivity));
    }
}
