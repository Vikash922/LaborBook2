.class public Lcom/inmobi/media/l9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/inmobi/media/Kc;

.field public d:Z

.field public final e:Lcom/inmobi/media/f5;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public l:Lorg/json/JSONObject;

.field public m:Ljava/lang/String;

.field public n:Lcom/inmobi/media/m9;

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/inmobi/media/lb;

.field public x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/f5;)V
    .locals 9

    const-string v0, "GET"

    const-string v1, "requestType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string v7, "application/x-www-form-urlencoded"

    const/16 v8, 0x40

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/inmobi/media/l9;->v:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;I)V
    .locals 8

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1

    .line 83
    const-string p6, "application/x-www-form-urlencoded"

    :cond_1
    move-object v6, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 84
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestContentType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/l9;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/Kc;

    .line 5
    iput-boolean p4, p0, Lcom/inmobi/media/l9;->d:Z

    .line 6
    iput-object p5, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/l9;->f:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/inmobi/media/l9;->g:Z

    .line 10
    const-string p2, "l9"

    iput-object p2, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    .line 21
    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    const p2, 0xea60

    .line 27
    iput p2, p0, Lcom/inmobi/media/l9;->p:I

    .line 28
    iput p2, p0, Lcom/inmobi/media/l9;->q:I

    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcom/inmobi/media/l9;->r:Z

    .line 32
    iput-boolean p2, p0, Lcom/inmobi/media/l9;->t:Z

    .line 33
    iput-boolean p2, p0, Lcom/inmobi/media/l9;->u:Z

    .line 34
    iput-boolean p2, p0, Lcom/inmobi/media/l9;->v:Z

    .line 37
    iput-boolean p2, p0, Lcom/inmobi/media/l9;->x:Z

    .line 78
    const-string p2, "GET"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    goto :goto_0

    .line 80
    :cond_0
    const-string p2, "POST"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    .line 82
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/l9;->l:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/mb;
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    .line 197
    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/inmobi/media/jb;->a:Lcom/inmobi/media/jb;

    goto :goto_0

    .line 218
    :cond_0
    const-string v1, "POST"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/media/jb;->b:Lcom/inmobi/media/jb;

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/inmobi/media/jb;->a:Lcom/inmobi/media/jb;

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/l9;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    const-string v2, "url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v2, Lcom/inmobi/media/ib;

    invoke-direct {v2, v1, v0}, Lcom/inmobi/media/ib;-><init>(Ljava/lang/String;Lcom/inmobi/media/jb;)V

    .line 233
    sget-boolean v1, Lcom/inmobi/media/p9;->a:Z

    iget-object v1, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/util/HashMap;)V

    .line 234
    iget-object v1, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    .line 235
    const-string v3, "header"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iput-object v1, v2, Lcom/inmobi/media/ib;->c:Ljava/util/HashMap;

    .line 374
    iget v1, p0, Lcom/inmobi/media/l9;->p:I

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/ib;->h:Ljava/lang/Integer;

    .line 376
    iget v1, p0, Lcom/inmobi/media/l9;->q:I

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/ib;->i:Ljava/lang/Integer;

    .line 378
    iget-boolean v1, p0, Lcom/inmobi/media/l9;->r:Z

    .line 379
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/ib;->f:Ljava/lang/Boolean;

    .line 380
    iget-boolean v1, p0, Lcom/inmobi/media/l9;->s:Z

    .line 381
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/ib;->j:Ljava/lang/Boolean;

    .line 382
    iget-object v1, p0, Lcom/inmobi/media/l9;->w:Lcom/inmobi/media/lb;

    if-eqz v1, :cond_2

    .line 383
    const-string v3, "retryPolicy"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iput-object v1, v2, Lcom/inmobi/media/ib;->g:Lcom/inmobi/media/lb;

    .line 528
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->c()Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v3, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 539
    const-string v5, "httpPostBody "

    invoke-static {v4, v1, v5, v0}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_4
    const-string v1, "postBody"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    iput-object v0, v2, Lcom/inmobi/media/ib;->e:Ljava/lang/String;

    goto :goto_1

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 888
    iget-object v3, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getParams "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_6
    const-string v1, "queryParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    iput-object v0, v2, Lcom/inmobi/media/ib;->d:Ljava/util/HashMap;

    .line 1029
    :cond_7
    :goto_1
    new-instance v0, Lcom/inmobi/media/mb;

    invoke-direct {v0, v2}, Lcom/inmobi/media/mb;-><init>(Lcom/inmobi/media/ib;)V

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4

    .line 1035
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/Kc;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1036
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1038
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1042
    :try_start_0
    iget-object v0, v0, Lcom/inmobi/media/Kc;->a:Lcom/inmobi/media/A5;

    invoke-virtual {v0}, Lcom/inmobi/media/A5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v0}, Lcom/inmobi/media/Jc;->b()Lcom/inmobi/media/T0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/inmobi/media/T0;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    const-string v3, "GPID"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    const-class v0, Lcom/inmobi/media/Kc;

    const-string v0, "Kc"

    const-string v3, "getSimpleName(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    :cond_0
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    const-string v2, "u-id-map"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    const-string v0, "onResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 2
    const-string v3, "executeAsync: "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    iget-object v4, p0, Lcom/inmobi/media/l9;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->e()V

    .line 157
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->d:Z

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Dropping REQUEST FOR GDPR"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    new-instance v0, Lcom/inmobi/media/m9;

    invoke-direct {v0}, Lcom/inmobi/media/m9;-><init>()V

    .line 160
    new-instance v1, Lcom/inmobi/media/i9;

    .line 161
    sget-object v2, Lcom/inmobi/media/c4;->j:Lcom/inmobi/media/c4;

    .line 162
    const-string v3, "Network Request dropped as current request is not GDPR compliant."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 163
    iput-object v1, v0, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    .line 164
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Lcom/inmobi/media/mb;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/k9;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/k9;-><init>(Lcom/inmobi/media/l9;Lkotlin/jvm/functions/Function1;)V

    const-string p1, "responseListener"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object v1, v0, Lcom/inmobi/media/mb;->l:Lcom/inmobi/media/k9;

    .line 170
    sget-object p1, Lcom/inmobi/media/ob;->a:Ljava/util/Set;

    .line 171
    const-string p1, "request"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/inmobi/media/ob;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x0

    .line 192
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/ob;->a(Lcom/inmobi/media/mb;J)V

    return-void
