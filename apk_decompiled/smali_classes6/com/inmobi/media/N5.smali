.class public final Lcom/inmobi/media/N5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Q5;

.field public final synthetic b:S


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q5;S)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/N5;->a:Lcom/inmobi/media/Q5;

    iput-short p2, p0, Lcom/inmobi/media/N5;->b:S

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x2

    .line 1
    const-string v1, "InMobiInterstitial"

    const-string v2, "RenderProcess of the WebView has crashed. Please create another adUnit"

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/N5;->a:Lcom/inmobi/media/Q5;

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/inmobi/media/Q5;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "access$getTAG$cp(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/N5;->a:Lcom/inmobi/media/Q5;

    iget-short v1, p0, Lcom/inmobi/media/N5;->b:S

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/Q0;->a(ZS)V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/N5;->a:Lcom/inmobi/media/Q5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/media/Q5;->a(Lcom/inmobi/media/Q5;Lkotlin/jvm/functions/Function0;)V

    .line 7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
