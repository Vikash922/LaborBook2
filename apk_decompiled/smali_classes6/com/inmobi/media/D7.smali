.class public Lcom/inmobi/media/D7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/inmobi/media/E7;

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:B

.field public k:B

.field public l:B

.field public m:B

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/inmobi/media/H7;

.field public final s:Ljava/util/ArrayList;

.field public final t:Ljava/util/HashMap;

.field public u:Ljava/lang/Object;

.field public v:I

.field public w:Lcom/inmobi/media/D7;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;I)V
    .locals 6

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 211
    const-string p1, ""

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 212
    const-string p2, "root"

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 213
    const-string p3, "CONTAINER"

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    .line 214
    new-instance p4, Lcom/inmobi/media/E7;

    invoke-direct {p4}, Lcom/inmobi/media/E7;-><init>()V

    :cond_3
    move-object v4, p4

    .line 215
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/D7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/util/List;)V
    .locals 1

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/D7;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 166
    const-string p1, "NO_ACTION"

    iput-object p1, p0, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    .line 167
    const-string p1, ""

    iput-object p1, p0, Lcom/inmobi/media/D7;->h:Ljava/lang/String;

    const/4 p2, 0x2

    .line 181
    iput-byte p2, p0, Lcom/inmobi/media/D7;->m:B

    const/4 p2, -0x1

    .line 182
    iput p2, p0, Lcom/inmobi/media/D7;->n:I

    .line 187
    iput-object p1, p0, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/inmobi/media/D7;->q:Ljava/lang/String;

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    .line 199
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 210
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Lcom/inmobi/media/u8;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V
    .locals 9

    const-string v0, "tracker"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/u8;->d:Ljava/lang/String;

    .line 2
    sget-boolean v1, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v0, p1}, Lcom/inmobi/media/p9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v2, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    .line 4
    iget-object v4, p0, Lcom/inmobi/media/u8;->c:Ljava/util/Map;

    .line 5
    sget-object v7, Lcom/inmobi/media/V9;->b:Lcom/inmobi/media/V9;

    const/4 v5, 0x1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/X1;Lcom/inmobi/media/V9;Lcom/inmobi/media/f5;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(B)V
    .locals 0

    .line 6
    iput-byte p1, p0, Lcom/inmobi/media/D7;->j:B

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/inmobi/media/D7;->o:I

    return-void
.end method

.method public final a(Lcom/inmobi/media/H7;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 76
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 77
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 168
    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/inmobi/media/D7;->q:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V
    .locals 3

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/D7;->s:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/u8;

    .line 68
    iget-object v2, v1, Lcom/inmobi/media/u8;->b:Ljava/lang/String;

    .line 69
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {v1, p2, p3, p4}, Lcom/inmobi/media/D7;->a(Lcom/inmobi/media/u8;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/inmobi/media/D7;->m:B

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/inmobi/media/D7;->n:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 8
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 9
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 92
    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 94
    :goto_4
    iput-object p1, p0, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
