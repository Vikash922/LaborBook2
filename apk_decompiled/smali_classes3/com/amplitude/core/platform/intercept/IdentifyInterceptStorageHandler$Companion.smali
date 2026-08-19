.class public final Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;
.super Ljava/lang/Object;
.source "IdentifyInterceptStorageHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;",
        "",
        "()V",
        "getIdentifyInterceptStorageHandler",
        "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;",
        "storage",
        "Lcom/amplitude/core/Storage;",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
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
.field static final synthetic $$INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;

    invoke-direct {v0}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;-><init>()V

    sput-object v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;->$$INSTANCE:Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIdentifyInterceptStorageHandler(Lcom/amplitude/core/Storage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;
    .locals 1

    const-string/jumbo v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amplitude"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p1, Lcom/amplitude/core/utilities/EventsFileStorage;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;

    check-cast p1, Lcom/amplitude/core/utilities/EventsFileStorage;

    invoke-direct {v0, p1, p2, p3}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptFileStorageHandler;-><init>(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Amplitude;)V

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    goto :goto_0

    .line 22
    :cond_0
    instance-of p3, p1, Lcom/amplitude/core/utilities/InMemoryStorage;

    if-eqz p3, :cond_1

    .line 23
    new-instance p2, Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;

    check-cast p1, Lcom/amplitude/core/utilities/InMemoryStorage;

    invoke-direct {p2, p1}, Lcom/amplitude/core/platform/intercept/IdentifyInterceptInMemoryStorageHandler;-><init>(Lcom/amplitude/core/utilities/InMemoryStorage;)V

    move-object v0, p2

    check-cast v0, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "Custom storage, identify intercept not started"

    invoke-interface {p2, p1}, Lcom/amplitude/common/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    move-object p1, v0

    check-cast p1, Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;

    :goto_0
    return-object v0
.end method
