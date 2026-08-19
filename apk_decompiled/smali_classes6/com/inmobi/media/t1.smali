.class public final Lcom/inmobi/media/t1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/u1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/u1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/u1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/m9;

    .line 2
    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->b()Z

    move-result p1

    const-string v0, "access$getTAG$p(...)"

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/u1;

    .line 14
    iget-object p1, p1, Lcom/inmobi/media/u1;->a:Lcom/inmobi/media/W5;

    .line 15
    iget-object p1, p1, Lcom/inmobi/media/W5;->a:Lcom/inmobi/media/X5;

    .line 16
    iget-object p1, p1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 17
    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "asyncPing Failed"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/u1;

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/u1;->a:Lcom/inmobi/media/W5;

    .line 20
    iget-object p1, p1, Lcom/inmobi/media/W5;->a:Lcom/inmobi/media/X5;

    .line 21
    iget-object p1, p1, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 22
    sget-object v1, Lcom/inmobi/media/Y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "asyncPing Successful"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
