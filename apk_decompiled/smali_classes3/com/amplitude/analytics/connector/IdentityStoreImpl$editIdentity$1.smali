.class public final Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;
.super Ljava/lang/Object;
.source "IdentityStore.kt"

# interfaces
.implements Lcom/amplitude/analytics/connector/IdentityStore$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/analytics/connector/IdentityStoreImpl;->editIdentity()Lcom/amplitude/analytics/connector/IdentityStore$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u000b\u001a\u00020\u00012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001e\u0010\u000c\u001a\u00020\u00012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0016J*\u0010\r\u001a\u00020\u00012 \u0010\u000e\u001a\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00060\u0006H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "com/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1",
        "Lcom/amplitude/analytics/connector/IdentityStore$Editor;",
        "deviceId",
        "",
        "userId",
        "userProperties",
        "",
        "",
        "commit",
        "",
        "setDeviceId",
        "setUserId",
        "setUserProperties",
        "updateUserProperties",
        "actions",
        "analytics-connector_release"
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
.field final synthetic $originalIdentity:Lcom/amplitude/analytics/connector/Identity;

.field private deviceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amplitude/analytics/connector/IdentityStoreImpl;

.field private userId:Ljava/lang/String;

.field private userProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amplitude/analytics/connector/Identity;Lcom/amplitude/analytics/connector/IdentityStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->$originalIdentity:Lcom/amplitude/analytics/connector/Identity;

    iput-object p2, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->this$0:Lcom/amplitude/analytics/connector/IdentityStoreImpl;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/Identity;->getUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/Identity;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/amplitude/analytics/connector/Identity;->getUserProperties()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 92
    new-instance v0, Lcom/amplitude/analytics/connector/Identity;

    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userProperties:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/amplitude/analytics/connector/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    iget-object v1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->this$0:Lcom/amplitude/analytics/connector/IdentityStoreImpl;

    invoke-virtual {v1, v0}, Lcom/amplitude/analytics/connector/IdentityStoreImpl;->setIdentity(Lcom/amplitude/analytics/connector/Identity;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->deviceId:Ljava/lang/String;

    .line 60
    move-object p1, p0

    check-cast p1, Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userId:Ljava/lang/String;

    .line 55
    move-object p1, p0

    check-cast p1, Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    return-object p1
.end method

.method public setUserProperties(Ljava/util/Map;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amplitude/analytics/connector/IdentityStore$Editor;"
        }
    .end annotation

    const-string/jumbo v0, "userProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userProperties:Ljava/util/Map;

    .line 65
    move-object p1, p0

    check-cast p1, Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    return-object p1
.end method

.method public updateUserProperties(Ljava/util/Map;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/amplitude/analytics/connector/IdentityStore$Editor;"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userProperties:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1219be

    if-eq v3, v4, :cond_5

    const v4, 0x8ba2838

    if-eq v3, v4, :cond_3

    const v4, 0x4412f185

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "$unset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_3
    const-string v1, "$clearAll"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 83
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 73
    :cond_5
    const-string v3, "$set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 75
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 87
    :cond_7
    iput-object v0, p0, Lcom/amplitude/analytics/connector/IdentityStoreImpl$editIdentity$1;->userProperties:Ljava/util/Map;

    .line 88
    move-object p1, p0

    check-cast p1, Lcom/amplitude/analytics/connector/IdentityStore$Editor;

    return-object p1
.end method
