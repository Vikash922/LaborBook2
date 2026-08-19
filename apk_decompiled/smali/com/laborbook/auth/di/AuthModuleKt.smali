.class public final Lcom/laborbook/auth/di/AuthModuleKt;
.super Ljava/lang/Object;
.source "AuthModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthModule.kt\ncom/laborbook/auth/di/AuthModuleKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Definitions.kt\norg/koin/core/definition/Definitions\n+ 5 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n*L\n1#1,27:1\n136#2,5:28\n136#2,5:33\n136#2,5:38\n74#3,8:43\n82#3,2:66\n100#3,2:74\n102#3,2:91\n95#3,7:95\n102#3,2:117\n95#3,7:119\n102#3,2:141\n19#4,15:51\n56#4,15:76\n56#4,15:102\n56#4,15:126\n33#5,6:68\n39#5,2:93\n*S KotlinDebug\n*F\n+ 1 AuthModule.kt\ncom/laborbook/auth/di/AuthModuleKt\n*L\n20#1:28,5\n23#1:33,5\n26#1:38,5\n17#1:43,8\n17#1:66,2\n20#1:74,2\n20#1:91,2\n23#1:95,7\n23#1:117,2\n26#1:119,7\n26#1:141,2\n17#1:51,15\n20#1:76,15\n23#1:102,15\n26#1:126,15\n20#1:68,6\n20#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "authModule",
        "Lorg/koin/core/module/Module;",
        "getAuthModule",
        "()Lorg/koin/core/module/Module;",
        "auth_release"
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
.field private static final authModule:Lorg/koin/core/module/Module;


# direct methods
.method public static synthetic $r8$lambda$5g5bOHI4erHNvU6JPDqM-268liA(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/repository/AuthRepository;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/di/AuthModuleKt;->authModule$lambda$4$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/repository/AuthRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KsMvWd9rD-ROiPPcXl1qltJOf8c(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/auth/di/AuthModuleKt;->authModule$lambda$4(Lorg/koin/core/module/Module;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n3sliT3ShSS7ru0L77WeNBJ7U7g(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/network/AuthNetworkModule;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/di/AuthModuleKt;->authModule$lambda$4$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/network/AuthNetworkModule;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rQrYTO0wTf055iNyjgaD9SDNI_c(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/di/AuthModuleKt;->authModule$lambda$4$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yp5IsXqfe6WgxlNe9l-EO4UPDsw(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/usecase/AuthUseCase;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/auth/di/AuthModuleKt;->authModule$lambda$4$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/usecase/AuthUseCase;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/laborbook/auth/di/AuthModuleKt;->authModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method private static final authModule$lambda$4(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .line 50
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 63
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 58
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 59
    const-class v2, Lcom/laborbook/auth/network/AuthNetworkModule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    .line 58
    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v13}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 20
    new-instance v18, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda1;

    invoke-direct/range {v18 .. v18}, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 74
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v21

    .line 75
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v15

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .line 88
    sget-object v19, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 83
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 84
    const-class v5, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/16 v23, 0x80

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object v14, v4

    .line 83
    invoke-direct/range {v14 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 93
    invoke-static {v4}, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;->setIsViewModel(Lorg/koin/core/definition/BeanDefinition;)V

    .line 94
    new-instance v10, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda2;-><init>()V

    .line 100
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 101
    sget-object v4, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 114
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 109
    new-instance v4, Lorg/koin/core/definition/BeanDefinition;

    .line 110
    const-class v5, Lcom/laborbook/auth/usecase/AuthUseCase;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v6, v4

    .line 109
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 118
    new-instance v10, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lcom/laborbook/auth/di/AuthModuleKt$$ExternalSyntheticLambda3;-><init>()V

    .line 124
    invoke-static {v0, v1, v1, v2, v3}, Lorg/koin/core/module/Module;->makeOptions$default(Lorg/koin/core/module/Module;ZZILjava/lang/Object;)Lorg/koin/core/definition/Options;

    move-result-object v13

    .line 125
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 138
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 133
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 134
    const-class v2, Lcom/laborbook/auth/repository/AuthRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 133
    invoke-direct/range {v6 .. v16}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final authModule$lambda$4$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/network/AuthNetworkModule;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p0, Lcom/laborbook/auth/network/AuthNetworkModule;

    invoke-direct {p0}, Lcom/laborbook/auth/network/AuthNetworkModule;-><init>()V

    return-object p0
.end method

.method private static final authModule$lambda$4$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;
    .locals 2

    const-string v0, "$this$viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;

    .line 32
    const-class v0, Lcom/laborbook/auth/usecase/AuthUseCase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/usecase/AuthUseCase;

    .line 20
    invoke-direct {p1, p0}, Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;-><init>(Lcom/laborbook/auth/usecase/AuthUseCase;)V

    return-object p1
.end method

.method private static final authModule$lambda$4$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/usecase/AuthUseCase;
    .locals 2

    const-string v0, "$this$factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;

    .line 37
    const-class v0, Lcom/laborbook/auth/repository/AuthRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/repository/AuthRepository;

    .line 23
    invoke-direct {p1, p0}, Lcom/laborbook/auth/usecase/AuthUseCaseImplementation;-><init>(Lcom/laborbook/auth/repository/AuthRepository;)V

    check-cast p1, Lcom/laborbook/auth/usecase/AuthUseCase;

    return-object p1
.end method

.method private static final authModule$lambda$4$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/auth/repository/AuthRepository;
    .locals 2

    const-string v0, "$this$factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/laborbook/auth/repository/AuthRepositoryImplementation;

    .line 42
    const-class v0, Lcom/laborbook/auth/network/AuthNetworkModule;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/auth/network/AuthNetworkModule;

    .line 26
    invoke-direct {p1, p0}, Lcom/laborbook/auth/repository/AuthRepositoryImplementation;-><init>(Lcom/laborbook/auth/network/AuthNetworkModule;)V

    check-cast p1, Lcom/laborbook/auth/repository/AuthRepository;

    return-object p1
.end method

.method public static final getAuthModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/auth/di/AuthModuleKt;->authModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
