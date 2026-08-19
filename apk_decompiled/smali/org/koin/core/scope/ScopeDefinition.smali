.class public final Lorg/koin/core/scope/ScopeDefinition;
.super Ljava/lang/Object;
.source "ScopeDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/scope/ScopeDefinition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeDefinition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n286#2,2:100\n286#2,2:102\n764#2:104\n855#2,2:105\n*S KotlinDebug\n*F\n+ 1 ScopeDefinition.kt\norg/koin/core/scope/ScopeDefinition\n*L\n40#1:100,2\n63#1:102,2\n90#1:104\n90#1:105,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 /2\u00020\u0001:\u0001/B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001JT\u0010\u0015\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\t\"\u0006\u0008\u0000\u0010\u0016\u0018\u00012\u0006\u0010\u0017\u001a\u0002H\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001b\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005H\u0086\u0008\u00a2\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\u0012\u0010\"\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\tJ\r\u0010%\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008&J\u001c\u0010\'\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0008\u0002\u0010(\u001a\u00020\u0005J\r\u0010)\u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008*J\t\u0010+\u001a\u00020,H\u00d6\u0001J\u0019\u0010-\u001a\u00020#2\n\u0010$\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0000\u00a2\u0006\u0002\u0008.R/\u0010\u0007\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0008j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t`\n\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u00060"
    }
    d2 = {
        "Lorg/koin/core/scope/ScopeDefinition;",
        "",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "isRoot",
        "",
        "(Lorg/koin/core/qualifier/Qualifier;Z)V",
        "definitions",
        "Ljava/util/HashSet;",
        "Lorg/koin/core/definition/BeanDefinition;",
        "Lkotlin/collections/HashSet;",
        "getDefinitions$annotations",
        "()V",
        "getDefinitions",
        "()Ljava/util/HashSet;",
        "()Z",
        "getQualifier",
        "()Lorg/koin/core/qualifier/Qualifier;",
        "component1",
        "component2",
        "copy",
        "declareNewDefinition",
        "T",
        "instance",
        "defQualifier",
        "secondaryTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "override",
        "(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;",
        "equals",
        "other",
        "hashCode",
        "",
        "remove",
        "",
        "beanDefinition",
        "removeExtras",
        "removeExtras$koin_core",
        "save",
        "forceOverride",
        "size",
        "size$koin_core",
        "toString",
        "",
        "unloadDefinition",
        "unloadDefinition$koin_core",
        "Companion",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

.field public static final ROOT_SCOPE_ID:Ljava/lang/String; = "-Root-"

.field private static final ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;


# instance fields
.field private final definitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final isRoot:Z

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/scope/ScopeDefinition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/scope/ScopeDefinition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/scope/ScopeDefinition;->Companion:Lorg/koin/core/scope/ScopeDefinition$Companion;

    .line 96
    const-string v0, "-Root-"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->_q(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lorg/koin/core/scope/ScopeDefinition;->ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/qualifier/Qualifier;Z)V
    .locals 1

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-boolean p2, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    .line 33
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/qualifier/Qualifier;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Z)V

    return-void
.end method

