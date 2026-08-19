.class public final Lcom/inmobi/media/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Lambda;

.field public final synthetic b:Lcom/inmobi/media/o0;

.field public final synthetic c:Lcom/inmobi/media/X9;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/o0;Lcom/inmobi/media/X9;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/inmobi/media/d;->a:Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Lcom/inmobi/media/d;->b:Lcom/inmobi/media/o0;

    iput-object p3, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/X9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/d;->a:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/d;->b:Lcom/inmobi/media/o0;

    invoke-interface {v0}, Lcom/inmobi/media/o0;->a()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/X9;

    invoke-interface {v1, v0}, Lcom/inmobi/media/X9;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/X9;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Capture Aborted: Should Capture not satisfied"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/inmobi/media/X9;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/X9;

    invoke-interface {v1, v0}, Lcom/inmobi/media/X9;->onError(Ljava/lang/Exception;)V

    .line 9
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
