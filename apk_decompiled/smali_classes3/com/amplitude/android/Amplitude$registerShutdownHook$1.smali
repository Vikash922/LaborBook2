.class public final Lcom/amplitude/android/Amplitude$registerShutdownHook$1;
.super Ljava/lang/Thread;
.source "Amplitude.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/android/Amplitude;->registerShutdownHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/amplitude/android/Amplitude$registerShutdownHook$1",
        "Ljava/lang/Thread;",
        "run",
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

    iput-object p1, p0, Lcom/amplitude/android/Amplitude$registerShutdownHook$1;->this$0:Lcom/amplitude/android/Amplitude;

    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amplitude/android/Amplitude$registerShutdownHook$1;->this$0:Lcom/amplitude/android/Amplitude;

    invoke-virtual {v0}, Lcom/amplitude/android/Amplitude;->getTimeline()Lcom/amplitude/core/platform/Timeline;

    move-result-object v0

    check-cast v0, Lcom/amplitude/android/Timeline;

    invoke-virtual {v0}, Lcom/amplitude/android/Timeline;->stop$android_release()V

    return-void
.end method
