.class public final Lcom/boilerplate/network/NetworkHandler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boilerplate/network/NetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/boilerplate/network/NetworkHandler$Companion;",
        "",
        "<init>",
        "()V",
        "networkHandler",
        "Lcom/boilerplate/network/NetworkHandler;",
        "getInstance",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/boilerplate/network/NetworkHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/boilerplate/network/NetworkHandler;
    .locals 1

    invoke-static {}, Lcom/boilerplate/network/NetworkHandler;->access$getNetworkHandler$cp()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/boilerplate/network/NetworkHandler;->access$getNetworkHandler$cp()Lcom/boilerplate/network/NetworkHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/boilerplate/network/NetworkHandler;

    invoke-direct {v0}, Lcom/boilerplate/network/NetworkHandler;-><init>()V

    invoke-static {v0}, Lcom/boilerplate/network/NetworkHandler;->access$setNetworkHandler$cp(Lcom/boilerplate/network/NetworkHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
