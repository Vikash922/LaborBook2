package org.koin.core.component;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aE\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002\"\n\b\u0001\u0010\u0003\u0018\u0001*\u00020\u0002*\u00020\u00042\u0016\b\n\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\bH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\t\u001aE\u0010\n\u001a\u0002H\u000b\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u0002*\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0016\b\n\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\bH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001aP\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0010\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u0002*\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0016\b\n\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, m2722d2 = {"bind", "S", "", "P", "Lorg/koin/core/component/KoinComponent;", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lorg/koin/core/component/KoinComponent;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "get", "T", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "inject", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinComponentKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(KoinComponent koinComponent, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        if (koinComponent instanceof KoinScopeComponent) {
            Scope scope = ((KoinScopeComponent) koinComponent).getScope();
            Intrinsics.reifiedOperationMarker(4, "T");
            return scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
        Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public static final /* synthetic */ Object get(KoinComponent koinComponent, Qualifier qualifier, Function0 function0) {
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        if (koinComponent instanceof KoinScopeComponent) {
            Scope scope = ((KoinScopeComponent) koinComponent).getScope();
            Intrinsics.reifiedOperationMarker(4, "T");
            return scope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
        Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public static /* synthetic */ Lazy inject$default(KoinComponent koinComponent, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48601(koinComponent, qualifier, function0));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.koin.core.component.KoinComponentKt$inject$1 */
    /* JADX INFO: compiled from: KoinComponent.kt */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "T", ""}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class C48601<T> extends Lambda implements Function0<T> {
        final /* synthetic */ Function0<DefinitionParameters> $parameters;
        final /* synthetic */ Qualifier $qualifier;
        final /* synthetic */ KoinComponent $this_inject;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C48601(KoinComponent koinComponent, Qualifier qualifier, Function0<? extends DefinitionParameters> function0) {
            super(0);
            this.$this_inject = koinComponent;
            this.$qualifier = qualifier;
            this.$parameters = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final T invoke() {
            Scope rootScope;
            KoinComponent koinComponent = this.$this_inject;
            Qualifier qualifier = this.$qualifier;
            Function0<DefinitionParameters> function0 = this.$parameters;
            if (koinComponent instanceof KoinScopeComponent) {
                rootScope = ((KoinScopeComponent) koinComponent).getScope();
            } else {
                rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
            }
            Intrinsics.reifiedOperationMarker(4, "T");
            return (T) rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
        }
    }

    public static final /* synthetic */ Lazy inject(KoinComponent koinComponent, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0) {
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new C48601(koinComponent, qualifier, function0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object bind$default(KoinComponent koinComponent, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }

    public static final /* synthetic */ Object bind(KoinComponent koinComponent, Function0 function0) {
        Intrinsics.checkNotNullParameter(koinComponent, "<this>");
        Scope rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }
}
