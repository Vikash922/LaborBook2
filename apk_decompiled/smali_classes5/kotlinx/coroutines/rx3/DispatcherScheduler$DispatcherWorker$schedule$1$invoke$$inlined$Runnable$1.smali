.class public final Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1$invoke$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1;->invoke(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 RxScheduler.kt\nkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1\n*L\n1#1,14:1\n85#2:15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $task$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1$invoke$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;

    iput-object p2, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1$invoke$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 15
    iget-object v0, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1$invoke$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;

    invoke-static {v0}, Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;->access$getBlockChannel$p(Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$DispatcherWorker$schedule$1$invoke$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
