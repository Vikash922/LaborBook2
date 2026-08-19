.class public interface abstract Lcom/amplitude/id/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/id/IdentityManager$Editor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0011J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/amplitude/id/IdentityManager;",
        "",
        "addIdentityListener",
        "",
        "listener",
        "Lcom/amplitude/id/IdentityListener;",
        "editIdentity",
        "Lcom/amplitude/id/IdentityManager$Editor;",
        "getIdentity",
        "Lcom/amplitude/id/Identity;",
        "isInitialized",
        "",
        "removeIdentityListener",
        "setIdentity",
        "identity",
        "updateType",
        "Lcom/amplitude/id/IdentityUpdateType;",
        "Editor",
        "id"
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
.method public static synthetic setIdentity$default(Lcom/amplitude/id/IdentityManager;Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 39
    sget-object p2, Lcom/amplitude/id/IdentityUpdateType;->Updated:Lcom/amplitude/id/IdentityUpdateType;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/amplitude/id/IdentityManager;->setIdentity(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setIdentity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract addIdentityListener(Lcom/amplitude/id/IdentityListener;)V
.end method

.method public abstract editIdentity()Lcom/amplitude/id/IdentityManager$Editor;
.end method

.method public abstract getIdentity()Lcom/amplitude/id/Identity;
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract removeIdentityListener(Lcom/amplitude/id/IdentityListener;)V
.end method

.method public abstract setIdentity(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;)V
.end method
