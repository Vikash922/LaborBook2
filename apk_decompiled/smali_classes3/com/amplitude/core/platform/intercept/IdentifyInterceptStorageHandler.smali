.class public interface abstract Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;
.super Ljava/lang/Object;
.source "IdentifyInterceptStorageHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0011\u0010\u0002\u001a\u00020\u0003H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u00f8\u0001\u0001\u0082\u0002\n\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;",
        "",
        "clearIdentifyIntercepts",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransferIdentifyEvent",
        "Lcom/amplitude/core/events/BaseEvent;",
        "Companion",
        "core"
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
.field public static final Companion:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;->$$INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;

    sput-object v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;->Companion:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearIdentifyIntercepts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getTransferIdentifyEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
