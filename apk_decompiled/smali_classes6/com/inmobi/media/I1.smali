.class public final Lcom/inmobi/media/I1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/K1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/K1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/I1;->a:Lcom/inmobi/media/K1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/I1;->a:Lcom/inmobi/media/K1;

    .line 2
    iget-object v1, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/inmobi/media/K1;->a(Lcom/inmobi/media/K1;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "loadWithRetry success"

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/I1;->a:Lcom/inmobi/media/K1;

    invoke-static {v0}, Lcom/inmobi/media/K1;->b(Lcom/inmobi/media/K1;)V

    .line 5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
