.class public final Lcom/amplitude/android/Amplitude$buildInternal$2;
.super Lcom/amplitude/android/plugins/AndroidContextPlugin;
.source "Amplitude.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/Amplitude;->buildInternal$suspendImpl(Lcom/amplitude/android/Amplitude;Lcom/amplitude/id/IdentityConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/amplitude/android/Amplitude$buildInternal$2",
        "Lcom/amplitude/android/plugins/AndroidContextPlugin;",
        "setDeviceId",
        "",
        "deviceId",
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


# instance fields
.field final synthetic this$0:Lcom/amplitude/android/Amplitude;


# direct methods
.method constructor <init>(Lcom/amplitude/android/Amplitude;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/android/Amplitude$buildInternal$2;->this$0:Lcom/amplitude/android/Amplitude;

    .line 61
    invoke-direct {p0}, Lcom/amplitude/android/plugins/AndroidContextPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amplitude/android/Amplitude$buildInternal$2;->this$0:Lcom/amplitude/android/Amplitude;

    invoke-static {v0, p1}, Lcom/amplitude/android/Amplitude;->access$setDeviceIdInternal(Lcom/amplitude/android/Amplitude;Ljava/lang/String;)V

    return-void
.end method
