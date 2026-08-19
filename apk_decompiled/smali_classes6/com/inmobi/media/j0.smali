.class public final Lcom/inmobi/media/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/X9;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/n0;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/inmobi/media/Wb;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/n0;ZLcom/inmobi/media/Wb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/j0;->a:Lcom/inmobi/media/n0;

    iput-boolean p2, p0, Lcom/inmobi/media/j0;->b:Z

    iput-object p3, p0, Lcom/inmobi/media/j0;->c:Lcom/inmobi/media/Wb;

    iput-object p4, p0, Lcom/inmobi/media/j0;->d:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 2
    const-string p1, "result"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/inmobi/media/j0;->a:Lcom/inmobi/media/n0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file saved - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , isReporting - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/inmobi/media/j0;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0, v2}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/inmobi/media/j0;->a:Lcom/inmobi/media/n0;

    iget-object v0, p0, Lcom/inmobi/media/j0;->c:Lcom/inmobi/media/Wb;

    iget-object v3, p0, Lcom/inmobi/media/j0;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/inmobi/media/j0;->b:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "process"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "beacon"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    .line 672
    new-instance v0, Lcom/inmobi/adquality/models/AdQualityResult;

    iget-object v2, v7, Lcom/inmobi/media/n0;->k:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 673
    invoke-virtual {v7, v0, p1}, Lcom/inmobi/media/n0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v2, v7, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, v7, Lcom/inmobi/media/n0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, v1}, Lcom/inmobi/adquality/models/AdQualityResult;->setImageLocation(Ljava/lang/String;)V

    .line 679
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez p1, :cond_2

    .line 682
    new-instance p1, Lcom/inmobi/adquality/models/AdQualityResult;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v7, Lcom/inmobi/media/n0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    .line 684
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file is saved. result - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/inmobi/media/n0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 685
    invoke-virtual {v7, p1}, Lcom/inmobi/media/n0;->a(Z)V

    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/j0;->a:Lcom/inmobi/media/n0;

    iget-object v1, p0, Lcom/inmobi/media/j0;->c:Lcom/inmobi/media/Wb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v2, "process"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const-class v2, Lcom/inmobi/media/Wb;

    const-string v2, "Wb"

    const-string v3, "error in running process - "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/inmobi/media/n0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 316
    iget-object p1, v0, Lcom/inmobi/media/n0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 317
    invoke-virtual {v0, p1}, Lcom/inmobi/media/n0;->a(Z)V

    return-void
.end method
