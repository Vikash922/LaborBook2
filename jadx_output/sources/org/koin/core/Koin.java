package org.koin.core;

import com.itextpdf.svg.SvgConstants;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.component.KoinScopeComponentKt;
import org.koin.core.error.ScopeNotCreatedException;
import org.koin.core.logger.EmptyLogger;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.PropertyRegistry;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: Koin.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JA\u0010\u0016\u001a\u0002H\u0017\"\u0004\b\u0000\u0010\u00172\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u00192\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001e¢\u0006\u0002\u0010\u001fJ9\u0010\u0016\u001a\u0002H\u0017\"\u0006\b\u0000\u0010\u0017\u0018\u0001\"\u0006\b\u0001\u0010 \u0018\u00012\u0016\b\n\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010!J\u0006\u0010\"\u001a\u00020#J\r\u0010$\u001a\u00020#H\u0000¢\u0006\u0002\b%J\u001d\u0010&\u001a\u00020'\"\b\b\u0000\u0010(*\u00020)2\u0006\u0010*\u001a\u0002H(¢\u0006\u0002\u0010+J#\u0010&\u001a\u00020'\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\f\b\u0002\u0010,\u001a\u00060-j\u0002`.H\u0086\bJ-\u0010&\u001a\u00020'\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\u0010,\u001a\u00060-j\u0002`.2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0001H\u0086\bJ&\u0010&\u001a\u00020'2\n\u0010,\u001a\u00060-j\u0002`.2\u0006\u00100\u001a\u0002012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0001JH\u00102\u001a\u00020#\"\u0006\b\u0000\u0010(\u0018\u00012\u0006\u00103\u001a\u0002H(2\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0012\b\u0002\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0019052\b\b\u0002\u00106\u001a\u000207H\u0086\b¢\u0006\u0002\u00108J\u000e\u00109\u001a\u00020#2\u0006\u0010:\u001a\u00020-J\u0012\u0010;\u001a\u00020#2\n\u0010,\u001a\u00060-j\u0002`.JA\u0010<\u001a\u0002H(\"\u0004\b\u0000\u0010(2\n\u0010=\u001a\u0006\u0012\u0002\b\u00030\u00192\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001e¢\u0006\u0002\u0010>JA\u0010<\u001a\u0002H(\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\n\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010?J\u0017\u0010@\u001a\b\u0012\u0004\u0012\u0002H(05\"\u0006\b\u0000\u0010(\u0018\u0001H\u0086\bJ!\u0010A\u001a\u00020'\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\u0010,\u001a\u00060-j\u0002`.H\u0086\bJ&\u0010A\u001a\u00020'2\n\u0010,\u001a\u00060-j\u0002`.2\u0006\u00100\u001a\u0002012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0001JC\u0010B\u001a\u0004\u0018\u0001H(\"\u0004\b\u0000\u0010(2\n\u0010=\u001a\u0006\u0012\u0002\b\u00030\u00192\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001e¢\u0006\u0002\u0010>JC\u0010B\u001a\u0004\u0018\u0001H(\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\u0016\b\n\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010?J\u001f\u0010C\u001a\u0004\u0018\u0001H(\"\b\b\u0000\u0010(*\u00020\u00012\u0006\u0010:\u001a\u00020-¢\u0006\u0002\u0010DJ%\u0010C\u001a\u0002H(\"\b\b\u0000\u0010(*\u00020\u00012\u0006\u0010:\u001a\u00020-2\u0006\u0010E\u001a\u0002H(¢\u0006\u0002\u0010FJ\b\u0010G\u001a\u00020'H\u0007J\u0012\u0010H\u001a\u00020'2\n\u0010,\u001a\u00060-j\u0002`.J\u0014\u0010I\u001a\u0004\u0018\u00010'2\n\u0010,\u001a\u00060-j\u0002`.JL\u0010J\u001a\b\u0012\u0004\u0012\u0002H(0K\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\b\b\u0002\u0010L\u001a\u00020M2\u0016\b\n\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eH\u0086\bø\u0001\u0000JN\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H(0K\"\n\b\u0000\u0010(\u0018\u0001*\u00020\u00012\n\b\u0002\u00100\u001a\u0004\u0018\u0001012\b\b\u0002\u0010L\u001a\u00020M2\u0016\b\n\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\u0004\u0018\u0001`\u001eH\u0086\bø\u0001\u0000J\u001e\u0010O\u001a\u00020#2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n052\b\b\u0002\u0010$\u001a\u000207J\u0016\u0010P\u001a\u00020#2\u0006\u0010:\u001a\u00020-2\u0006\u0010Q\u001a\u00020\u0001J\u0010\u0010R\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u001e\u0010S\u001a\u00020#2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n052\b\b\u0002\u0010$\u001a\u000207R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006T"}, m2722d2 = {"Lorg/koin/core/Koin;", "", "()V", "<set-?>", "Lorg/koin/core/logger/Logger;", "logger", "getLogger", "()Lorg/koin/core/logger/Logger;", "modules", "Ljava/util/HashSet;", "Lorg/koin/core/module/Module;", "Lkotlin/collections/HashSet;", "propertyRegistry", "Lorg/koin/core/registry/PropertyRegistry;", "getPropertyRegistry$annotations", "getPropertyRegistry", "()Lorg/koin/core/registry/PropertyRegistry;", "scopeRegistry", "Lorg/koin/core/registry/ScopeRegistry;", "getScopeRegistry$annotations", "getScopeRegistry", "()Lorg/koin/core/registry/ScopeRegistry;", "bind", "S", "primaryType", "Lkotlin/reflect/KClass;", "secondaryType", "parameters", "Lkotlin/Function0;", "Lorg/koin/core/parameter/DefinitionParameters;", "Lorg/koin/core/parameter/ParametersDefinition;", "(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "P", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "close", "", "createEagerInstances", "createEagerInstances$koin_core", "createScope", "Lorg/koin/core/scope/Scope;", "T", "Lorg/koin/core/component/KoinScopeComponent;", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "(Lorg/koin/core/component/KoinScopeComponent;)Lorg/koin/core/scope/Scope;", "scopeId", "", "Lorg/koin/core/scope/ScopeID;", "source", "qualifier", "Lorg/koin/core/qualifier/Qualifier;", "declare", "instance", "secondaryTypes", "", "override", "", "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V", "deleteProperty", "key", "deleteScope", "get", "clazz", "(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getAll", "getOrCreateScope", "getOrNull", "getProperty", "(Ljava/lang/String;)Ljava/lang/Object;", "defaultValue", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getRootScope", "getScope", "getScopeOrNull", "inject", "Lkotlin/Lazy;", "mode", "Lkotlin/LazyThreadSafetyMode;", "injectOrNull", "loadModules", "setProperty", "value", "setupLogger", "unloadModules", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Koin {
    private final ScopeRegistry scopeRegistry = new ScopeRegistry(this);
    private final PropertyRegistry propertyRegistry = new PropertyRegistry(this);
    private Logger logger = new EmptyLogger();
    private final HashSet<Module> modules = new HashSet<>();

    public static /* synthetic */ void getPropertyRegistry$annotations() {
    }

    public static /* synthetic */ void getScopeRegistry$annotations() {
    }

    public final ScopeRegistry getScopeRegistry() {
        return this.scopeRegistry;
    }

    public final PropertyRegistry getPropertyRegistry() {
        return this.propertyRegistry;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final void setupLogger(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final Scope getRootScope() {
        return this.scopeRegistry.getRootScope();
    }

    public static /* synthetic */ Lazy inject$default(Koin koin, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$inject$$inlined$inject$1(rootScope, qualifier, function0));
    }

    public final /* synthetic */ Lazy inject(Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$inject$$inlined$inject$1(rootScope, qualifier, parameters));
    }

    public static /* synthetic */ Lazy injectOrNull$default(Koin koin, Qualifier qualifier, LazyThreadSafetyMode mode, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            mode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(rootScope, qualifier, function0));
    }

    public final /* synthetic */ Lazy injectOrNull(Qualifier qualifier, LazyThreadSafetyMode mode, Function0 parameters) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.needClassReification();
        return LazyKt.lazy(mode, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(rootScope, qualifier, parameters));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Koin koin, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public final /* synthetic */ Object get(Qualifier qualifier, Function0 parameters) {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.get(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Koin koin, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            qualifier = null;
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, function0);
    }

    public final /* synthetic */ Object getOrNull(Qualifier qualifier, Function0 parameters) {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.getOrNull(Reflection.getOrCreateKotlinClass(Object.class), qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object get$default(Koin koin, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return koin.get(kClass, qualifier, function0);
    }

    public final <T> T get(KClass<?> clazz, Qualifier qualifier, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.scopeRegistry.getRootScope().get(clazz, qualifier, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getOrNull$default(Koin koin, KClass kClass, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return koin.getOrNull(kClass, qualifier, function0);
    }

    public final <T> T getOrNull(KClass<?> clazz, Qualifier qualifier, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.scopeRegistry.getRootScope().getOrNull(clazz, qualifier, parameters);
    }

    public static /* synthetic */ void declare$default(Koin koin, Object obj, Qualifier qualifier, List secondaryTypes, boolean z, int i, Object obj2) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        Qualifier qualifier2 = qualifier;
        if ((i & 4) != 0) {
            secondaryTypes = CollectionsKt.emptyList();
        }
        if ((i & 8) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.reifiedOperationMarker(4, "T");
        List listListOf = CollectionsKt.listOf(Reflection.getOrCreateKotlinClass(Object.class));
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        List listPlus = CollectionsKt.plus((Collection) listListOf, (Iterable) secondaryTypes);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m5053synchronized(rootScope, new Koin$declare$$inlined$declare$1(rootScope, obj, qualifier2, listPlus, z));
    }

    public final /* synthetic */ void declare(Object instance, Qualifier qualifier, List secondaryTypes, boolean override) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.reifiedOperationMarker(4, "T");
        List listListOf = CollectionsKt.listOf(Reflection.getOrCreateKotlinClass(Object.class));
        Scope rootScope = getScopeRegistry().getRootScope();
        List listPlus = CollectionsKt.plus((Collection) listListOf, (Iterable) secondaryTypes);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        Intrinsics.needClassReification();
        koinPlatformTools.m5053synchronized(rootScope, new Koin$declare$$inlined$declare$1(rootScope, instance, qualifier, listPlus, override));
    }

    public final /* synthetic */ List getAll() {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "T");
        return rootScope.getAll(Reflection.getOrCreateKotlinClass(Object.class));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object bind$default(Koin koin, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        Scope rootScope = koin.getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, function0);
    }

    public final /* synthetic */ Object bind(Function0 parameters) {
        Scope rootScope = getScopeRegistry().getRootScope();
        Intrinsics.reifiedOperationMarker(4, "S");
        KClass<?> orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
        Intrinsics.reifiedOperationMarker(4, "P");
        return rootScope.bind(Reflection.getOrCreateKotlinClass(Object.class), orCreateKotlinClass, parameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object bind$default(Koin koin, KClass kClass, KClass kClass2, Function0 function0, int i, Object obj) {
        if ((i & 4) != 0) {
            function0 = null;
        }
        return koin.bind(kClass, kClass2, function0);
    }

    public final <S> S bind(KClass<?> primaryType, KClass<?> secondaryType, Function0<? extends DefinitionParameters> parameters) {
        Intrinsics.checkNotNullParameter(primaryType, "primaryType");
        Intrinsics.checkNotNullParameter(secondaryType, "secondaryType");
        return (S) this.scopeRegistry.getRootScope().bind(primaryType, secondaryType, parameters);
    }

    public final void createEagerInstances$koin_core() {
        this.scopeRegistry.getRootScope().createEagerInstances$koin_core();
    }

    public static /* synthetic */ Scope createScope$default(Koin koin, String str, Qualifier qualifier, Object obj, int i, Object obj2) {
        if ((i & 4) != 0) {
            obj = null;
        }
        return koin.createScope(str, qualifier, obj);
    }

    public final Scope createScope(String scopeId, Qualifier qualifier, Object source) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        if (this.logger.isAt(Level.DEBUG)) {
            this.logger.debug("!- create scope - id:'" + scopeId + "' q:" + qualifier);
        }
        return this.scopeRegistry.createScope(scopeId, qualifier, source);
    }

    public static /* synthetic */ Scope createScope$default(Koin koin, String scopeId, Object obj, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = null;
        }
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, "T");
        TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        if (koin.getLogger().isAt(Level.DEBUG)) {
            koin.getLogger().debug("!- create scope - id:'" + scopeId + "' q:" + typeQualifier);
        }
        return koin.getScopeRegistry().createScope(scopeId, typeQualifier, obj);
    }

    public final /* synthetic */ Scope createScope(String scopeId, Object source) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, "T");
        TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        if (getLogger().isAt(Level.DEBUG)) {
            getLogger().debug("!- create scope - id:'" + scopeId + "' q:" + typeQualifier);
        }
        return getScopeRegistry().createScope(scopeId, typeQualifier, source);
    }

    public static /* synthetic */ Scope createScope$default(Koin koin, String scopeId, int i, Object obj) {
        if ((i & 1) != 0) {
            scopeId = KoinPlatformTools.INSTANCE.generateId();
        }
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, "T");
        TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        if (koin.getLogger().isAt(Level.DEBUG)) {
            koin.getLogger().debug("!- create scope - id:'" + scopeId + "' q:" + typeQualifier);
        }
        return koin.getScopeRegistry().createScope(scopeId, typeQualifier, (Object) null);
    }

    public final /* synthetic */ Scope createScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, "T");
        TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        if (getLogger().isAt(Level.DEBUG)) {
            getLogger().debug("!- create scope - id:'" + scopeId + "' q:" + typeQualifier);
        }
        return getScopeRegistry().createScope(scopeId, typeQualifier, (Object) null);
    }

    public final <T extends KoinScopeComponent> Scope createScope(T t) {
        Intrinsics.checkNotNullParameter(t, "t");
        String scopeId = KoinScopeComponentKt.getScopeId(t);
        TypeQualifier scopeName = KoinScopeComponentKt.getScopeName(t);
        if (this.logger.isAt(Level.DEBUG)) {
            this.logger.debug("!- create scope - id:'" + scopeId + "' q:" + scopeName);
        }
        return this.scopeRegistry.createScope(scopeId, scopeName, (Object) null);
    }

    public static /* synthetic */ Scope getOrCreateScope$default(Koin koin, String str, Qualifier qualifier, Object obj, int i, Object obj2) {
        if ((i & 4) != 0) {
            obj = null;
        }
        return koin.getOrCreateScope(str, qualifier, obj);
    }

    public final Scope getOrCreateScope(String scopeId, Qualifier qualifier, Object source) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        Scope scopeOrNull = this.scopeRegistry.getScopeOrNull(scopeId);
        return scopeOrNull == null ? createScope(scopeId, qualifier, source) : scopeOrNull;
    }

    public final /* synthetic */ Scope getOrCreateScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, "T");
        TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Object.class));
        Scope scopeOrNull = getScopeRegistry().getScopeOrNull(scopeId);
        return scopeOrNull == null ? createScope$default(this, scopeId, typeQualifier, null, 4, null) : scopeOrNull;
    }

    public final Scope getScope(String scopeId) throws ScopeNotCreatedException {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Scope scopeOrNull = this.scopeRegistry.getScopeOrNull(scopeId);
        if (scopeOrNull != null) {
            return scopeOrNull;
        }
        throw new ScopeNotCreatedException("No scope found for id '" + scopeId + '\'');
    }

    public final Scope getScopeOrNull(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        return this.scopeRegistry.getScopeOrNull(scopeId);
    }

    public final void deleteScope(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        this.scopeRegistry.deleteScope(scopeId);
    }

    public final <T> T getProperty(String key, T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t = (T) this.propertyRegistry.getProperty(key);
        return t == null ? defaultValue : t;
    }

    public final <T> T getProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.propertyRegistry.getProperty(key);
    }

    public final void setProperty(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.propertyRegistry.saveProperty$koin_core(key, value);
    }

    public final void deleteProperty(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.propertyRegistry.deleteProperty(key);
    }

    public final void close() {
        Iterator<T> it = this.modules.iterator();
        while (it.hasNext()) {
            ((Module) it.next()).setLoaded$koin_core(false);
        }
        this.modules.clear();
        this.scopeRegistry.close$koin_core();
        this.propertyRegistry.close();
    }

    public static /* synthetic */ void loadModules$default(Koin koin, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        koin.loadModules(list, z);
    }

    public final void loadModules(List<Module> modules, boolean createEagerInstances) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.modules.addAll(modules);
        this.scopeRegistry.loadModules$koin_core(modules);
        if (createEagerInstances) {
            createEagerInstances$koin_core();
        }
    }

    public static /* synthetic */ void unloadModules$default(Koin koin, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        koin.unloadModules(list, z);
    }

    public final void unloadModules(List<Module> modules, boolean createEagerInstances) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.scopeRegistry.unloadModules(modules);
        this.modules.removeAll(modules);
        if (createEagerInstances) {
            createEagerInstances$koin_core();
        }
    }
}
