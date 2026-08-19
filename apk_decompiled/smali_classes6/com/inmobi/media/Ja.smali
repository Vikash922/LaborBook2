.class public final Lcom/inmobi/media/Ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/rd;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Ja;->a:Lcom/inmobi/media/Ya;

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
    instance-of p1, p1, Lcom/inmobi/media/Ya;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ja;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Ja;->a:Lcom/inmobi/media/Ya;

    .line 7
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->c(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/Ja;->a:Lcom/inmobi/media/Ya;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->c(Z)V

    :goto_0
    return-void
.end method