.method public static final synthetic access$getROOT_SCOPE_QUALIFIER$cp()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 30
    sget-object v0, Lorg/koin/core/scope/ScopeDefinition;->ROOT_SCOPE_QUALIFIER:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static synthetic copy$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/qualifier/Qualifier;ZILjava/lang/Object;)Lorg/koin/core/scope/ScopeDefinition;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;->copy(Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/scope/ScopeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic declareNewDefinition$default(Lorg/koin/core/scope/ScopeDefinition;Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;ZILjava/lang/Object;)Lorg/koin/core/definition/BeanDefinition;
    .locals 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p2, p5, 0x8

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    move p4, p5

    .line 55
    :cond_2
    const-string p2, "T"

    const/4 p6, 0x4

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/HashSet;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    .line 63
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p6

    :cond_4
    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 66
    invoke-virtual {p0, v0}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 68
    :cond_5
    new-instance p0, Lorg/koin/core/error/DefinitionOverrideException;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Trying to override existing definition \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' with new definition typed \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_6
    :goto_1
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 76
    new-instance p2, Lorg/koin/core/scope/ScopeDefinition$declareNewDefinition$beanDefinition$1;

    invoke-direct {p2, p1}, Lorg/koin/core/scope/ScopeDefinition$declareNewDefinition$beanDefinition$1;-><init>(Ljava/lang/Object;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 77
    new-instance v5, Lorg/koin/core/definition/Options;

    const/4 p1, 0x1

    invoke-direct {v5, p5, p4, p1}, Lorg/koin/core/definition/Options;-><init>(ZZZ)V

    if-nez p3, :cond_7

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    move-object v6, p1

    goto :goto_2

    :cond_7
    move-object v6, p3

    .line 79
    :goto_2
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    .line 73
    invoke-virtual/range {v1 .. v7}, Lorg/koin/core/definition/Definitions;->createSingle(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Options;Ljava/util/List;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1, p4}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-object p1
.end method

.method public static synthetic getDefinitions$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic save$default(Lorg/koin/core/scope/ScopeDefinition;Lorg/koin/core/definition/BeanDefinition;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-void
.end method


# virtual methods
.method public final component1()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    return v0
.end method

.method public final copy(Lorg/koin/core/qualifier/Qualifier;Z)Lorg/koin/core/scope/ScopeDefinition;
    .locals 1

    const-string v0, "qualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/core/scope/ScopeDefinition;

    invoke-direct {v0, p1, p2}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Z)V

    return-object v0
.end method

.method public final synthetic declareNewDefinition(Ljava/lang/Object;Lorg/koin/core/qualifier/Qualifier;Ljava/util/List;Z)Lorg/koin/core/definition/BeanDefinition;
    .locals 8

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getDefinitions()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/koin/core/definition/BeanDefinition;

    .line 63
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v4

    invoke-virtual {v3, v2, p2, v4}, Lorg/koin/core/definition/BeanDefinition;->is(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    .line 66
    invoke-virtual {p0, v1}, Lorg/koin/core/scope/ScopeDefinition;->remove(Lorg/koin/core/definition/BeanDefinition;)V

    goto :goto_1

    .line 68
    :cond_2
    new-instance p1, Lorg/koin/core/error/DefinitionOverrideException;

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Trying to override existing definition \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' with new definition typed \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_3
    :goto_1
    sget-object v1, Lorg/koin/core/definition/Definitions;->INSTANCE:Lorg/koin/core/definition/Definitions;

    .line 76
    new-instance v0, Lorg/koin/core/scope/ScopeDefinition$declareNewDefinition$beanDefinition$1;

    invoke-direct {v0, p1}, Lorg/koin/core/scope/ScopeDefinition$declareNewDefinition$beanDefinition$1;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 77
    new-instance v5, Lorg/koin/core/definition/Options;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {v5, p1, p4, v0}, Lorg/koin/core/definition/Options;-><init>(ZZZ)V

    if-nez p3, :cond_4

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_4
    move-object v6, p3

    .line 79
    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition;->getQualifier()Lorg/koin/core/qualifier/Qualifier;

    move-result-object v7

    move-object v3, p2

    .line 73
    invoke-virtual/range {v1 .. v7}, Lorg/koin/core/definition/Definitions;->createSingle(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Options;Ljava/util/List;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/definition/BeanDefinition;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1, p4}, Lorg/koin/core/scope/ScopeDefinition;->save(Lorg/koin/core/definition/BeanDefinition;Z)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/koin/core/scope/ScopeDefinition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/koin/core/scope/ScopeDefinition;

    iget-object v1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v3, p1, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    iget-boolean p1, p1, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDefinitions()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getQualifier()Lorg/koin/core/qualifier/Qualifier;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isRoot()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    return v0
.end method

.method public final remove(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeExtras$koin_core()V
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/koin/core/definition/BeanDefinition;

    .line 90
    invoke-virtual {v3}, Lorg/koin/core/definition/BeanDefinition;->getOptions()Lorg/koin/core/definition/Options;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/definition/Options;->isExtraDefinition()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 91
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final save(Lorg/koin/core/definition/BeanDefinition;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p1}, Lorg/koin/core/definition/BeanDefinition;->getOptions()Lorg/koin/core/definition/Options;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/Options;->getOverride()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    iget-object p2, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    check-cast p2, Ljava/lang/Iterable;

    .line 100
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/koin/core/definition/BeanDefinition;

    .line 40
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lorg/koin/core/definition/BeanDefinition;

    .line 41
    new-instance p2, Lorg/koin/core/error/DefinitionOverrideException;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Definition \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' try to override existing definition. Please use override option or check for definition \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p2, p1}, Lorg/koin/core/error/DefinitionOverrideException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_4
    iget-object p2, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final size$koin_core()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScopeDefinition(qualifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/koin/core/scope/ScopeDefinition;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/koin/core/scope/ScopeDefinition;->isRoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unloadDefinition$koin_core(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/koin/core/scope/ScopeDefinition;->definitions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
