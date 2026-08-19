.class public final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemContactListBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,71:1\n45#2,2:72\n47#2:75\n140#3:74\n102#4:76\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n*L\n61#1:72,2\n61#1:75\n61#1:74\n61#1:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "org/koin/core/component/KoinComponentKt$inject$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_inject:Lorg/koin/core/component/KoinComponent;


# direct methods
.method public constructor <init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    iput-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/laborbook/base/navigator/FragmentNavigator;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    iget-object v1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .line 72
    instance-of v3, v0, Lorg/koin/core/component/KoinScopeComponent;

    if-eqz v3, :cond_0

    .line 73
    check-cast v0, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v0}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    .line 74
    :goto_0
    const-class v3, Lcom/laborbook/base/navigator/FragmentNavigator;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
