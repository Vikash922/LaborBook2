package org.koin.java;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinJavaComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0005*\u00020\u0001\"\b\b\u0001\u0010\u0004*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\fH\u0007¢\u0006\u0002\u0010\rJG\u0010\u000e\u001a\u0002H\u000f\"\b\b\u0000\u0010\u000f*\u00020\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\fH\u0007¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0007JH\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0017\"\b\b\u0000\u0010\u000f*\u00020\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\fH\u0007¨\u0006\u0018"}, m2722d2 = {"Lorg/koin/java/KoinJavaComponent;", "", "()V", "bind", "S", "P", "primary", "Ljava/lang/Class;", "secondary", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "get", "T", "clazz", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getKoin", "Lorg/koin/core/Koin;", "inject", "Lkotlin/Lazy;", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinJavaComponent {
    public static final KoinJavaComponent INSTANCE = new KoinJavaComponent();

    @JvmStatic
    public static final <P, S> S bind(Class<P> primary, Class<S> secondary) {
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        return (S) bind$default(primary, secondary, null, 4, null);
    }

    @JvmStatic
    public static final <T> T get(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) get$default(clazz, null, null, 6, null);
    }

    @JvmStatic
    public static final <T> T get(Class<?> clazz, Qualifier qualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) get$default(clazz, qualifier, null, 4, null);
    }

    @JvmStatic
    public static final <T> Lazy<T> inject(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return inject$default(clazz, null, null, 6, null);
    }

    @JvmStatic
    public static final <T> Lazy<T> inject(Class<?> clazz, Qualifier qualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return inject$default(clazz, qualifier, null, 4, null);
    }

    private KoinJavaComponent() {
    }

    public static /* synthetic */ Lazy inject$default(Class cls, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return inject(cls, qualifier, function0);
    }

    @JvmStatic
    public static final <T> Lazy<T> inject(final Class<?> clazz, final Qualifier qualifier, final Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<T>() { // from class: org.koin.java.KoinJavaComponent.inject.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                KoinJavaComponent koinJavaComponent = KoinJavaComponent.INSTANCE;
                return (T) KoinJavaComponent.get(clazz, qualifier, parameters);
            }
        });
    }

    public static /* synthetic */ Object get$default(Class cls, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return get(cls, qualifier, function0);
    }

    @JvmStatic
    public static final <T> T get(Class<?> clazz, Qualifier qualifier, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) getKoin().get(JvmClassMappingKt.getKotlinClass(clazz), qualifier, parameters);
    }

    public static /* synthetic */ Object bind$default(Class cls, Class cls2, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        return bind(cls, cls2, function0);
    }

    @JvmStatic
    public static final <P, S> S bind(Class<P> primary, Class<S> secondary, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(secondary, "secondary");
        return (S) getKoin().bind(JvmClassMappingKt.getKotlinClass(primary), JvmClassMappingKt.getKotlinClass(secondary), parameters);
    }

    @JvmStatic
    public static final Koin getKoin() {
        return KoinPlatformTools.INSTANCE.defaultContext().get();
    }
}
