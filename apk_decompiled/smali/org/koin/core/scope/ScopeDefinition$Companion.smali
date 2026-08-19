.class public final Lorg/koin/core/scope/ScopeDefinition$Companion;
.super Ljava/lang/Object;
.source "ScopeDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/scope/ScopeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/koin/core/scope/ScopeDefinition$Companion;",
        "",
        "()V",
        "ROOT_SCOPE_ID",
        "",
        "ROOT_SCOPE_QUALIFIER",
        "Lorg/koin/core/qualifier/StringQualifier;",
        "getROOT_SCOPE_QUALIFIER",
        "()Lorg/koin/core/qualifier/StringQualifier;",
        "rootDefinition",
        "Lorg/koin/core/scope/ScopeDefinition;",
        "rootDefinition$koin_core",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/core/scope/ScopeDefinition$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 96
    invoke-static {}, Lorg/koin/core/scope/ScopeDefinition;->access$getROOT_SCOPE_QUALIFIER$cp()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    return-object v0
.end method

.method public final rootDefinition$koin_core()Lorg/koin/core/scope/ScopeDefinition;
    .locals 3

    .line 97
    new-instance v0, Lorg/koin/core/scope/ScopeDefinition;

    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition$Companion;->getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Z)V

    return-object v0
.end method
