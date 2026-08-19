.class public final Lcom/inmobi/media/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/media/Ya;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;J)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/inmobi/media/cb;->a:Lcom/inmobi/media/Ya;

    .line 8
    iput-wide p2, p0, Lcom/inmobi/media/cb;->b:J

    return-void
.end method

.method public static final a(Lcom/inmobi/media/cb;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/cb;->a:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 8
    const-string v3, "TAG"

    const-string v4, "deferredDestroy "

    invoke-static {v0, v2, v3, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/inmobi/media/cb;->a:Lcom/inmobi/media/Ya;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/cb$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/cb$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/cb;)V

    .line 4
    iget-wide v2, p0, Lcom/inmobi/media/cb;->b:J

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
