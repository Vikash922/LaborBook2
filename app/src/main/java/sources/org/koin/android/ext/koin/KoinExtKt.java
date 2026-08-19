package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.p024io.CloseableKt;
import org.koin.android.logger.AndroidLogger;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Kind;
import org.koin.core.definition.Options;
import org.koin.core.logger.Level;
import org.koin.core.module.Module;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.PropertyRegistryExtKt;
import org.koin.core.scope.Scope;
import org.koin.dsl.DefinitionBindingKt;
import org.koin.dsl.ModuleKt;

/* JADX INFO: compiled from: KoinExt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u0002\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m2722d2 = {"androidContext", "Lorg/koin/core/KoinApplication;", "Landroid/content/Context;", "androidFileProperties", "koinPropertyFile", "", "androidLogger", FirebaseAnalytics.Param.LEVEL, "Lorg/koin/core/logger/Level;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinExtKt {
    public static /* synthetic */ KoinApplication androidLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return androidLogger(koinApplication, level);
    }

    public static final KoinApplication androidLogger(KoinApplication koinApplication, Level level) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(level, "level");
        koinApplication.getKoin().setupLogger(new AndroidLogger(level));
        return koinApplication;
    }

    public static final KoinApplication androidContext(KoinApplication koinApplication, final Context androidContext) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(androidContext, "androidContext");
        if (koinApplication.getKoin().getLogger().isAt(Level.INFO)) {
            koinApplication.getKoin().getLogger().info("[init] declare Android Context");
        }
        if (androidContext instanceof Application) {
            Koin.loadModules$default(koinApplication.getKoin(), CollectionsKt.listOf(ModuleKt.module$default(false, false, new Function1<Module, Unit>() { // from class: org.koin.android.ext.koin.KoinExtKt.androidContext.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Module module) {
                    invoke2(module);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Module module) {
                    Intrinsics.checkNotNullParameter(module, "$this$module");
                    final Context context = androidContext;
                    Function2<Scope, DefinitionParameters, Context> function2 = new Function2<Scope, DefinitionParameters, Context>() { // from class: org.koin.android.ext.koin.KoinExtKt.androidContext.1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Context invoke(Scope single, DefinitionParameters it) {
                            Intrinsics.checkNotNullParameter(single, "$this$single");
                            Intrinsics.checkNotNullParameter(it, "it");
                            return context;
                        }
                    };
                    Options optionsMakeOptions = module.makeOptions(false, false);
                    Definitions definitions = Definitions.INSTANCE;
                    Qualifier rootScope = module.getRootScope();
                    List listEmptyList = CollectionsKt.emptyList();
                    Qualifier qualifier = null;
                    BeanDefinition beanDefinition = new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(Context.class), qualifier, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null);
                    org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition);
                    DefinitionBindingKt.bind(beanDefinition, Reflection.getOrCreateKotlinClass(Application.class));
                }
            }, 3, null)), false, 2, null);
        } else {
            Koin.loadModules$default(koinApplication.getKoin(), CollectionsKt.listOf(ModuleKt.module$default(false, false, new Function1<Module, Unit>() { // from class: org.koin.android.ext.koin.KoinExtKt.androidContext.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Module module) {
                    invoke2(module);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Module module) {
                    Intrinsics.checkNotNullParameter(module, "$this$module");
                    final Context context = androidContext;
                    Function2<Scope, DefinitionParameters, Context> function2 = new Function2<Scope, DefinitionParameters, Context>() { // from class: org.koin.android.ext.koin.KoinExtKt.androidContext.2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Context invoke(Scope single, DefinitionParameters it) {
                            Intrinsics.checkNotNullParameter(single, "$this$single");
                            Intrinsics.checkNotNullParameter(it, "it");
                            return context;
                        }
                    };
                    Options optionsMakeOptions = module.makeOptions(false, false);
                    Definitions definitions = Definitions.INSTANCE;
                    Qualifier rootScope = module.getRootScope();
                    List listEmptyList = CollectionsKt.emptyList();
                    Qualifier qualifier = null;
                    org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(Context.class), qualifier, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
                }
            }, 3, null)), false, 2, null);
        }
        return koinApplication;
    }

    public static /* synthetic */ KoinApplication androidFileProperties$default(KoinApplication koinApplication, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "koin.properties";
        }
        return androidFileProperties(koinApplication, str);
    }

    public static final KoinApplication androidFileProperties(KoinApplication koinApplication, String koinPropertyFile) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(koinPropertyFile, "koinPropertyFile");
        Properties properties = new Properties();
        Context context = (Context) koinApplication.getKoin().getScopeRegistry().getRootScope().get(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        try {
            AssetManager assets = context.getAssets();
            String[] list = assets == null ? null : assets.list("");
            if (list == null ? false : ArraysKt.contains(list, koinPropertyFile)) {
                try {
                    InputStream inputStreamOpen = context.getAssets().open(koinPropertyFile);
                    try {
                        properties.load(inputStreamOpen);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(inputStreamOpen, null);
                        PropertyRegistryExtKt.saveProperties(koinApplication.getKoin().getPropertyRegistry(), properties);
                        Unit unit2 = Unit.INSTANCE;
                        if (koinApplication.getKoin().getLogger().isAt(Level.INFO)) {
                            koinApplication.getKoin().getLogger().info("[Android-Properties] loaded " + unit2 + " properties from assets/" + koinPropertyFile);
                        }
                    } finally {
                    }
                } catch (Exception e) {
                    koinApplication.getKoin().getLogger().error(Intrinsics.stringPlus("[Android-Properties] error for binding properties : ", e));
                }
            } else if (koinApplication.getKoin().getLogger().isAt(Level.INFO)) {
                koinApplication.getKoin().getLogger().info("[Android-Properties] no assets/" + koinPropertyFile + " file to load");
            }
        } catch (Exception e2) {
            koinApplication.getKoin().getLogger().error("[Android-Properties] error while loading properties from assets/" + koinPropertyFile + " : " + e2);
        }
        return koinApplication;
    }
}
