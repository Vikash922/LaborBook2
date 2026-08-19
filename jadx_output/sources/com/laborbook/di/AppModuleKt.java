package com.laborbook.di;

import android.content.Context;
import com.boilerplate.analytics.AnalyticsManager;
import com.boilerplate.analytics.AnalyticsManagerImpl;
import com.laborbook.AddressGenerator;
import com.laborbook.ads.FirebaseCustomAdProvider;
import com.laborbook.base.ads.CustomAdManager;
import com.laborbook.base.ads.CustomAdProvider;
import com.laborbook.base.analytics.Analytics;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.languagemanager.LanguageManager;
import com.laborbook.base.navigator.FragmentNavigator;
import com.laborbook.base.navigator.ModuleNavigator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.koin.ModuleExtKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Kind;
import org.koin.core.definition.Options;
import org.koin.core.module.Module;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleKt;

/* JADX INFO: compiled from: AppModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"appModule", "Lorg/koin/core/module/Module;", "getAppModule", "()Lorg/koin/core/module/Module;", "app_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AppModuleKt {
    private static final Module appModule = ModuleKt.module$default(false, false, new Function1() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return AppModuleKt.appModule$lambda$8((Module) obj);
        }
    }, 3, null);

    public static final Module getAppModule() {
        return appModule;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LanguageManager appModule$lambda$8$lambda$0(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new LanguageManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModuleNavigator appModule$lambda$8$lambda$1(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ModuleNavigator(AddressGenerator.INSTANCE.generateAddressList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FragmentNavigator appModule$lambda$8$lambda$2(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new FragmentNavigator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DataStoreManager appModule$lambda$8$lambda$3(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new DataStoreManager(ModuleExtKt.androidContext(single));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnalyticsManager appModule$lambda$8$lambda$4(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return AnalyticsManagerImpl.INSTANCE.getInstance((Context) single.get(Reflection.getOrCreateKotlinClass(Context.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Analytics appModule$lambda$8$lambda$5(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new Analytics((AnalyticsManager) single.get(Reflection.getOrCreateKotlinClass(AnalyticsManager.class), null, null), (DataStoreManager) single.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CustomAdProvider appModule$lambda$8$lambda$6(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new FirebaseCustomAdProvider();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CustomAdManager appModule$lambda$8$lambda$7(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CustomAdManager((CustomAdProvider) single.get(Reflection.getOrCreateKotlinClass(CustomAdProvider.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit appModule$lambda$8(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$0((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions = module.makeOptions(false, false);
        Definitions definitions = Definitions.INSTANCE;
        Qualifier rootScope = module.getRootScope();
        List listEmptyList = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(LanguageManager.class), null, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
        Function2 function22 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$1((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions2 = module.makeOptions(false, false);
        Definitions definitions2 = Definitions.INSTANCE;
        Qualifier rootScope2 = module.getRootScope();
        List listEmptyList2 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope2, Reflection.getOrCreateKotlinClass(ModuleNavigator.class), null, function22, Kind.Single, listEmptyList2, optionsMakeOptions2, null, 128, null));
        Function2 function23 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$2((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions3 = module.makeOptions(false, false);
        Definitions definitions3 = Definitions.INSTANCE;
        Qualifier rootScope3 = module.getRootScope();
        List listEmptyList3 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope3, Reflection.getOrCreateKotlinClass(FragmentNavigator.class), null, function23, Kind.Single, listEmptyList3, optionsMakeOptions3, null, 128, null));
        Function2 function24 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$3((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions4 = module.makeOptions(false, false);
        Definitions definitions4 = Definitions.INSTANCE;
        Qualifier rootScope4 = module.getRootScope();
        List listEmptyList4 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope4, Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, function24, Kind.Single, listEmptyList4, optionsMakeOptions4, null, 128, null));
        Function2 function25 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$4((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions5 = module.makeOptions(false, false);
        Definitions definitions5 = Definitions.INSTANCE;
        Qualifier rootScope5 = module.getRootScope();
        List listEmptyList5 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope5, Reflection.getOrCreateKotlinClass(AnalyticsManager.class), null, function25, Kind.Single, listEmptyList5, optionsMakeOptions5, null, 128, null));
        Function2 function26 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$5((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions6 = module.makeOptions(false, false);
        Definitions definitions6 = Definitions.INSTANCE;
        Qualifier rootScope6 = module.getRootScope();
        List listEmptyList6 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope6, Reflection.getOrCreateKotlinClass(Analytics.class), null, function26, Kind.Single, listEmptyList6, optionsMakeOptions6, null, 128, null));
        Function2 function27 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$6((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions7 = module.makeOptions(false, false);
        Definitions definitions7 = Definitions.INSTANCE;
        Qualifier rootScope7 = module.getRootScope();
        List listEmptyList7 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope7, Reflection.getOrCreateKotlinClass(CustomAdProvider.class), null, function27, Kind.Single, listEmptyList7, optionsMakeOptions7, null, 128, null));
        Function2 function28 = new Function2() { // from class: com.laborbook.di.AppModuleKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AppModuleKt.appModule$lambda$8$lambda$7((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions8 = module.makeOptions(false, false);
        Definitions definitions8 = Definitions.INSTANCE;
        Qualifier rootScope8 = module.getRootScope();
        List listEmptyList8 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope8, Reflection.getOrCreateKotlinClass(CustomAdManager.class), null, function28, Kind.Single, listEmptyList8, optionsMakeOptions8, null, 128, null));
        return Unit.INSTANCE;
    }
}
