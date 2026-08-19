.class public final Lcom/inmobi/media/mb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/inmobi/media/jb;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/inmobi/media/kb;

.field public final g:Z

.field public final h:Lcom/inmobi/media/lb;

.field public final i:I

.field public final j:I

.field public final k:Z

.field public l:Lcom/inmobi/media/k9;

.field public m:I


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ib;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "mb"

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/inmobi/media/ib;->a:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/inmobi/media/mb;->a:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/inmobi/media/ib;->b:Lcom/inmobi/media/jb;

    .line 7
    iput-object v0, p0, Lcom/inmobi/media/mb;->b:Lcom/inmobi/media/jb;

    .line 8
    iget-object v0, p1, Lcom/inmobi/media/ib;->c:Ljava/util/HashMap;

    .line 9
    iput-object v0, p0, Lcom/inmobi/media/mb;->c:Ljava/util/HashMap;

    .line 10
    iget-object v0, p1, Lcom/inmobi/media/ib;->d:Ljava/util/HashMap;

    .line 11
    iput-object v0, p0, Lcom/inmobi/media/mb;->d:Ljava/util/HashMap;

    .line 12
    iget-object v0, p1, Lcom/inmobi/media/ib;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 13
    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/inmobi/media/mb;->e:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/inmobi/media/kb;->a:Lcom/inmobi/media/kb;

    iput-object v0, p0, Lcom/inmobi/media/mb;->f:Lcom/inmobi/media/kb;

    .line 15
    iget-object v0, p1, Lcom/inmobi/media/ib;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/media/mb;->g:Z

    .line 17
    iget-object v0, p1, Lcom/inmobi/media/ib;->g:Lcom/inmobi/media/lb;

    .line 18
    iput-object v0, p0, Lcom/inmobi/media/mb;->h:Lcom/inmobi/media/lb;

    .line 19
    iget-object v0, p1, Lcom/inmobi/media/ib;->h:Ljava/lang/Integer;

    const v1, 0xea60

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/inmobi/media/mb;->i:I

    .line 21
    iget-object v0, p1, Lcom/inmobi/media/ib;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    iput v1, p0, Lcom/inmobi/media/mb;->j:I

    .line 23
    iget-object p1, p1, Lcom/inmobi/media/ib;->j:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/inmobi/media/mb;->k:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/mb;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/inmobi/media/mb;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/inmobi/media/j9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | TAG:null | METHOD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/mb;->b:Lcom/inmobi/media/jb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | PAYLOAD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/mb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | HEADERS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/mb;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | RETRY_POLICY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/mb;->h:Lcom/inmobi/media/lb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
