.class public final Lcom/inmobi/media/p1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/p1;

    invoke-direct {v0}, Lcom/inmobi/media/p1;-><init>()V

    sput-object v0, Lcom/inmobi/media/p1;->a:Lcom/inmobi/media/p1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/b2;

    .line 2
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/inmobi/media/b2;->a:I

    const/4 v1, 0x1

    const-string v2, "access$getTAG$p(...)"

    const-string v3, "r1"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 4
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "available"

    .line 6
    iget-object p1, p1, Lcom/inmobi/media/b2;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 9
    sget-object v0, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/inmobi/media/r1;->c()V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 12
    invoke-static {}, Lcom/inmobi/media/r1;->d()V

    goto :goto_0

    .line 13
    :cond_2
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/inmobi/media/r1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
