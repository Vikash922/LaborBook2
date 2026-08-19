.class public interface abstract Lcom/amplitude/analytics/connector/IdentityStore$Editor;
.super Ljava/lang/Object;
.source "IdentityStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/analytics/connector/IdentityStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H&J\u001e\u0010\t\u001a\u00020\u00002\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bH&J*\u0010\u000c\u001a\u00020\u00002 \u0010\r\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b0\u000bH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/IdentityStore$Editor;",
        "",
        "commit",
        "",
        "setDeviceId",
        "deviceId",
        "",
        "setUserId",
        "userId",
        "setUserProperties",
        "userProperties",
        "",
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


# virtual methods
.method public abstract commit()V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
.end method

.method public abstract setUserId(Ljava/lang/String;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
.end method

.method public abstract setUserProperties(Ljava/util/Map;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
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
.end method

.method public abstract updateUserProperties(Ljava/util/Map;)Lcom/amplitude/analytics/connector/IdentityStore$Editor;
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
.end method
