.class public final Lcom/amplitude/core/utilities/InMemoryStorageProvider;
.super Ljava/lang/Object;
.source "InMemoryStorage.kt"

# interfaces
.implements Lcom/amplitude/core/StorageProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/InMemoryStorageProvider;",
        "Lcom/amplitude/core/StorageProvider;",
        "()V",
        "getStorage",
        "Lcom/amplitude/core/Storage;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "prefix",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStorage(Lcom/amplitude/core/Amplitude;Ljava/lang/String;)Lcom/amplitude/core/Storage;
    .locals 0

    const-string p2, "amplitude"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/amplitude/core/utilities/InMemoryStorage;

    invoke-direct {p1}, Lcom/amplitude/core/utilities/InMemoryStorage;-><init>()V

    check-cast p1, Lcom/amplitude/core/Storage;

    return-object p1
.end method
