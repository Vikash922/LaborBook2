.class public final Lcom/amplitude/android/utilities/AndroidStorageProvider;
.super Ljava/lang/Object;
.source "AndroidStorage.kt"

# interfaces
.implements Lcom/amplitude/core/StorageProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/AndroidStorageProvider;",
        "Lcom/amplitude/core/StorageProvider;",
        "()V",
        "getStorage",
        "Lcom/amplitude/core/Storage;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
        "prefix",
        "",
        "android_release"
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

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStorage(Lcom/amplitude/core/Amplitude;Ljava/lang/String;)Lcom/amplitude/core/Storage;
    .locals 8

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getConfiguration()Lcom/amplitude/core/Configuration;

    move-result-object v0

    check-cast v0, Lcom/amplitude/android/Configuration;

    .line 135
    new-instance v7, Lcom/amplitude/android/utilities/AndroidStorage;

    .line 136
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 137
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0}, Lcom/amplitude/android/Configuration;->getLoggerProvider()Lcom/amplitude/core/LoggerProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amplitude/core/LoggerProvider;->getLogger(Lcom/amplitude/core/Amplitude;)Lcom/amplitude/common/Logger;

    move-result-object v4

    .line 140
    invoke-virtual {p1}, Lcom/amplitude/core/Amplitude;->getDiagnostics()Lcom/amplitude/core/utilities/Diagnostics;

    move-result-object v6

    move-object v1, v7

    move-object v5, p2

    .line 135
    invoke-direct/range {v1 .. v6}, Lcom/amplitude/android/utilities/AndroidStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;Ljava/lang/String;Lcom/amplitude/core/utilities/Diagnostics;)V

    check-cast v7, Lcom/amplitude/core/Storage;

    return-object v7
.end method
