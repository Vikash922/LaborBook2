package org.koin.androidx.fragment.koin;

import androidx.fragment.app.FragmentFactory;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.androidx.fragment.android.KoinFragmentFactory;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.KoinExperimentalAPI;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Kind;
import org.koin.core.definition.Options;
import org.koin.core.module.Module;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleKt;

/* JADX INFO: compiled from: KoinApplicationExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, m2722d2 = {"fragmentFactoryModule", "Lorg/koin/core/module/Module;", "fragmentFactory", "", "Lorg/koin/core/KoinApplication;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class KoinApplicationExtKt {
    private static final Module fragmentFactoryModule = ModuleKt.module$default(false, false, new Function1<Module, Unit>() { // from class: org.koin.androidx.fragment.koin.KoinApplicationExtKt$fragmentFactoryModule$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Module module) {
            invoke2(module);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Module module) {
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C48331 c48331 = new Function2<Scope, DefinitionParameters, FragmentFactory>() { // from class: org.koin.androidx.fragment.koin.KoinApplicationExtKt$fragmentFactoryModule$1.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function2
                public final FragmentFactory invoke(Scope single, DefinitionParameters it) {
                    Intrinsics.checkNotNullParameter(single, "$this$single");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new KoinFragmentFactory(null, 1, 0 == true ? 1 : 0);
                }
            };
            Options optionsMakeOptions = module.makeOptions(false, false);
            Definitions definitions = Definitions.INSTANCE;
            Qualifier rootScope = module.getRootScope();
            List listEmptyList = CollectionsKt.emptyList();
            org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(FragmentFactory.class), null, c48331, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
        }
    }, 3, null);

    @KoinExperimentalAPI
    public static final void fragmentFactory(KoinApplication koinApplication) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Koin.loadModules$default(koinApplication.getKoin(), CollectionsKt.listOf(fragmentFactoryModule), false, 2, null);
    }
}
