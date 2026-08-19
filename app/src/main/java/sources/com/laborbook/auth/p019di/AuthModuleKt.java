package com.laborbook.auth.p019di;

import com.laborbook.auth.network.AuthNetworkModule;
import com.laborbook.auth.repository.AuthRepository;
import com.laborbook.auth.repository.AuthRepositoryImplementation;
import com.laborbook.auth.screen.login.viewmodel.AuthViewModel;
import com.laborbook.auth.usecase.AuthUseCase;
import com.laborbook.auth.usecase.AuthUseCaseImplementation;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.androidx.viewmodel.dsl.ModuleExtKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Definitions;
import org.koin.core.definition.Kind;
import org.koin.core.definition.Options;
import org.koin.core.module.Module;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleKt;

/* JADX INFO: compiled from: AuthModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m2722d2 = {"authModule", "Lorg/koin/core/module/Module;", "getAuthModule", "()Lorg/koin/core/module/Module;", "auth_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AuthModuleKt {
    private static final Module authModule = ModuleKt.module$default(false, false, new Function1() { // from class: com.laborbook.auth.di.AuthModuleKt$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return AuthModuleKt.authModule$lambda$4((Module) obj);
        }
    }, 3, null);

    public static final Module getAuthModule() {
        return authModule;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthNetworkModule authModule$lambda$4$lambda$0(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthNetworkModule();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthViewModel authModule$lambda$4$lambda$1(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthViewModel((AuthUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthUseCase authModule$lambda$4$lambda$2(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthUseCaseImplementation((AuthRepository) factory.get(Reflection.getOrCreateKotlinClass(AuthRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthRepository authModule$lambda$4$lambda$3(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AuthRepositoryImplementation((AuthNetworkModule) factory.get(Reflection.getOrCreateKotlinClass(AuthNetworkModule.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit authModule$lambda$4(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: com.laborbook.auth.di.AuthModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AuthModuleKt.authModule$lambda$4$lambda$0((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions = module.makeOptions(false, false);
        Definitions definitions = Definitions.INSTANCE;
        Qualifier rootScope = module.getRootScope();
        List listEmptyList = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(AuthNetworkModule.class), null, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
        Function2 function22 = new Function2() { // from class: com.laborbook.auth.di.AuthModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AuthModuleKt.authModule$lambda$4$lambda$1((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions2 = Definitions.INSTANCE;
        Qualifier rootScope2 = module.getRootScope();
        List listEmptyList2 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition = new BeanDefinition(rootScope2, Reflection.getOrCreateKotlinClass(AuthViewModel.class), null, function22, Kind.Factory, listEmptyList2, optionsMakeOptions$default, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition);
        ModuleExtKt.setIsViewModel(beanDefinition);
        Function2 function23 = new Function2() { // from class: com.laborbook.auth.di.AuthModuleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AuthModuleKt.authModule$lambda$4$lambda$2((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default2 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions3 = Definitions.INSTANCE;
        Qualifier rootScope3 = module.getRootScope();
        List listEmptyList3 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope3, Reflection.getOrCreateKotlinClass(AuthUseCase.class), null, function23, Kind.Factory, listEmptyList3, optionsMakeOptions$default2, null, 128, null));
        Function2 function24 = new Function2() { // from class: com.laborbook.auth.di.AuthModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return AuthModuleKt.authModule$lambda$4$lambda$3((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default3 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions4 = Definitions.INSTANCE;
        Qualifier rootScope4 = module.getRootScope();
        List listEmptyList4 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope4, Reflection.getOrCreateKotlinClass(AuthRepository.class), null, function24, Kind.Factory, listEmptyList4, optionsMakeOptions$default3, null, 128, null));
        return Unit.INSTANCE;
    }
}
