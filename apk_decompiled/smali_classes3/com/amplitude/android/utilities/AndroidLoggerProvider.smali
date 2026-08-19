.class public final Lcom/amplitude/android/utilities/AndroidLoggerProvider;
.super Ljava/lang/Object;
.source "AndroidLoggerProvider.kt"

# interfaces
.implements Lcom/amplitude/core/LoggerProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/AndroidLoggerProvider;",
        "Lcom/amplitude/core/LoggerProvider;",
        "()V",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "getLogger",
        "()Lcom/amplitude/common/Logger;",
        "logger$delegate",
        "Lkotlin/Lazy;",
        "amplitude",
        "Lcom/amplitude/core/Amplitude;",
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


# instance fields
.field private final logger$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/amplitude/android/utilities/AndroidLoggerProvider$logger$2;->INSTANCE:Lcom/amplitude/android/utilities/AndroidLoggerProvider$logger$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/android/utilities/AndroidLoggerProvider;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogger()Lcom/amplitude/common/Logger;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/android/utilities/AndroidLoggerProvider;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amplitude/common/Logger;

    return-object v0
.end method


# virtual methods
.method public getLogger(Lcom/amplitude/core/Amplitude;)Lcom/amplitude/common/Logger;
    .locals 1

    const-string v0, "amplitude"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/amplitude/android/utilities/AndroidLoggerProvider;->getLogger()Lcom/amplitude/common/Logger;

    move-result-object p1

    return-object p1
.end method
