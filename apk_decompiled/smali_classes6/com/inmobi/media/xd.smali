.class public final Lcom/inmobi/media/xd;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/yd;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/yd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/xd;->a:Lcom/inmobi/media/yd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/yd;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/yd;->c:Landroid/os/Handler;

    .line 2
    iget-object p0, p0, Lcom/inmobi/media/yd;->k:Lkotlin/Lazy;

    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/td;

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Runnable;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/xd;->a:Lcom/inmobi/media/yd;

    new-instance v1, Lcom/inmobi/media/xd$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/inmobi/media/xd$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/yd;)V

    return-object v1
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/xd;->a()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
