.class public final Lcom/inmobi/media/sa;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/wa;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/wa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/sa;->a:Lcom/inmobi/media/wa;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/pa;

    .line 2
    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lcom/inmobi/media/na;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/inmobi/media/sa;->a:Lcom/inmobi/media/wa;

    new-instance v1, Lcom/inmobi/media/ha;

    check-cast p1, Lcom/inmobi/media/na;

    .line 60
    iget p1, p1, Lcom/inmobi/media/na;->a:I

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/inmobi/media/ha;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/wa;->a(Lcom/inmobi/media/la;Lcom/inmobi/media/ga;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/sa;->a:Lcom/inmobi/media/wa;

    new-instance v0, Lcom/inmobi/media/ra;

    invoke-direct {v0, p1}, Lcom/inmobi/media/ra;-><init>(Lcom/inmobi/media/wa;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/media/wa;->a(Lcom/inmobi/media/ra;)V

    .line 64
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
