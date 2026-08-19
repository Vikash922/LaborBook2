package com.rebuilt.app.keep.di;

import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.database.AppDatabase;
import com.rebuilt.app.keep.network.KeepNetworkModule;
import com.rebuilt.app.keep.repository.KeepRepository;
import com.rebuilt.app.keep.repository.KeepRepositoryImplementation;
import com.rebuilt.app.keep.repository.SubscriptionRepository;
import com.rebuilt.app.keep.repository.SubscriptionRepositoryImpl;
import com.rebuilt.app.keep.screen.addstaff.model.ContactDatabase;
import com.rebuilt.app.keep.screen.addstaff.viewmodel.ContactsViewModel;
import com.rebuilt.app.keep.screen.advance.viewmodel.AddAdvanceViewModel;
import com.rebuilt.app.keep.screen.calendar.utils.ObserverUtil;
import com.rebuilt.app.keep.screen.calendar.viewmodel.CalendarViewModel;
import com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel;
import com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel;
import com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel;
import com.rebuilt.app.keep.screen.premium.PremiumOfferManager;
import com.rebuilt.app.keep.screen.premium.viewmodel.SubscriptionViewModel;
import com.rebuilt.app.keep.screen.profile.viewmodel.EditProfileViewModel;
import com.rebuilt.app.keep.screen.profile.viewmodel.UserProfileViewModel;
import com.rebuilt.app.keep.usecase.KeepUseCase;
import com.rebuilt.app.keep.usecase.KeepUseCaseImplementation;
import com.rebuilt.app.keep.usecase.SubscriptionUseCase;
import com.rebuilt.app.keep.usecase.SubscriptionUseCaseImpl;
import com.rebuilt.app.keep.utils.CoachMarkManager;
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

