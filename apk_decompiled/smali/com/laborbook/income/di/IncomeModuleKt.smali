.class public final Lcom/laborbook/income/di/IncomeModuleKt;
.super Ljava/lang/Object;
.source "IncomeModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomeModule.kt\ncom/laborbook/income/di/IncomeModuleKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Definitions.kt\norg/koin/core/definition/Definitions\n+ 5 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n*L\n1#1,33:1\n136#2,5:34\n136#2,5:39\n136#2,5:44\n136#2,5:49\n136#2,5:54\n136#2,5:59\n136#2,5:64\n136#2,5:69\n136#2,5:74\n74#3,8:79\n82#3,2:102\n74#3,8:104\n82#3,2:127\n100#3,2:135\n102#3,2:152\n100#3,2:162\n102#3,2:179\n100#3,2:189\n102#3,2:206\n74#3,8:210\n82#3,2:233\n74#3,8:235\n82#3,2:258\n74#3,8:260\n82#3,2:283\n74#3,8:285\n82#3,2:308\n74#3,8:310\n82#3,2:333\n95#3,7:335\n102#3,2:357\n19#4,15:87\n19#4,15:112\n56#4,15:137\n56#4,15:164\n56#4,15:191\n19#4,15:218\n19#4,15:243\n19#4,15:268\n19#4,15:293\n19#4,15:318\n56#4,15:342\n33#5,6:129\n39#5,2:154\n33#5,6:156\n39#5,2:181\n33#5,6:183\n39#5,2:208\n*S KotlinDebug\n*F\n+ 1 IncomeModule.kt\ncom/laborbook/income/di/IncomeModuleKt\n*L\n22#1:34,5\n23#1:39,5\n24#1:44,5\n26#1:49,5\n27#1:54,5\n28#1:59,5\n29#1:64,5\n30#1:69,5\n32#1:74,5\n19#1:79,8\n19#1:102,2\n20#1:104,8\n20#1:127,2\n22#1:135,2\n22#1:152,2\n23#1:162,2\n23#1:179,2\n24#1:189,2\n24#1:206,2\n26#1:210,8\n26#1:233,2\n27#1:235,8\n27#1:258,2\n28#1:260,8\n28#1:283,2\n29#1:285,8\n29#1:308,2\n30#1:310,8\n30#1:333,2\n32#1:335,7\n32#1:357,2\n19#1:87,15\n20#1:112,15\n22#1:137,15\n23#1:164,15\n24#1:191,15\n26#1:218,15\n27#1:243,15\n28#1:268,15\n29#1:293,15\n30#1:318,15\n32#1:342,15\n22#1:129,6\n22#1:154,2\n23#1:156,6\n23#1:181,2\n24#1:183,6\n24#1:208,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "incomeModule",
        "Lorg/koin/core/module/Module;",
        "getIncomeModule",
        "()Lorg/koin/core/module/Module;",
        "income_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final incomeModule:Lorg/koin/core/module/Module;


