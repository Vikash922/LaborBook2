.class public final Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;
.super Ljava/lang/Object;
.source "IdentityManager.kt"

# interfaces
.implements Lcom/amplitude/id/IdentityManager$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/id/IdentityManagerImpl;->editIdentity()Lcom/amplitude/id/IdentityManager$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0008\u001a\u00020\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "com/amplitude/id/IdentityManagerImpl$editIdentity$1",
        "Lcom/amplitude/id/IdentityManager$Editor;",
        "deviceId",
        "",
        "userId",
        "commit",
        "",
        "setDeviceId",
        "setUserId",
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
.field final synthetic $originalIdentity:Lcom/amplitude/id/Identity;

.field private deviceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amplitude/id/IdentityManagerImpl;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->$originalIdentity:Lcom/amplitude/id/Identity;

    iput-object p2, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->this$0:Lcom/amplitude/id/IdentityManagerImpl;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->userId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/amplitude/id/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 77
    new-instance v0, Lcom/amplitude/id/Identity;

    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amplitude/id/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->this$0:Lcom/amplitude/id/IdentityManagerImpl;

    check-cast v1, Lcom/amplitude/id/IdentityManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lcom/amplitude/id/IdentityManager;->setIdentity$default(Lcom/amplitude/id/IdentityManager;Lcom/amplitude/id/Identity;Lcom/amplitude/id/IdentityUpdateType;ILjava/lang/Object;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/amplitude/id/IdentityManager$Editor;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    .line 73
    move-object p1, p0

    check-cast p1, Lcom/amplitude/id/IdentityManager$Editor;

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/amplitude/id/IdentityManager$Editor;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amplitude/id/IdentityManagerImpl$editIdentity$1;->userId:Ljava/lang/String;

    .line 68
    move-object p1, p0

    check-cast p1, Lcom/amplitude/id/IdentityManager$Editor;

    return-object p1
.end method
