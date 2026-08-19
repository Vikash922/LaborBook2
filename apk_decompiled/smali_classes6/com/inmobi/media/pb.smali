.class public final Lcom/inmobi/media/pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/inmobi/media/mb;

.field public final b:Lcom/inmobi/media/nb;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/mb;Lcom/inmobi/media/nb;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/mb;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/pb;->b:Lcom/inmobi/media/nb;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/pb;Lcom/inmobi/media/qb;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/mb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/inmobi/media/mb;->l:Lcom/inmobi/media/k9;

    const-string v2, "request"

    if-eqz v1, :cond_2

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v3, "<this>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v3, Lcom/inmobi/media/m9;

    invoke-direct {v3}, Lcom/inmobi/media/m9;-><init>()V

    .line 128
    iget-object v4, p1, Lcom/inmobi/media/qb;->c:[B

    if-eqz v4, :cond_1

    .line 129
    const-string v5, "value"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    array-length v5, v4

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 163
    new-array v4, v6, [B

    iput-object v4, v3, Lcom/inmobi/media/m9;->b:[B

    goto :goto_0

    .line 166
    :cond_0
    array-length v5, v4

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/inmobi/media/m9;->b:[B

    .line 167
    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/inmobi/media/qb;->b:Ljava/util/Map;

    .line 169
    iput-object v4, v3, Lcom/inmobi/media/m9;->e:Ljava/util/Map;

    .line 170
    iget v4, p1, Lcom/inmobi/media/qb;->e:I

    .line 171
    iput v4, v3, Lcom/inmobi/media/m9;->d:I

    .line 172
    iget-object p1, p1, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    .line 173
    iput-object p1, v3, Lcom/inmobi/media/m9;->c:Lcom/inmobi/media/i9;

    .line 174
    iget-object p1, v1, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 175
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, v1, Lcom/inmobi/media/k9;->b:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/inmobi/media/mb;->l:Lcom/inmobi/media/k9;

    .line 178
    sget-object p1, Lcom/inmobi/media/ob;->a:Ljava/util/Set;

    .line 179
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :try_start_0
    sget-object p1, Lcom/inmobi/media/ob;->a:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/mb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget v0, Lcom/inmobi/media/h9;->a:I

    iget-object v0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/mb;

    iget-object v1, p0, Lcom/inmobi/media/pb;->b:Lcom/inmobi/media/nb;

    invoke-static {v0, v1}, Lcom/inmobi/media/h9;->a(Lcom/inmobi/media/mb;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/qb;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/i9;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v2, Lcom/inmobi/media/c4;->m:Lcom/inmobi/media/c4;

    if-eq v1, v2, :cond_1

    .line 6
    sget-object v1, Lcom/inmobi/media/m4;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/P6;

    .line 7
    new-instance v2, Lcom/inmobi/media/pb$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/media/pb$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/pb;Lcom/inmobi/media/qb;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "runnable"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, v1, Lcom/inmobi/media/P6;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    iget-object v0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/mb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
