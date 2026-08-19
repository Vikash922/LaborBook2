.class public final Lcom/inmobi/media/Oa;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/media/Ya;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/media/Ya;

    .line 3
    iget-object v1, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "onRenderProcessGone"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/ab;->a(Lcom/inmobi/media/Ya;Z)V

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
