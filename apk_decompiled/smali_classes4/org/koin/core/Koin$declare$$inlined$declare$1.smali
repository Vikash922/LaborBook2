.class public final Lorg/koin/core/Koin$declare$$inlined$declare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/Koin;->declare(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n+ 2 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,420:1\n61#2,3:421\n64#2,19:426\n286#3,2:424\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n*L\n291#1:421,3\n291#1:426,19\n291#1:424,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\n\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "org/koin/core/scope/Scope$declare$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $instance:Ljava/lang/Object;

.field final synthetic $override:Z

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $secondaryTypes:Ljava/util/List;

.field final synthetic this$0:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$instance:Ljava/lang/Object;

    iput-object p3, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p4, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$secondaryTypes:Ljava/util/List;

    iput-boolean p5, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$override:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/koin/core/Koin$declare$$inlined$declare$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    .line 291
    iget-object v0, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->get_scopeDefinition()Lorg/koin/core/scope/ScopeDefinition;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$instance:Ljava/lang/Object;

    iget-object v4, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$secondaryTypes:Ljava/util/List;

    iget-boolean v9, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->$override:Z

    const/4 v3, 0x4

    const-string v5, "T"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 423
    invoke-virtual {v0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/HashSet;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 424
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/koin/core/definition/BeanDefinition;

    .line 423
    invoke-virtual {v0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v8

    invoke-virtual {v7, v3, v4, v8}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    check-cast v6, Lorg/koin/core/definition/BeanDefinition;

    if-eqz v6, :cond_3

    if-eqz v9, :cond_2

    .line 428
    invoke-virtual {v0, v6}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 430
    :cond_2
    new-instance v0, Lorg/koin/core/error/DefinitionOverrideException;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to override existing definition \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with new definition typed \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-direct {v0, v1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_3
    :goto_1
    sget-object v5, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 438
    new-instance v6, Lorg/koin/core/Koin$declare$$inlined$declare$1$1;

    invoke-direct {v6, v1}, Lorg/koin/core/Koin$declare$$inlined$declare$1$1;-><init>(Ljava/lang/Object;)V

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 439
    new-instance v6, Lorg/koin/core/definition/Options;

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-direct {v6, v7, v9, v10}, Lorg/koin/core/definition/Options;-><init>(ZZZ)V

    if-nez v2, :cond_4

    .line 440
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_4
    move-object v7, v2

    .line 441
    invoke-virtual {v0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v8

    move-object v2, v5

    move-object v5, v1

    .line 435
    invoke-virtual/range {v2 .. v8}, Lorg/koin/core/definition/Definitions;->createSingle(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Options;Ljava/util/List;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1, v9}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    .line 292
    iget-object v0, p0, Lorg/koin/core/Koin$declare$$inlined$declare$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getInstanceRegistry()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Lorg/koin/core/registry/InstanceRegistry;->saveDefinition(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-void
.end method
