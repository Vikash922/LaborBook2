.class public final Lcom/inmobi/media/m0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/n0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/m0;->a:Lcom/inmobi/media/n0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/m0;->a:Lcom/inmobi/media/n0;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/n0;->h:Lcom/inmobi/media/qd;

    .line 3
    sget-object v1, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