/* JADX INFO: compiled from: KeepModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"keepModule", "Lorg/koin/core/module/Module;", "getKeepModule", "()Lorg/koin/core/module/Module;", "keep_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class KeepModuleKt {
    private static final Module keepModule = ModuleKt.module$default(false, false, new Function1() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return KeepModuleKt.keepModule$lambda$17((Module) obj);
        }
    }, 3, null);

    public static final Module getKeepModule() {
        return keepModule;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KeepNetworkModule keepModule$lambda$17$lambda$0(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new KeepNetworkModule(AppDatabase.INSTANCE.getDatabase(ModuleExtKt.androidContext(single)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObserverUtil keepModule$lambda$17$lambda$1(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ObserverUtil();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoachMarkManager keepModule$lambda$17$lambda$2(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CoachMarkManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PremiumOfferManager keepModule$lambda$17$lambda$3(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new PremiumOfferManager((DataStoreManager) single.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ContactsViewModel keepModule$lambda$17$lambda$4(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ContactsViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StaffsViewModel keepModule$lambda$17$lambda$5(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new StaffsViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CalendarViewModel keepModule$lambda$17$lambda$6(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CalendarViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UserProfileViewModel keepModule$lambda$17$lambda$7(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new UserProfileViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AddAdvanceViewModel keepModule$lambda$17$lambda$8(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new AddAdvanceViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeleteStaffViewModel keepModule$lambda$17$lambda$9(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new DeleteStaffViewModel((KeepUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OvertimeViewModel keepModule$lambda$17$lambda$10(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new OvertimeViewModel((KeepRepository) viewModel.get(Reflection.getOrCreateKotlinClass(KeepRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditProfileViewModel keepModule$lambda$17$lambda$11(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new EditProfileViewModel((KeepRepository) viewModel.get(Reflection.getOrCreateKotlinClass(KeepRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionViewModel keepModule$lambda$17$lambda$12(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SubscriptionViewModel((SubscriptionUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(SubscriptionUseCase.class), null, null), (PremiumOfferManager) viewModel.get(Reflection.getOrCreateKotlinClass(PremiumOfferManager.class), null, null), (DataStoreManager) viewModel.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KeepUseCase keepModule$lambda$17$lambda$13(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new KeepUseCaseImplementation((KeepRepository) factory.get(Reflection.getOrCreateKotlinClass(KeepRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionUseCase keepModule$lambda$17$lambda$14(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SubscriptionUseCaseImpl((SubscriptionRepository) factory.get(Reflection.getOrCreateKotlinClass(SubscriptionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KeepRepository keepModule$lambda$17$lambda$15(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new KeepRepositoryImplementation((KeepNetworkModule) factory.get(Reflection.getOrCreateKotlinClass(KeepNetworkModule.class), null, null), ContactDatabase.INSTANCE.getDatabase(ModuleExtKt.androidContext(factory)).contactDao());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubscriptionRepository keepModule$lambda$17$lambda$16(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new SubscriptionRepositoryImpl((KeepNetworkModule) factory.get(Reflection.getOrCreateKotlinClass(KeepNetworkModule.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit keepModule$lambda$17(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$0((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions = module.makeOptions(false, false);
        Definitions definitions = Definitions.INSTANCE;
        Qualifier rootScope = module.getRootScope();
        List listEmptyList = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(KeepNetworkModule.class), null, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
        Function2 function22 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$1((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions2 = module.makeOptions(false, false);
        Definitions definitions2 = Definitions.INSTANCE;
        Qualifier rootScope2 = module.getRootScope();
        List listEmptyList2 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope2, Reflection.getOrCreateKotlinClass(ObserverUtil.class), null, function22, Kind.Single, listEmptyList2, optionsMakeOptions2, null, 128, null));
        Function2 function23 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$2((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions3 = module.makeOptions(false, false);
        Definitions definitions3 = Definitions.INSTANCE;
        Qualifier rootScope3 = module.getRootScope();
        List listEmptyList3 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope3, Reflection.getOrCreateKotlinClass(CoachMarkManager.class), null, function23, Kind.Single, listEmptyList3, optionsMakeOptions3, null, 128, null));
        Function2 function24 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$3((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions4 = module.makeOptions(false, false);
        Definitions definitions4 = Definitions.INSTANCE;
        Qualifier rootScope4 = module.getRootScope();
        List listEmptyList4 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope4, Reflection.getOrCreateKotlinClass(PremiumOfferManager.class), null, function24, Kind.Single, listEmptyList4, optionsMakeOptions4, null, 128, null));
        Function2 function25 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$4((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions5 = Definitions.INSTANCE;
        Qualifier rootScope5 = module.getRootScope();
        List listEmptyList5 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition = new BeanDefinition(rootScope5, Reflection.getOrCreateKotlinClass(ContactsViewModel.class), null, function25, Kind.Factory, listEmptyList5, optionsMakeOptions$default, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition);
        Function2 function26 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$5((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default2 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions6 = Definitions.INSTANCE;
        Qualifier rootScope6 = module.getRootScope();
        List listEmptyList6 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition2 = new BeanDefinition(rootScope6, Reflection.getOrCreateKotlinClass(StaffsViewModel.class), null, function26, Kind.Factory, listEmptyList6, optionsMakeOptions$default2, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition2);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition2);
        Function2 function27 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$6((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default3 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions7 = Definitions.INSTANCE;
        Qualifier rootScope7 = module.getRootScope();
        List listEmptyList7 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition3 = new BeanDefinition(rootScope7, Reflection.getOrCreateKotlinClass(CalendarViewModel.class), null, function27, Kind.Factory, listEmptyList7, optionsMakeOptions$default3, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition3);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition3);
        Function2 function28 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$7((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default4 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions8 = Definitions.INSTANCE;
        Qualifier rootScope8 = module.getRootScope();
        List listEmptyList8 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition4 = new BeanDefinition(rootScope8, Reflection.getOrCreateKotlinClass(UserProfileViewModel.class), null, function28, Kind.Factory, listEmptyList8, optionsMakeOptions$default4, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition4);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition4);
        Function2 function29 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$8((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default5 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions9 = Definitions.INSTANCE;
        Qualifier rootScope9 = module.getRootScope();
        List listEmptyList9 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition5 = new BeanDefinition(rootScope9, Reflection.getOrCreateKotlinClass(AddAdvanceViewModel.class), null, function29, Kind.Factory, listEmptyList9, optionsMakeOptions$default5, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition5);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition5);
        Function2 function210 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$9((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default6 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions10 = Definitions.INSTANCE;
        Qualifier rootScope10 = module.getRootScope();
        List listEmptyList10 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition6 = new BeanDefinition(rootScope10, Reflection.getOrCreateKotlinClass(DeleteStaffViewModel.class), null, function210, Kind.Factory, listEmptyList10, optionsMakeOptions$default6, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition6);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition6);
        Function2 function211 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$10((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default7 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions11 = Definitions.INSTANCE;
        Qualifier rootScope11 = module.getRootScope();
        List listEmptyList11 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition7 = new BeanDefinition(rootScope11, Reflection.getOrCreateKotlinClass(OvertimeViewModel.class), null, function211, Kind.Factory, listEmptyList11, optionsMakeOptions$default7, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition7);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition7);
        Function2 function212 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$11((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default8 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions12 = Definitions.INSTANCE;
        Qualifier rootScope12 = module.getRootScope();
        List listEmptyList12 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition8 = new BeanDefinition(rootScope12, Reflection.getOrCreateKotlinClass(EditProfileViewModel.class), null, function212, Kind.Factory, listEmptyList12, optionsMakeOptions$default8, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition8);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition8);
        Function2 function213 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$12((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default9 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions13 = Definitions.INSTANCE;
        Qualifier rootScope13 = module.getRootScope();
        List listEmptyList13 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition9 = new BeanDefinition(rootScope13, Reflection.getOrCreateKotlinClass(SubscriptionViewModel.class), null, function213, Kind.Factory, listEmptyList13, optionsMakeOptions$default9, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition9);
        org.koin.androidx.viewmodel.dsl.ModuleExtKt.setIsViewModel(beanDefinition9);
        Function2 function214 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$13((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default10 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions14 = Definitions.INSTANCE;
        Qualifier rootScope14 = module.getRootScope();
        List listEmptyList14 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope14, Reflection.getOrCreateKotlinClass(KeepUseCase.class), null, function214, Kind.Factory, listEmptyList14, optionsMakeOptions$default10, null, 128, null));
        Function2 function215 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$14((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default11 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions15 = Definitions.INSTANCE;
        Qualifier rootScope15 = module.getRootScope();
        List listEmptyList15 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope15, Reflection.getOrCreateKotlinClass(SubscriptionUseCase.class), null, function215, Kind.Factory, listEmptyList15, optionsMakeOptions$default11, null, 128, null));
        Function2 function216 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$15((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default12 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions16 = Definitions.INSTANCE;
        Qualifier rootScope16 = module.getRootScope();
        List listEmptyList16 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope16, Reflection.getOrCreateKotlinClass(KeepRepository.class), null, function216, Kind.Factory, listEmptyList16, optionsMakeOptions$default12, null, 128, null));
        Function2 function217 = new Function2() { // from class: com.rebuilt.app.keep.di.KeepModuleKt$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return KeepModuleKt.keepModule$lambda$17$lambda$16((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default13 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions17 = Definitions.INSTANCE;
        Qualifier rootScope17 = module.getRootScope();
        List listEmptyList17 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope17, Reflection.getOrCreateKotlinClass(SubscriptionRepository.class), null, function217, Kind.Factory, listEmptyList17, optionsMakeOptions$default13, null, 128, null));
        return Unit.INSTANCE;
    }
}