# direct methods
.method public static synthetic $r8$lambda$1VjLmLNnzX2WogplWL5TG41a4c0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$6(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8d3oFUN1PaIdJhFjBXiYSm8_YvM(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$4(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G-EzLod4ftmyaok7xxDNrk8xzVc(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/DeleteTransactionUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$9(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K3G1KKFUXvnuJ0mz1dlovQtgcX0(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11(Lorg/koin/core/module/Module;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KG4LC3mNDo0xLDUW0gu7pDuUAyQ(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QOo_gEjtcBS6nkAwqs88rTDh9Bo(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V8HEXLLLql-V5HBz6ojdGlJmLpM(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/network/TransactionNetworkModule;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/network/TransactionNetworkModule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VLxCv4I-xZAx70YgM_96FXshUY8(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/repository/TransactionRepository;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$10(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/repository/TransactionRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VW87AhnXY3PljjV4OFvPEnMixzk(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/util/IncomeObserverUtil;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WcVPyCinuk1kwu4YjVWAieNmRH8(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionsUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$5(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aZCSLj1w29NOYpyVq2vjynUgLoA(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/CreateTransactionUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$7(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nx0O6cKYT3f1hwRBnvZf0DDzu7E(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/UpdateTransactionUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule$lambda$11$lambda$8(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getIncomeModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 18
    sget-object v0, Lcom/laborbook/income/di/IncomeModuleKt;->incomeModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method private static final incomeModule$lambda$11(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 27

    move-object/from16 v0, p0

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .line 86
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 99
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 94
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 95
    const-class v2, Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    .line 94
    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v13}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 103
    new-instance v18, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda5;

    invoke-direct/range {v18 .. v18}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda5;-><init>()V

    .line 110
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v21

    .line 111
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v15

    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .line 124
    sget-object v19, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 119
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 120
    const-class v3, Lcom/laborbook/income/util/IncomeObserverUtil;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/16 v23, 0x80

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object v14, v2

    .line 119
    invoke-direct/range {v14 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 22
    new-instance v8, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 135
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 136
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 141
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 149
    sget-object v9, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 144
    new-instance v15, Lorg/koin/core/definition/BeanDefinition;

    .line 145
    const-class v4, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object v4, v15

    .line 144
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v4, v15}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 154
    invoke-static {v15}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 23
    new-instance v20, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda7;

    invoke-direct/range {v20 .. v20}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda7;-><init>()V

    .line 162
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v23

    .line 163
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v17

    .line 168
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v22

    .line 176
    sget-object v21, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 171
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 172
    const-class v5, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    const/16 v25, 0x80

    const/16 v26, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    .line 171
    invoke-direct/range {v16 .. v26}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 181
    invoke-static {v4}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 24
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda8;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda8;-><init>()V

    .line 189
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 190
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 195
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 203
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 198
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 199
    const-class v5, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/4 v9, 0x0

    move-object v6, v4

    .line 198
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 208
    invoke-static {v4}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 209
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda9;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda9;-><init>()V

    .line 216
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 217
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 222
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 230
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 225
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 226
    const-class v5, Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v4

    .line 225
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 234
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda10;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda10;-><init>()V

    .line 241
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 242
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 247
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 255
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 250
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 251
    const-class v5, Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v4

    .line 250
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 259
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda11;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda11;-><init>()V

    .line 266
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 267
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 272
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 280
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 275
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 276
    const-class v5, Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v4

    .line 275
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 284
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda1;-><init>()V

    .line 291
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 292
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 297
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 305
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 300
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 301
    const-class v5, Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v4

    .line 300
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 309
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda2;-><init>()V

    .line 316
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 317
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 322
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 330
    sget-object v11, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 325
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 326
    const-class v5, Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v4

    .line 325
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 334
    new-instance v10, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/laborbook/income/di/IncomeModuleKt$$ExternalSyntheticLambda4;-><init>()V

    .line 340
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 341
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 346
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 354
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 349
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 350
    const-class v2, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 349
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final incomeModule$lambda$11$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/network/TransactionNetworkModule;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p0, Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-direct {p0}, Lcom/laborbook/income/network/TransactionNetworkModule;-><init>()V

    return-object p0
.end method

.method private static final incomeModule$lambda$11$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/util/IncomeObserverUtil;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p0, Lcom/laborbook/income/util/IncomeObserverUtil;

    invoke-direct {p0}, Lcom/laborbook/income/util/IncomeObserverUtil;-><init>()V

    return-object p0
.end method

.method private static final incomeModule$lambda$11$lambda$10(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/repository/TransactionRepository;
    .locals 2

    const-string v0, "$this$factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;

    .line 78
    const-class v0, Lcom/laborbook/income/network/TransactionNetworkModule;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/network/TransactionNetworkModule;

    .line 32
    invoke-direct {p1, p0}, Lcom/laborbook/income/repository/TransactionRepositoryImplementation;-><init>(Lcom/laborbook/income/network/TransactionNetworkModule;)V

    check-cast p1, Lcom/laborbook/income/repository/TransactionRepository;

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;
    .locals 3

    const-string v0, "$this$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;

    .line 38
    const-class v0, Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    const-class v2, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/base/datastore/DataStoreManager;

    .line 22
    invoke-direct {p1, v0, p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;-><init>(Lcom/laborbook/income/usecase/GetTransactionsUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;
    .locals 3

    const-string v0, "$this$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;

    .line 43
    const-class v0, Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;

    const-class v2, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/base/datastore/DataStoreManager;

    .line 23
    invoke-direct {p1, v0, p0}, Lcom/laborbook/income/screen/home/viewmodel/TransactionSummaryViewModel;-><init>(Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$4(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;
    .locals 5

    const-string v0, "$this$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;

    .line 48
    const-class v0, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    const-class v2, Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    const-class v3, Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    const-class v4, Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    .line 24
    invoke-direct {p1, v0, v2, v3, p0}, Lcom/laborbook/income/screen/cashentry/viewmodel/CashInOutViewModel;-><init>(Lcom/laborbook/base/datastore/DataStoreManager;Lcom/laborbook/income/usecase/CreateTransactionUseCase;Lcom/laborbook/income/usecase/UpdateTransactionUseCase;Lcom/laborbook/income/usecase/DeleteTransactionUseCase;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$5(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionsUseCase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/laborbook/income/usecase/GetTransactionsUseCase;

    .line 53
    const-class v0, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/repository/TransactionRepository;

    .line 26
    invoke-direct {p1, p0}, Lcom/laborbook/income/usecase/GetTransactionsUseCase;-><init>(Lcom/laborbook/income/repository/TransactionRepository;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$6(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p1, Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;

    .line 58
    const-class v0, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/repository/TransactionRepository;

    .line 27
    invoke-direct {p1, p0}, Lcom/laborbook/income/usecase/GetTransactionSummaryUseCase;-><init>(Lcom/laborbook/income/repository/TransactionRepository;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$7(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/CreateTransactionUseCase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lcom/laborbook/income/usecase/CreateTransactionUseCase;

    .line 63
    const-class v0, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/repository/TransactionRepository;

    .line 28
    invoke-direct {p1, p0}, Lcom/laborbook/income/usecase/CreateTransactionUseCase;-><init>(Lcom/laborbook/income/repository/TransactionRepository;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$8(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/UpdateTransactionUseCase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/laborbook/income/usecase/UpdateTransactionUseCase;

    .line 68
    const-class v0, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/repository/TransactionRepository;

    .line 29
    invoke-direct {p1, p0}, Lcom/laborbook/income/usecase/UpdateTransactionUseCase;-><init>(Lcom/laborbook/income/repository/TransactionRepository;)V

    return-object p1
.end method

.method private static final incomeModule$lambda$11$lambda$9(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/income/usecase/DeleteTransactionUseCase;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance p1, Lcom/laborbook/income/usecase/DeleteTransactionUseCase;

    .line 73
    const-class v0, Lcom/laborbook/income/repository/TransactionRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/income/repository/TransactionRepository;

    .line 30
    invoke-direct {p1, p0}, Lcom/laborbook/income/usecase/DeleteTransactionUseCase;-><init>(Lcom/laborbook/income/repository/TransactionRepository;)V

    return-object p1
.end method
