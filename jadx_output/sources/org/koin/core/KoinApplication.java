package org.koin.core;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.time.MeasureKt;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: KoinApplication.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0000J\r\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0002\b\u000bJ\u0016\u0010\f\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011J\u001f\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u0012\"\u00020\u000f¢\u0006\u0002\u0010\u0013J\u0014\u0010\r\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000fJ\u0010\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u001a\u0010\u0017\u001a\u00020\u00002\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0019J\u0014\u0010\u001b\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001e"}, m2722d2 = {"Lorg/koin/core/KoinApplication;", "", "()V", "koin", "Lorg/koin/core/Koin;", "getKoin", "()Lorg/koin/core/Koin;", "close", "", "createEagerInstances", "init", "init$koin_core", "loadModules", "modules", "", "Lorg/koin/core/module/Module;", "logger", "Lorg/koin/core/logger/Logger;", "", "([Lorg/koin/core/module/Module;)Lorg/koin/core/KoinApplication;", "printLogger", FirebaseAnalytics.Param.LEVEL, "Lorg/koin/core/logger/Level;", "properties", "values", "", "", "unloadModules", "module", "Companion", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinApplication {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Koin koin;

    public /* synthetic */ KoinApplication(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private KoinApplication() {
        this.koin = new Koin();
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final void init$koin_core() {
        this.koin.getScopeRegistry().createRootScopeDefinition$koin_core();
        this.koin.getScopeRegistry().createRootScope$koin_core();
    }

    public final KoinApplication modules(Module modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        return modules(CollectionsKt.listOf(modules));
    }

    public final KoinApplication modules(Module... modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        return modules(ArraysKt.toList(modules));
    }

    public final KoinApplication modules(final List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        if (this.koin.getLogger().isAt(Level.INFO)) {
            this.koin.getLogger().info("loaded " + this.koin.getScopeRegistry().size() + " definitions - " + MeasureKt.measureDuration(new Function0<Unit>() { // from class: org.koin.core.KoinApplication$modules$duration$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.loadModules(modules);
                }
            }) + " ms");
        } else {
            loadModules(modules);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadModules(List<Module> modules) {
        Koin.loadModules$default(this.koin, modules, false, 2, null);
    }

    public final KoinApplication properties(Map<String, String> values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.koin.getPropertyRegistry().saveProperties(values);
        return this;
    }

    public final KoinApplication logger(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.koin.setupLogger(logger);
        return this;
    }

    public static /* synthetic */ KoinApplication printLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return koinApplication.printLogger(level);
    }

    public final KoinApplication printLogger(Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.koin.setupLogger(KoinPlatformTools.INSTANCE.defaultLogger(level));
        return this;
    }

    public final KoinApplication createEagerInstances() {
        if (this.koin.getLogger().isAt(Level.DEBUG)) {
            this.koin.getLogger().debug("instances started in " + MeasureKt.measureDuration(new Function0<Unit>() { // from class: org.koin.core.KoinApplication$createEagerInstances$duration$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.getKoin().createEagerInstances$koin_core();
                }
            }) + " ms");
        } else {
            this.koin.createEagerInstances$koin_core();
        }
        return this;
    }

    public final void close() {
        this.koin.close();
    }

    public final void unloadModules(Module module) {
        Intrinsics.checkNotNullParameter(module, "module");
        this.koin.getScopeRegistry().unloadModules(module);
    }

    public final void unloadModules(List<Module> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.koin.getScopeRegistry().unloadModules(modules);
    }

    /* JADX INFO: compiled from: KoinApplication.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m2722d2 = {"Lorg/koin/core/KoinApplication$Companion;", "", "()V", "init", "Lorg/koin/core/KoinApplication;", "koin-core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KoinApplication init() {
            KoinApplication koinApplication = new KoinApplication(null);
            koinApplication.init$koin_core();
            return koinApplication;
        }
    }
}
