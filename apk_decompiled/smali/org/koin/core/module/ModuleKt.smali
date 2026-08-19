.class public final Lorg/koin/core/module/ModuleKt;
.super Ljava/lang/Object;
.source "Module.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a.\u0010\u0000\u001a\u00020\u0001*\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00030\u0002j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0003`\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u001a!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u0008H\u0086\u0002\u00a8\u0006\n"
    }
    d2 = {
        "addDefinition",
        "",
        "Ljava/util/HashSet;",
        "Lorg/koin/core/definition/BeanDefinition;",
        "Lkotlin/collections/HashSet;",
        "bean",
        "plus",
        "",
        "Lorg/koin/core/module/Module;",
        "module",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addDefinition(Ljava/util/HashSet;Lorg/koin/core/definition/BeanDefinition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lorg/koin/core/definition/BeanDefinition;->getOptions()Lorg/koin/core/definition/Options;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/definition/Options;->getOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lorg/koin/core/error/DefinitionOverrideException;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Definition \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' try to override existing definition. Please use override option to fix it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lorg/koin/core/definition/BeanDefinition;->getOptions()Lorg/koin/core/definition/Options;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/Options;->getOverride()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static final plus(Ljava/util/List;Lorg/koin/core/module/Module;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;",
            "Lorg/koin/core/module/Module;",
            ")",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    check-cast p0, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
