package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.android.scope.AndroidScopeComponent;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.context.GlobalContext;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ComponentCallbackExt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u0001\"\u0006\b\u0001\u0010\u0002\u0018\u0001*\u00020\u00032\u0016\b\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\b\u001aE\u0010\t\u001a\u0002H\n\"\n\b\u0000\u0010\n\u0018\u0001*\u00020\u000b*\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0016\b\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0003\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0003\u001aP\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\n0\u0014\"\n\b\u0000\u0010\n\u0018\u0001*\u00020\u000b*\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u0016\b\n\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, m2722d2 = {"bind", "S", "P", "Landroid/content/ComponentCallbacks;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Landroid/content/ComponentCallbacks;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "get", "T", "", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getDefaultScope", "Lorg/koin/core/scope/Scope;", "getKoin", "Lorg/koin/core/Koin;", "inject", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ComponentCallbackExtKt {
    public static final Koin getKoin(ComponentCallbacks componentCallbacks) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        return componentCallbacks instanceof KoinComponent ? ((KoinComponent) componentCallbacks).getKoin() : GlobalContext.INSTANCE.get();
    }

    public static final Scope getDefaultScope(ComponentCallbacks componentCallbacks) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        return componentCallbacks instanceof AndroidScopeComponent ? ((AndroidScopeComponent) componentCallbacks).getScope() : componentCallbacks instanceof KoinScopeComponent ? ((KoinScopeComponent) componentCallbacks).getScope() : getKoin(componentCallbacks).getRootScope();
    }

    public static /* synthetic */ Lazy inject$default(ComponentCallbacks componentCallbacks, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48271(componentCallbacks, qualifier, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.android.ext.android.ComponentCallbackExtKt$inject$1 */
    /* JADX INFO: compiled from: ComponentCallbackExt.kt */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", ""}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48271<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ ComponentCallbacks $this_inject;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48271(ComponentCallbacks componentCallbacks, Qualifier qualifier, Function0<? extends DefinitionParameters> function0) {
            super(0);
            this.$this_inject = componentCallbacks;
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            ComponentCallbacks componentCallbacks = this.$this_inject;
            Qualifier qualifier = this.$qualifier;
            Function0<DefinitionParameters> function0 = this.$parameters;
            Scope defaultScope = ComponentCallbackExtKt.getDefaultScope(componentCallbacks);
            Intrinsics.reifiedOperationMarker(4, "T");
            return (T) defaultScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public static final /* synthetic */ Lazy inject(ComponentCallbacks componentCallbacks, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48271(componentCallbacks, qualifier, function0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(ComponentCallbacks componentCallbacks, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope defaultScope = getDefaultScope(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, "T");
        return defaultScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public static final /* synthetic */ Object get(ComponentCallbacks componentCallbacks, Qualifier qualifier, Function0 function0) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope defaultScope = getDefaultScope(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, "T");
        return defaultScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object bind$default(ComponentCallbacks componentCallbacks, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope rootScope = getKoin(componentCallbacks).getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }

    public static final /* synthetic */ Object bind(ComponentCallbacks componentCallbacks, Function0 function0) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope rootScope = getKoin(componentCallbacks).getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }
}
