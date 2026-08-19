.class public final Lcom/inmobi/media/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/rd;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/t7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t7;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/o7;->a:Lcom/inmobi/media/t7;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/o7;->a:Lcom/inmobi/media/t7;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/inmobi/media/t7;->p()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/media/t7;->h()Lcom/inmobi/media/d8;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/inmobi/media/Z0;->a()V

    :cond_1
    :goto_0
    return-void
.end method
