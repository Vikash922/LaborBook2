package com.laborbook.expense.di;

import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.expense.network.TransactionNetworkModule;
import com.laborbook.expense.repository.TransactionRepository;
import com.laborbook.expense.repository.TransactionRepositoryImplementation;
import com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel;
import com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel;
import com.laborbook.expense.screen.home.viewmodel.TransactionsViewModel;
import com.laborbook.expense.usecase.CreateTransactionUseCase;
import com.laborbook.expense.usecase.DeleteTransactionUseCase;
import com.laborbook.expense.usecase.GetTransactionSummaryUseCase;
import com.laborbook.expense.usecase.GetTransactionsUseCase;
import com.laborbook.expense.usecase.UpdateTransactionUseCase;
import com.laborbook.expense.util.ExpenseObserverUtil;
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

/* JADX INFO: compiled from: TransactionModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"expenseModule", "Lorg/koin/core/module/Module;", "getExpenseModule", "()Lorg/koin/core/module/Module;", "expense_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TransactionModuleKt {
    private static final Module expenseModule = ModuleKt.module$default(false, false, new Function1() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return TransactionModuleKt.expenseModule$lambda$11((Module) obj);
        }
    }, 3, null);

    public static final Module getExpenseModule() {
        return expenseModule;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionNetworkModule expenseModule$lambda$11$lambda$0(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TransactionNetworkModule();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExpenseObserverUtil expenseModule$lambda$11$lambda$1(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ExpenseObserverUtil();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionsViewModel expenseModule$lambda$11$lambda$2(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TransactionsViewModel((GetTransactionsUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(GetTransactionsUseCase.class), null, null), (DataStoreManager) viewModel.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionSummaryViewModel expenseModule$lambda$11$lambda$3(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TransactionSummaryViewModel((GetTransactionSummaryUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(GetTransactionSummaryUseCase.class), null, null), (DataStoreManager) viewModel.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CashInOutViewModel expenseModule$lambda$11$lambda$4(Scope viewModel, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CashInOutViewModel((DataStoreManager) viewModel.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), null, null), (CreateTransactionUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(CreateTransactionUseCase.class), null, null), (UpdateTransactionUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(UpdateTransactionUseCase.class), null, null), (DeleteTransactionUseCase) viewModel.get(Reflection.getOrCreateKotlinClass(DeleteTransactionUseCase.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetTransactionsUseCase expenseModule$lambda$11$lambda$5(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new GetTransactionsUseCase((TransactionRepository) single.get(Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetTransactionSummaryUseCase expenseModule$lambda$11$lambda$6(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new GetTransactionSummaryUseCase((TransactionRepository) single.get(Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CreateTransactionUseCase expenseModule$lambda$11$lambda$7(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new CreateTransactionUseCase((TransactionRepository) single.get(Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UpdateTransactionUseCase expenseModule$lambda$11$lambda$8(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new UpdateTransactionUseCase((TransactionRepository) single.get(Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeleteTransactionUseCase expenseModule$lambda$11$lambda$9(Scope single, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new DeleteTransactionUseCase((TransactionRepository) single.get(Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TransactionRepository expenseModule$lambda$11$lambda$10(Scope factory, DefinitionParameters it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new TransactionRepositoryImplementation((TransactionNetworkModule) factory.get(Reflection.getOrCreateKotlinClass(TransactionNetworkModule.class), null, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit expenseModule$lambda$11(Module module) {
        Intrinsics.checkNotNullParameter(module, "$this$module");
        Function2 function2 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$0((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions = module.makeOptions(false, false);
        Definitions definitions = Definitions.INSTANCE;
        Qualifier rootScope = module.getRootScope();
        List listEmptyList = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope, Reflection.getOrCreateKotlinClass(TransactionNetworkModule.class), null, function2, Kind.Single, listEmptyList, optionsMakeOptions, null, 128, null));
        Function2 function22 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$1((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions2 = module.makeOptions(false, false);
        Definitions definitions2 = Definitions.INSTANCE;
        Qualifier rootScope2 = module.getRootScope();
        List listEmptyList2 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope2, Reflection.getOrCreateKotlinClass(ExpenseObserverUtil.class), null, function22, Kind.Single, listEmptyList2, optionsMakeOptions2, null, 128, null));
        Function2 function23 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$2((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions3 = Definitions.INSTANCE;
        Qualifier rootScope3 = module.getRootScope();
        List listEmptyList3 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition = new BeanDefinition(rootScope3, Reflection.getOrCreateKotlinClass(TransactionsViewModel.class), null, function23, Kind.Factory, listEmptyList3, optionsMakeOptions$default, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition);
        ModuleExtKt.setIsViewModel(beanDefinition);
        Function2 function24 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$3((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default2 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions4 = Definitions.INSTANCE;
        Qualifier rootScope4 = module.getRootScope();
        List listEmptyList4 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition2 = new BeanDefinition(rootScope4, Reflection.getOrCreateKotlinClass(TransactionSummaryViewModel.class), null, function24, Kind.Factory, listEmptyList4, optionsMakeOptions$default2, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition2);
        ModuleExtKt.setIsViewModel(beanDefinition2);
        Function2 function25 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$4((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default3 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions5 = Definitions.INSTANCE;
        Qualifier rootScope5 = module.getRootScope();
        List listEmptyList5 = CollectionsKt.emptyList();
        BeanDefinition beanDefinition3 = new BeanDefinition(rootScope5, Reflection.getOrCreateKotlinClass(CashInOutViewModel.class), null, function25, Kind.Factory, listEmptyList5, optionsMakeOptions$default3, null, 128, null);
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), beanDefinition3);
        ModuleExtKt.setIsViewModel(beanDefinition3);
        Function2 function26 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$5((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions3 = module.makeOptions(false, false);
        Definitions definitions6 = Definitions.INSTANCE;
        Qualifier rootScope6 = module.getRootScope();
        List listEmptyList6 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope6, Reflection.getOrCreateKotlinClass(GetTransactionsUseCase.class), null, function26, Kind.Single, listEmptyList6, optionsMakeOptions3, null, 128, null));
        Function2 function27 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$6((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions4 = module.makeOptions(false, false);
        Definitions definitions7 = Definitions.INSTANCE;
        Qualifier rootScope7 = module.getRootScope();
        List listEmptyList7 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope7, Reflection.getOrCreateKotlinClass(GetTransactionSummaryUseCase.class), null, function27, Kind.Single, listEmptyList7, optionsMakeOptions4, null, 128, null));
        Function2 function28 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$7((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions5 = module.makeOptions(false, false);
        Definitions definitions8 = Definitions.INSTANCE;
        Qualifier rootScope8 = module.getRootScope();
        List listEmptyList8 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope8, Reflection.getOrCreateKotlinClass(CreateTransactionUseCase.class), null, function28, Kind.Single, listEmptyList8, optionsMakeOptions5, null, 128, null));
        Function2 function29 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$8((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions6 = module.makeOptions(false, false);
        Definitions definitions9 = Definitions.INSTANCE;
        Qualifier rootScope9 = module.getRootScope();
        List listEmptyList9 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope9, Reflection.getOrCreateKotlinClass(UpdateTransactionUseCase.class), null, function29, Kind.Single, listEmptyList9, optionsMakeOptions6, null, 128, null));
        Function2 function210 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$9((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions7 = module.makeOptions(false, false);
        Definitions definitions10 = Definitions.INSTANCE;
        Qualifier rootScope10 = module.getRootScope();
        List listEmptyList10 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope10, Reflection.getOrCreateKotlinClass(DeleteTransactionUseCase.class), null, function210, Kind.Single, listEmptyList10, optionsMakeOptions7, null, 128, null));
        Function2 function211 = new Function2() { // from class: com.laborbook.expense.di.TransactionModuleKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TransactionModuleKt.expenseModule$lambda$11$lambda$10((Scope) obj, (DefinitionParameters) obj2);
            }
        };
        Options optionsMakeOptions$default4 = Module.makeOptions$default(module, false, false, 2, null);
        Definitions definitions11 = Definitions.INSTANCE;
        Qualifier rootScope11 = module.getRootScope();
        List listEmptyList11 = CollectionsKt.emptyList();
        org.koin.core.module.ModuleKt.addDefinition(module.getDefinitions(), new BeanDefinition(rootScope11, Reflection.getOrCreateKotlinClass(TransactionRepository.class), null, function211, Kind.Factory, listEmptyList11, optionsMakeOptions$default4, null, 128, null));
        return Unit.INSTANCE;
    }
}
