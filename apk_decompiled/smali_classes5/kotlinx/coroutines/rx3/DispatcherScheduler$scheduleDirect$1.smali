.class final Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx3/DispatcherScheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,178:1\n13#2:179\n*S KotlinDebug\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1\n*L\n56#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u001c\u0010\u0003\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "task",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "invoke",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;"
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
.field final synthetic this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/rx3/DispatcherScheduler;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1;->invoke(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1;->this$0:Lkotlinx/coroutines/rx3/DispatcherScheduler;

    .line 179
    new-instance v1, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/rx3/DispatcherScheduler$scheduleDirect$1$invoke$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/rx3/DispatcherScheduler;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method
