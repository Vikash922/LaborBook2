.class public final Lcom/laborbook/di/AppModuleKt;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppModule.kt\ncom/laborbook/di/AppModuleKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Definitions.kt\norg/koin/core/definition/Definitions\n*L\n1#1,30:1\n136#2,5:31\n136#2,5:36\n136#2,5:41\n74#3,8:46\n82#3,2:69\n74#3,8:71\n82#3,2:94\n74#3,8:96\n82#3,2:119\n74#3,8:121\n82#3,2:144\n74#3,8:146\n82#3,2:169\n74#3,8:171\n82#3,2:194\n74#3,8:196\n82#3,2:219\n74#3,8:221\n82#3,2:244\n19#4,15:54\n19#4,15:79\n19#4,15:104\n19#4,15:129\n19#4,15:154\n19#4,15:179\n19#4,15:204\n19#4,15:229\n*S KotlinDebug\n*F\n+ 1 AppModule.kt\ncom/laborbook/di/AppModuleKt\n*L\n24#1:31,5\n25#1:36,5\n29#1:41,5\n20#1:46,8\n20#1:69,2\n21#1:71,8\n21#1:94,2\n22#1:96,8\n22#1:119,2\n23#1:121,8\n23#1:144,2\n24#1:146,8\n24#1:169,2\n25#1:171,8\n25#1:194,2\n28#1:196,8\n28#1:219,2\n29#1:221,8\n29#1:244,2\n20#1:54,15\n21#1:79,15\n22#1:104,15\n23#1:129,15\n24#1:154,15\n25#1:179,15\n28#1:204,15\n29#1:229,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "appModule",
        "Lorg/koin/core/module/Module;",
        "getAppModule",
        "()Lorg/koin/core/module/Module;",
        "app_release"
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
.field private static final appModule:Lorg/koin/core/module/Module;


