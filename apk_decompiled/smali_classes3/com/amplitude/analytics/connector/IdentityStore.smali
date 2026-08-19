.class public interface abstract Lcom/amplitude/analytics/connector/IdentityStore;
.super Ljava/lang/Object;
.source "IdentityStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/analytics/connector/IdentityStore$Editor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001:\u0001\u000eJ \u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005j\u0002`\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0006H&J \u0010\u000b\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005j\u0002`\u0007H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/amplitude/analytics/connector/IdentityStore;",
        "",
        "addIdentityListener",
        "",
        "listener",
        "Lkotlin/Function1;",
        "Lcom/amplitude/analytics/connector/Identity;",
        "Lcom/amplitude/analytics/connector/IdentityListener;",
        "editIdentity",
        "Lcom/amplitude/analytics/connector/IdentityStore$Editor;",
        "getIdentity",
        "removeIdentityListener",
        "setIdentity",
        "identity",
        "Editor",
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
.method public abstract addIdentityListener(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/Identity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editIdentity()Lcom/amplitude/analytics/connector/IdentityStore$Editor;
.end method

.method public abstract getIdentity()Lcom/amplitude/analytics/connector/Identity;
.end method

.method public abstract removeIdentityListener(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amplitude/analytics/connector/Identity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setIdentity(Lcom/amplitude/analytics/connector/Identity;)V
.end method
