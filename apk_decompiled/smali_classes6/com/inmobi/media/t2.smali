.class public final Lcom/inmobi/media/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/q2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)V
    .locals 3

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/inmobi/media/u2;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-static {v1, p1}, Lcom/inmobi/media/u2;->b(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)V

    .line 4
    invoke-static {}, Lcom/inmobi/media/Db;->b()Lcom/inmobi/media/j2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget p1, p1, Lcom/inmobi/media/i2;->a:I

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 8
    const-string p1, "id = ?"

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/R1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/inmobi/media/i2;Lcom/inmobi/media/c4;)V
    .locals 2

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/inmobi/media/u2;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 11
    iget v0, p1, Lcom/inmobi/media/i2;->f:I

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/u2;->a(Lcom/inmobi/media/i2;Ljava/lang/String;)V

    .line 14
    :cond_0
    sget-object p2, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-static {p2, p1}, Lcom/inmobi/media/u2;->c(Lcom/inmobi/media/u2;Lcom/inmobi/media/i2;)V

    .line 15
    invoke-virtual {p2}, Lcom/inmobi/media/u2;->h()V

    return-void
.end method