# direct methods
.method public static synthetic $r8$lambda$2q6VEZddJoMJ49Uwg79VWkDd1EA(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/analytics/Analytics;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$5(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/analytics/Analytics;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$35FNrX0-OqfaoWULDrbvsRGdsHE(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdManager;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$7(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6JH_OPBtUR-HDM08Py23_Ct7bpM(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/ModuleNavigator;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/ModuleNavigator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D0ucOXkOcXO1jdPW023_MGHF3k0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/boilerplate/analytics/AnalyticsManager;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$4(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/boilerplate/analytics/AnalyticsManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mwx-OhOPUVJc8AoUkOpLTg9rrNw(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ToMsMICC7wXGRemb2ztDSVxLsEU(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8(Lorg/koin/core/module/Module;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uc5VCXDhs_fJ49sQQbrMg4o-4aU(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdProvider;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$6(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aGL-76HeZh9cY5cPmigbJMWgCBo(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cBOhOzYepftwxXy0gon0PfVMHFg(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/languagemanager/LanguageManager;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/di/AppModuleKt;->appModule$lambda$8$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/languagemanager/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/laborbook/di/AppModuleKt;->appModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method private static final appModule$lambda$8(Lorg/koin/core/module/Module;)Lkotlin/Unit;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "$this$module"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v9

    .line 53
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v3

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 66
    sget-object v7, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 61
    new-instance v13, Lorg/koin/core/definition/BeanDefinition;

    .line 62
    const-class v2, Lcom/laborbook/base/languagemanager/LanguageManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    .line 61
    invoke-direct/range {v2 .. v12}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v2, v13}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 70
    new-instance v18, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda2;

    invoke-direct/range {v18 .. v18}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda2;-><init>()V

    .line 77
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v21

    .line 78
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v15

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    .line 91
    sget-object v19, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 86
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 87
    const-class v3, Lcom/laborbook/base/navigator/ModuleNavigator;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/16 v23, 0x80

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-object v14, v2

    .line 86
    invoke-direct/range {v14 .. v24}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 95
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda3;-><init>()V

    .line 102
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 103
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 116
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 111
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 112
    const-class v3, Lcom/laborbook/base/navigator/FragmentNavigator;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    .line 111
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 120
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda4;-><init>()V

    .line 127
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 128
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 141
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 136
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 137
    const-class v3, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v2

    .line 136
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 145
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda5;-><init>()V

    .line 152
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 153
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 166
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 161
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 162
    const-class v3, Lcom/boilerplate/analytics/AnalyticsManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v2

    .line 161
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 170
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda6;-><init>()V

    .line 177
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 178
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 183
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 191
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 186
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 187
    const-class v3, Lcom/laborbook/base/analytics/Analytics;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v2

    .line 186
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 195
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda7;-><init>()V

    .line 202
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 203
    sget-object v2, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 208
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 216
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 211
    new-instance v2, Lorg/koin/core/definition/BeanDefinition;

    .line 212
    const-class v3, Lcom/laborbook/base/ads/CustomAdProvider;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v2

    .line 211
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 220
    new-instance v8, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda8;

    invoke-direct {v8}, Lcom/laborbook/di/AppModuleKt$$ExternalSyntheticLambda8;-><init>()V

    .line 227
    invoke-virtual {v0, v1, v1}, Lorg/koin/core/module/Module;->makeOptions(ZZ)Lorg/koin/core/definition/Options;

    move-result-object v11

    .line 228
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getRootScope()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v5

    .line 233
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 241
    sget-object v9, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    .line 236
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 237
    const-class v2, Lcom/laborbook/base/ads/CustomAdManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v1

    .line 236
    invoke-direct/range {v4 .. v14}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;Lorg/koin/core/definition/Options;Lorg/koin/core/definition/Properties;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/module/Module;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/koin/core/module/ModuleKt;->addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V

    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final appModule$lambda$8$lambda$0(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/languagemanager/LanguageManager;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p0, Lcom/laborbook/base/languagemanager/LanguageManager;

    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageManager;-><init>()V

    return-object p0
.end method

.method private static final appModule$lambda$8$lambda$1(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/ModuleNavigator;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/laborbook/base/navigator/ModuleNavigator;

    sget-object p1, Lcom/laborbook/AddressGenerator;->INSTANCE:Lcom/laborbook/AddressGenerator;

    invoke-virtual {p1}, Lcom/laborbook/AddressGenerator;->generateAddressList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/laborbook/base/navigator/ModuleNavigator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static final appModule$lambda$8$lambda$2(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p0, Lcom/laborbook/base/navigator/FragmentNavigator;

    invoke-direct {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;-><init>()V

    return-object p0
.end method

.method private static final appModule$lambda$8$lambda$3(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {p0}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/laborbook/base/datastore/DataStoreManager;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static final appModule$lambda$8$lambda$4(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/boilerplate/analytics/AnalyticsManager;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/boilerplate/analytics/AnalyticsManagerImpl;->Companion:Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;

    .line 35
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 24
    invoke-virtual {p1, p0}, Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;->getInstance(Landroid/content/Context;)Lcom/boilerplate/analytics/AnalyticsManagerImpl;

    move-result-object p0

    check-cast p0, Lcom/boilerplate/analytics/AnalyticsManager;

    return-object p0
.end method

.method private static final appModule$lambda$8$lambda$5(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/analytics/Analytics;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lcom/laborbook/base/analytics/Analytics;

    .line 40
    const-class v0, Lcom/boilerplate/analytics/AnalyticsManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boilerplate/analytics/AnalyticsManager;

    const-class v2, Lcom/laborbook/base/datastore/DataStoreManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/base/datastore/DataStoreManager;

    .line 25
    invoke-direct {p1, v0, p0}, Lcom/laborbook/base/analytics/Analytics;-><init>(Lcom/boilerplate/analytics/AnalyticsManager;Lcom/laborbook/base/datastore/DataStoreManager;)V

    return-object p1
.end method

.method private static final appModule$lambda$8$lambda$6(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdProvider;
    .locals 1

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/laborbook/ads/FirebaseCustomAdProvider;

    invoke-direct {p0}, Lcom/laborbook/ads/FirebaseCustomAdProvider;-><init>()V

    check-cast p0, Lcom/laborbook/base/ads/CustomAdProvider;

    return-object p0
.end method

.method private static final appModule$lambda$8$lambda$7(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/base/ads/CustomAdManager;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/laborbook/base/ads/CustomAdManager;

    .line 45
    const-class v0, Lcom/laborbook/base/ads/CustomAdProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/laborbook/base/ads/CustomAdProvider;

    .line 29
    invoke-direct {p1, p0}, Lcom/laborbook/base/ads/CustomAdManager;-><init>(Lcom/laborbook/base/ads/CustomAdProvider;)V

    return-object p1
.end method

.method public static final getAppModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 17
    sget-object v0, Lcom/laborbook/di/AppModuleKt;->appModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