.end method

.method public final b()Lcom/inmobi/media/m9;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 2
    const-string v3, "Executing network request to URL: "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/inmobi/media/l9;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->e()V

    .line 135
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->d:Z

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Dropping REQUEST FOR GDPR"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    new-instance v0, Lcom/inmobi/media/m9;

    invoke-direct {v0}, Lcom/inmobi/media/m9;-><init>()V

    .line 138
    new-instance v1, Lcom/inmobi/media/i9;

    .line 139
    sget-object v2, Lcom/inmobi/media/c4;->j:Lcom/inmobi/media/c4;

    .line 140
    const-string v3, "Network Request dropped as current request is not GDPR compliant."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/c4;Ljava/lang/String;)V

    .line 141
    iput-object v1, v0, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    return-object v0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/m9;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 144
    const-string v4, "response has been failed before execute - "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    iget-object v4, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/m9;

    if-eqz v4, :cond_3

    .line 284
    iget-object v2, v4, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    .line 285
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/m9;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Lcom/inmobi/media/mb;

    move-result-object v0

    .line 290
    iget-object v3, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 291
    const-string v5, "Making network request to: "

    invoke-static {v4, v1, v5}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    iget-object v5, v0, Lcom/inmobi/media/mb;->a:Ljava/lang/String;

    .line 293
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_6
    const-string v1, "request"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :cond_7
    invoke-static {v0, v2}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/mb;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/qb;

    move-result-object v3

    .line 296
    iget-object v4, v3, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v4, :cond_8

    .line 297
    iget-object v4, v4, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_0

    :cond_8
    move-object v4, v2

    .line 298
    :goto_0
    sget-object v5, Lcom/inmobi/media/c4;->m:Lcom/inmobi/media/c4;

    if-eq v4, v5, :cond_7

    .line 299
    const-string v0, "<this>"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/inmobi/media/m9;

    invoke-direct {v0}, Lcom/inmobi/media/m9;-><init>()V

    .line 327
    iget-object v2, v3, Lcom/inmobi/media/qb;->c:[B

    if-eqz v2, :cond_a

    .line 328
    const-string v4, "value"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    array-length v4, v2

    const/4 v5, 0x0

    if-nez v4, :cond_9

    .line 362
    new-array v2, v5, [B

    iput-object v2, v0, Lcom/inmobi/media/m9;->b:[B

    goto :goto_1

    .line 365
    :cond_9
    array-length v4, v2

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/inmobi/media/m9;->b:[B

    .line 366
    array-length v6, v2

    invoke-static {v2, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    :cond_a
    :goto_1
    iget-object v2, v3, Lcom/inmobi/media/qb;->b:Ljava/util/Map;

    .line 368
    iput-object v2, v0, Lcom/inmobi/media/m9;->e:Ljava/util/Map;

    .line 369
    iget v2, v3, Lcom/inmobi/media/qb;->e:I

    .line 370
    iput v2, v0, Lcom/inmobi/media/m9;->d:I

    .line 371
    iget-object v2, v3, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    .line 372
    iput-object v2, v0, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    .line 373
    const-string v2, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/l9;->f:Ljava/lang/String;

    .line 3
    const-string v1, "application/json"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/media/l9;->l:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/inmobi/media/p9;->a:Z

    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/inmobi/media/p9;->a(Ljava/util/HashMap;)V

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    const-string v1, "&"

    invoke-static {v1, v0}, Lcom/inmobi/media/p9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_9

    .line 3
    sget-boolean v2, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v1}, Lcom/inmobi/media/p9;->a(Ljava/util/HashMap;)V

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    const-string v2, "&"

    invoke-static {v2, v1}, Lcom/inmobi/media/p9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/inmobi/media/l9;->e:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/l9;->h:Ljava/lang/String;

    .line 6
    const-string v5, "TAG"

    const-string v6, "Get params: "

    invoke-static {v4, v5, v6, v1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-gt v6, v3, :cond_6

    if-nez v7, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v3

    .line 13
    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 14
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    if-nez v7, :cond_4

    if-nez v8, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v3, v4

    .line 150
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v6, "?"

    if-eqz v0, :cond_7

    .line 153
    invoke-static {v0, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    .line 156
    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v0, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->f()V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-static {}, Lcom/inmobi/media/Kb;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    const-string v1, "POST"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/inmobi/media/l9;->f:Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->g:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/inmobi/media/l9;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/t4;

    invoke-virtual {v0}, Lcom/inmobi/media/t4;->j()V

    .line 2
    iget-boolean v1, p0, Lcom/inmobi/media/l9;->d:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/media/t4;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/media/l9;->d:Z

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    const-string v1, "GET"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "POST"

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    .line 5
    iget-boolean v3, p0, Lcom/inmobi/media/l9;->t:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    .line 6
    sget-object v3, Lcom/inmobi/media/c1;->e:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    sget-object v3, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    iget-boolean v4, p0, Lcom/inmobi/media/l9;->o:Z

    invoke-virtual {v3, v4}, Lcom/inmobi/media/E3;->a(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/inmobi/media/G4;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    .line 11
    iget-boolean v3, p0, Lcom/inmobi/media/l9;->u:Z

    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {p0, v0}, Lcom/inmobi/media/l9;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    .line 15
    iget-boolean v3, p0, Lcom/inmobi/media/l9;->t:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_4

    .line 16
    sget-object v3, Lcom/inmobi/media/c1;->e:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 18
    sget-object v3, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    iget-boolean v4, p0, Lcom/inmobi/media/l9;->o:Z

    invoke-virtual {v3, v4}, Lcom/inmobi/media/E3;->a(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Lcom/inmobi/media/G4;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    .line 21
    iget-boolean v3, p0, Lcom/inmobi/media/l9;->u:Z

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {p0, v0}, Lcom/inmobi/media/l9;->a(Ljava/util/HashMap;)V

    .line 23
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->v:Z

    if-eqz v0, :cond_9

    .line 24
    invoke-static {}, Lcom/inmobi/media/t4;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v3, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "consentObject"

    const-string v5, "toString(...)"

    if-eqz v3, :cond_8

    .line 27
    iget-object v3, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 28
    :cond_8
    iget-object v3, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 29
    iget-object v3, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    :cond_9
    :goto_1
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->x:Z

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "u-appsecure"

    if-eqz v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 36
    sget-byte v2, Lcom/inmobi/media/c1;->f:B

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    iget-object v0, p0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 40
    sget-byte v2, Lcom/inmobi/media/c1;->f:B

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_b
    :goto_2
    return-void
.end method
