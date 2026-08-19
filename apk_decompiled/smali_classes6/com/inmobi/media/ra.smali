.class public final Lcom/inmobi/media/ra;
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
    iput-object p1, p0, Lcom/inmobi/media/ra;->a:Lcom/inmobi/media/wa;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/inmobi/media/ga;

    .line 2
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/inmobi/media/ra;->a:Lcom/inmobi/media/wa;

    .line 65
    iget-object v0, v0, Lcom/inmobi/media/wa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/media/ra;->a:Lcom/inmobi/media/wa;

    .line 67
    iget v2, v1, Lcom/inmobi/media/wa;->e:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget v0, p1, Lcom/inmobi/media/ga;->a:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 69
    iget v0, p1, Lcom/inmobi/media/ga;->b:I

    if-nez v0, :cond_1

    .line 70
    new-instance p1, Lcom/inmobi/media/ia;

    const/16 v0, 0x8ba

    invoke-direct {p1, v0}, Lcom/inmobi/media/ia;-><init>(S)V

    .line 71
    invoke-virtual {v1, p1, v2}, Lcom/inmobi/media/wa;->a(Lcom/inmobi/media/la;Lcom/inmobi/media/ga;)V

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No of In-App Purchases: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v1, p1, Lcom/inmobi/media/ga;->a:I

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n                                    | and No of Subscriptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget v1, p1, Lcom/inmobi/media/ga;->b:I

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-static {v0, v2, v1, v2}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/inmobi/media/ra;->a:Lcom/inmobi/media/wa;

    sget-object v1, Lcom/inmobi/media/ja;->a:Lcom/inmobi/media/ja;

    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/wa;->a(Lcom/inmobi/media/la;Lcom/inmobi/media/ga;)V

    .line 81
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
