.class public final Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1;->invoke(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 RxScheduler.kt\nkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1\n*L\n1#1,14:1\n56#2:15\n*E\n"
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

.field final synthetic this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/rx3/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;

    iput-object p2, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 15
    iget-object v0, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/rx3/DispatcherScheduler;->access$getScope$p(Lkotlinx/coroutines/rx3/DispatcherScheduler;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$1$1;

    iget-object v2, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;->$task$inlined:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
