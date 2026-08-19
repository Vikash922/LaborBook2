.class public final Lcom/inmobi/media/q;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/q;->a:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/b2;

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Lcom/inmobi/media/b2;->a:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    const/4 p1, 0x0

    .line 6
    sput-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez p1, :cond_3

    .line 8
    sget-object p1, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    iget-wide v0, p0, Lcom/inmobi/media/q;->a:J

    .line 11
    invoke-static {v0, v1}, Lcom/inmobi/media/s;->a(J)V

    .line 12
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
