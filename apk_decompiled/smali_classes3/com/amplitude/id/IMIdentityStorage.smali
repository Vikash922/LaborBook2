.class public final Lcom/amplitude/id/IMIdentityStorage;
.super Ljava/lang/Object;
.source "IMIdentityStorage.kt"

# interfaces
.implements Lcom/amplitude/id/IdentityStorage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/amplitude/id/IMIdentityStorage;",
        "Lcom/amplitude/id/IdentityStorage;",
        "()V",
        "deviceId",
        "",
        "getDeviceId",
        "()Ljava/lang/String;",
        "setDeviceId",
        "(Ljava/lang/String;)V",
        "userId",
        "getUserId",
        "setUserId",
        "load",
        "Lcom/amplitude/id/Identity;",
        "saveDeviceId",
        "",
        "saveUserId",
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


# instance fields
.field private deviceId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amplitude/id/IMIdentityStorage;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amplitude/id/IMIdentityStorage;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public load()Lcom/amplitude/id/Identity;
    .locals 3

    .line 11
    new-instance v0, Lcom/amplitude/id/Identity;

    iget-object v1, p0, Lcom/amplitude/id/IMIdentityStorage;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/id/IMIdentityStorage;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amplitude/id/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amplitude/id/IMIdentityStorage;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public saveUserId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amplitude/id/IMIdentityStorage;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amplitude/id/IMIdentityStorage;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amplitude/id/IMIdentityStorage;->userId:Ljava/lang/String;

    return-void
.end method
