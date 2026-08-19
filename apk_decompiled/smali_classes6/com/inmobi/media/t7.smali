.class public Lcom/inmobi/media/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/x;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public A:Z

.field public B:I

.field public C:Lcom/inmobi/media/t7;

.field public D:Z

.field public E:Lcom/inmobi/media/D7;

.field public F:Ljava/lang/String;

.field public G:Landroid/content/Intent;

.field public H:Lcom/inmobi/media/Ya;

.field public I:Lcom/inmobi/media/Ya;

.field public J:Lcom/inmobi/media/t7;

.field public K:B

.field public L:Lcom/inmobi/media/s7;

.field public final M:Lcom/inmobi/media/A;

.field public final N:Lcom/inmobi/media/p7;

.field public final O:Lcom/inmobi/media/l7;

.field public final P:Lcom/inmobi/media/q7;

.field public final Q:Lcom/inmobi/media/k7;

.field public R:Ljava/util/LinkedHashMap;

.field public final S:Ljava/lang/String;

.field public final T:Lcom/inmobi/media/o7;

.field public final a:B

.field public final b:Lcom/inmobi/media/P7;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Set;

.field public final e:J

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lcom/inmobi/media/Z2;

.field public final i:Lcom/inmobi/media/u6;

.field public final j:Lcom/inmobi/media/f5;

.field public final k:Lkotlin/Lazy;

.field public final l:Lcom/inmobi/media/r7;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/HashSet;

.field public final o:Ljava/util/ArrayList;

.field public p:Lcom/inmobi/media/ld;

.field public q:Lcom/inmobi/media/d8;

.field public r:Z

.field public final s:Lcom/inmobi/commons/core/configs/AdConfig;

.field public t:Z

.field public u:Z

.field public v:Lcom/inmobi/media/t7;

.field public w:Lcom/inmobi/media/O0;

.field public x:Ljava/lang/ref/WeakReference;

.field public y:I

.field public z:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;BLcom/inmobi/media/P7;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/Z2;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mNativeDataModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-byte p2, p0, Lcom/inmobi/media/t7;->a:B

    .line 5
    iput-object p3, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 6
    iput-object p4, p0, Lcom/inmobi/media/t7;->c:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/inmobi/media/t7;->d:Ljava/util/Set;

    .line 9
    iput-wide p7, p0, Lcom/inmobi/media/t7;->e:J

    .line 10
    iput-boolean p9, p0, Lcom/inmobi/media/t7;->f:Z

    .line 11
    iput-object p10, p0, Lcom/inmobi/media/t7;->g:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    .line 13
    iput-object p12, p0, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    .line 14
    iput-object p13, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 17
    sget-object p2, Lcom/inmobi/media/n7;->a:Lcom/inmobi/media/n7;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/t7;->k:Lkotlin/Lazy;

    .line 26
    new-instance p2, Lcom/inmobi/media/r7;

    invoke-direct {p2, p0}, Lcom/inmobi/media/r7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p2, p0, Lcom/inmobi/media/t7;->l:Lcom/inmobi/media/r7;

    .line 145
    const-string p2, "t7"

    iput-object p2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 146
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/t7;->n:Ljava/util/HashSet;

    .line 147
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    .line 152
    iput-object p6, p0, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 156
    iput-object p0, p0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 159
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    const/4 p2, -0x1

    .line 160
    iput p2, p0, Lcom/inmobi/media/t7;->y:I

    .line 187
    new-instance p4, Lcom/inmobi/media/p7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/p7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p4, p0, Lcom/inmobi/media/t7;->N:Lcom/inmobi/media/p7;

    .line 217
    new-instance p4, Lcom/inmobi/media/l7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/l7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p4, p0, Lcom/inmobi/media/t7;->O:Lcom/inmobi/media/l7;

    .line 232
    new-instance p4, Lcom/inmobi/media/q7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/q7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p4, p0, Lcom/inmobi/media/t7;->P:Lcom/inmobi/media/q7;

    .line 294
    new-instance p4, Lcom/inmobi/media/k7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/k7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p4, p0, Lcom/inmobi/media/t7;->Q:Lcom/inmobi/media/k7;

    .line 295
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    .line 296
    invoke-static {p1, p0}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 297
    iget-object p1, p3, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-nez p1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 299
    iput-wide p3, p1, Lcom/inmobi/media/H7;->y:J

    .line 300
    :goto_0
    iput-byte p2, p0, Lcom/inmobi/media/t7;->K:B

    .line 301
    sget-object p1, Lcom/inmobi/media/A;->a:Lcom/inmobi/media/A;

    iput-object p1, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    .line 302
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/inmobi/media/t7$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/inmobi/media/t7$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/t7;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    const-string p1, "native"

    iput-object p1, p0, Lcom/inmobi/media/t7;->S:Ljava/lang/String;

    .line 736
    new-instance p1, Lcom/inmobi/media/o7;

    invoke-direct {p1, p0}, Lcom/inmobi/media/o7;-><init>(Lcom/inmobi/media/t7;)V

    iput-object p1, p0, Lcom/inmobi/media/t7;->T:Lcom/inmobi/media/o7;

    return-void
.end method

.method public static a(Ljava/lang/String;)B
    .locals 7

    .line 3837
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4843
    invoke-virtual {p0}, Ljava/lang/String;->length()I

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

    .line 4848
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 4849
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

    .line 4850
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4851
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "fullscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x4

    goto :goto_5

    :sswitch_1
    const-string v0, "skip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x2

    goto :goto_5

    :sswitch_2
    const-string v0, "play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x5

    goto :goto_5

    :sswitch_3
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :sswitch_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_5
    const-string v0, "replay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :sswitch_6
    const-string v0, "reload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x3

    goto :goto_5

    :goto_4
    move v1, v2

    :cond_a
    :goto_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x37b57e67 -> :sswitch_6
        -0x37b3b819 -> :sswitch_5
        0x0 -> :sswitch_4
        0x2fb91e -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x35e57f -> :sswitch_1
        0x68f7bbb -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/view/View;)Lcom/inmobi/media/t8;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 5522
    const-string v1, "timerView"

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/inmobi/media/t8;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/inmobi/media/t8;

    :cond_1
    return-object v0
.end method

.method public static final a(Lcom/inmobi/media/t7;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p0, p0, Lcom/inmobi/media/t7;->P:Lcom/inmobi/media/q7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/t7;)V
    .locals 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    .line 979
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 980
    iget-object p0, p0, Lcom/inmobi/media/t7;->P:Lcom/inmobi/media/q7;

    .line 981
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V

    return-void
.end method

.method public static c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2934
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2935
    iget-object v1, p0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 2936
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2937
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 2938
    instance-of v1, p0, Lcom/inmobi/media/t7;

    if-eqz v1, :cond_2

    move-object v0, p0

    :cond_2
    invoke-static {v0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final d(Lcom/inmobi/media/t7;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/t7;->A:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/D7;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/D7;Lcom/inmobi/media/P7;Ljava/lang/String;)Lcom/inmobi/media/D7;
    .locals 2

    .line 2777
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2781
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\|"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p3

    .line 3825
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 3826
    check-cast p3, [Ljava/lang/String;

    .line 3827
    aget-object v0, p3, v1

    invoke-virtual {p2, v0}, Lcom/inmobi/media/P7;->m(Ljava/lang/String;)Lcom/inmobi/media/D7;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3828
    iget-object p2, p2, Lcom/inmobi/media/P7;->g:Lcom/inmobi/media/P7;

    .line 3829
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object p1

    return-object p1

    .line 3830
    :cond_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 3833
    :cond_2
    array-length p1, p3

    const/4 p2, 0x2

    if-gt p1, p2, :cond_3

    const/4 p1, 0x1

    .line 3834
    iput-byte p1, v0, Lcom/inmobi/media/D7;->l:B

    goto :goto_0

    .line 3835
    :cond_3
    aget-object p1, p3, p2

    invoke-static {p1}, Lcom/inmobi/media/M7;->a(Ljava/lang/String;)B

    move-result p1

    .line 3836
    iput-byte p1, v0, Lcom/inmobi/media/D7;->l:B

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final a(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;
    .locals 5

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p2, Lcom/inmobi/media/D7;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    iput-byte v3, p2, Lcom/inmobi/media/D7;->k:B

    return-object p2

    .line 4
    :cond_1
    new-instance v2, Lkotlin/text/Regex;

    const-string v4, "\\|"

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 1024
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 1025
    check-cast v1, [Ljava/lang/String;

    .line 1026
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1027
    aget-object p1, v1, v3

    invoke-static {p1}, Lcom/inmobi/media/t7;->a(Ljava/lang/String;)B

    move-result p1

    .line 1028
    iput-byte p1, p2, Lcom/inmobi/media/D7;->k:B

    return-object p2

    .line 1029
    :cond_2
    aget-object v2, v1, v3

    invoke-virtual {p1, v2}, Lcom/inmobi/media/P7;->m(Ljava/lang/String;)Lcom/inmobi/media/D7;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1030
    iget-object p1, p1, Lcom/inmobi/media/P7;->g:Lcom/inmobi/media/P7;

    .line 1031
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object p1

    return-object p1

    .line 1032
    :cond_3
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 1035
    :cond_4
    aget-object p1, v1, v4

    invoke-static {p1}, Lcom/inmobi/media/t7;->a(Ljava/lang/String;)B

    move-result p1

    .line 1036
    iput-byte p1, v2, Lcom/inmobi/media/D7;->k:B

    .line 1037
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 1038
    const-string v0, "TAG"

    const-string v1, "Referenced asset ("

    invoke-static {p2, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    iget-object v1, v2, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 1040
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public final a(Ljava/lang/String;Lcom/inmobi/media/D7;Lcom/inmobi/media/t6;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "TAG"

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8773
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8774
    :cond_0
    invoke-static {p1}, Lcom/inmobi/media/w2;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8775
    iget-object v2, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "openUrlUsingEmbeddedBrowser"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 8776
    sput-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/Ya;

    .line 8777
    iget-object v3, p0, Lcom/inmobi/media/t7;->L:Lcom/inmobi/media/s7;

    if-nez v3, :cond_2

    .line 8778
    new-instance v3, Lcom/inmobi/media/s7;

    invoke-direct {v3, p0}, Lcom/inmobi/media/s7;-><init>(Lcom/inmobi/media/t7;)V

    .line 8820
    iput-object v3, p0, Lcom/inmobi/media/t7;->L:Lcom/inmobi/media/s7;

    .line 8821
    :cond_2
    sput-object v3, Lcom/inmobi/ads/rendering/InMobiAdActivity;->m:Lcom/inmobi/media/ab;

    .line 8822
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8825
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v5, 0x64

    .line 8826
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8830
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8831
    const-string p1, "placementId"

    iget-wide v4, p0, Lcom/inmobi/media/t7;->e:J

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8832
    const-string p1, "creativeId"

    invoke-virtual {p0}, Lcom/inmobi/media/t7;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8833
    const-string p1, "impressionId"

    invoke-virtual {p0}, Lcom/inmobi/media/t7;->getImpressionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8834
    const-string p1, "allowAutoRedirection"

    iget-boolean v4, p0, Lcom/inmobi/media/t7;->f:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 8836
    const-string p1, "lpTelemetryControlInfo"

    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8837
    :cond_3
    iget-boolean p1, p2, Lcom/inmobi/media/D7;->i:Z

    if-eqz p1, :cond_4

    .line 8838
    const-string p1, "supportLockScreen"

    const/4 p2, 0x1

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8841
    :cond_4
    sget-object p1, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v2

    :cond_5
    const/16 p1, 0xa

    .line 8844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8846
    iget-object p2, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v0, "Error while opening Embedded Browser"

    invoke-virtual {p2, p3, v0, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 8847
    :cond_6
    sget-object p2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 8848
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 8849
    sget-object p2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/16 p1, 0x9

    .line 8850
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;
    .locals 8

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5157
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5158
    iget-boolean v1, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 5159
    :cond_0
    const-string v1, "child"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5498
    instance-of v1, p1, Lcom/inmobi/media/H7;

    const/4 v2, 0x1

    const-string v3, "card_scrollable"

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/inmobi/media/H7;

    .line 5500
    iget-object v4, v1, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 5501
    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5502
    :cond_1
    iget-object p1, p1, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    .line 5503
    instance-of v1, p1, Lcom/inmobi/media/H7;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_4

    .line 5505
    iget-object p1, v1, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 5506
    invoke-static {v3, p1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 5507
    :cond_3
    iget-object v1, v1, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    .line 5508
    instance-of p1, v1, Lcom/inmobi/media/H7;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_4
    move-object v1, v4

    .line 5509
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_5

    .line 5510
    iget-wide v6, v1, Lcom/inmobi/media/H7;->y:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_5

    move-wide v2, v6

    .line 5511
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 5512
    iget-object p1, p1, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p1, :cond_6

    .line 5513
    iget-wide v4, p1, Lcom/inmobi/media/H7;->y:J

    .line 5514
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 5515
    const-string v1, "$LTS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5516
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$STS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$TS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5519
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 5520
    iget-object p1, p1, Lcom/inmobi/media/P7;->t:Ljava/util/Map;

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5521
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a()V
    .locals 8

    .line 6125
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "dismissCurrentViewContainer"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6126
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_1

    return-void

    .line 6127
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 6128
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/t7;->q()V

    .line 6129
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 6130
    const-string v2, "container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6131
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 6132
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 6133
    instance-of v2, v0, Lcom/inmobi/media/A8;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 6134
    invoke-virtual {v0}, Lcom/inmobi/media/t7;->getVideoContainerView()Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/inmobi/media/M8;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/inmobi/media/M8;

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 6136
    invoke-virtual {v2}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v2

    .line 6137
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 6138
    instance-of v5, v4, Lcom/inmobi/media/C8;

    if-eqz v5, :cond_5

    .line 6142
    move-object v5, v4

    check-cast v5, Lcom/inmobi/media/C8;

    .line 6143
    iget-object v5, v5, Lcom/inmobi/media/D7;->t:Ljava/util/HashMap;

    .line 6144
    const-string v6, "seekPosition"

    invoke-virtual {v2}, Lcom/inmobi/media/L8;->getCurrentPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6145
    const-string v6, "lastMediaVolume"

    invoke-virtual {v2}, Lcom/inmobi/media/L8;->getVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6148
    move-object v2, v4

    check-cast v2, Lcom/inmobi/media/C8;

    .line 6149
    iget-object v2, v2, Lcom/inmobi/media/D7;->w:Lcom/inmobi/media/D7;

    .line 6150
    instance-of v5, v2, Lcom/inmobi/media/C8;

    if-eqz v5, :cond_4

    .line 6151
    check-cast v2, Lcom/inmobi/media/C8;

    move-object v5, v4

    check-cast v5, Lcom/inmobi/media/C8;

    invoke-virtual {v2, v5}, Lcom/inmobi/media/C8;->a(Lcom/inmobi/media/C8;)V

    .line 6153
    :cond_4
    check-cast v4, Lcom/inmobi/media/C8;

    invoke-virtual {p0, v4}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/C8;)V

    .line 6157
    :cond_5
    iget-object v0, v0, Lcom/inmobi/media/t7;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 6158
    :goto_1
    instance-of v2, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz v2, :cond_7

    .line 6159
    move-object v2, v0

    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v4, 0x1

    .line 6160
    iput-boolean v4, v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 6161
    move-object v2, v0

    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 6162
    iget v2, p0, Lcom/inmobi/media/t7;->y:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 6163
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6164
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 6165
    instance-of v2, v0, Lcom/inmobi/media/t7;

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_a

    .line 6166
    iput-object v3, v0, Lcom/inmobi/media/t7;->C:Lcom/inmobi/media/t7;

    .line 6167
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/inmobi/media/t7$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/inmobi/media/t7$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/t7;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 6175
    iget-object v2, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 6176
    const-string v4, "Encountered unexpected error in handling exit action on video: "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6177
    invoke-static {v0, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 7331
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7332
    :cond_9
    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in exiting video"

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7333
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 7334
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 7335
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final a(BLjava/util/Map;)V
    .locals 4

    .line 1047
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const-string v1, "TAG"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 1048
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 1049
    iget-object p1, p1, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p1, :cond_6

    .line 1050
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "reportAdLoad"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 1054
    check-cast p2, Ljava/util/HashMap;

    const-string v1, "load"

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1055
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 1056
    iget-object p1, p1, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p1, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "reportAdServed"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 1061
    check-cast p2, Ljava/util/HashMap;

    const-string v1, "client_fill"

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1044
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    .line 1045
    invoke-static {p1, p0}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/inmobi/media/D7;)V
    .locals 10

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->m()V

    .line 1064
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {p0, v0}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v2

    .line 1067
    invoke-virtual {p0, v0, v2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Ljava/util/HashMap;)V

    .line 1070
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1071
    invoke-virtual {p0, p2, v2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Couldn\'t find an asset reference for this asset click URL"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_2
    invoke-virtual {p0, p2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v0

    .line 1076
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Ljava/util/HashMap;)V

    .line 1079
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 1080
    :cond_4
    iget-object v2, p2, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1081
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-gt v6, v3, :cond_a

    if-nez v7, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    move v8, v3

    .line 1086
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 1087
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_6

    move v8, v4

    goto :goto_3

    :cond_6
    move v8, v5

    :goto_3
    if-nez v7, :cond_8

    if-nez v8, :cond_7

    move v7, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1088
    :cond_a
    :goto_4
    invoke-static {v3, v4, v2, v6}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    .line 1759
    :goto_5
    invoke-static {v2}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1760
    iget-object v0, v0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/inmobi/media/O0;->a()V

    .line 1762
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    .line 1766
    const-string v1, "VIDEO"

    .line 1767
    iget-object v2, v0, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 1768
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    .line 1769
    iget-byte v2, v0, Lcom/inmobi/media/D7;->k:B

    if-ne v1, v2, :cond_d

    const/4 v1, 0x4

    .line 1770
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    iput v1, p2, Lcom/inmobi/media/D7;->v:I

    .line 1772
    :cond_d
    invoke-virtual {p0, v0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/D7;)V

    goto :goto_6

    .line 1774
    :cond_e
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Couldn\'t find an asset reference for this asset action! Ignoring the asset action ..."

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final a(Lcom/inmobi/media/C8;)V
    .locals 6

    .line 5523
    invoke-virtual {p1}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/jd;

    .line 5524
    iget-object v0, v0, Lcom/inmobi/media/jd;->j:Lcom/inmobi/media/ad;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 5525
    iget-boolean v2, v0, Lcom/inmobi/media/ad;->g:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 5526
    iget-object v2, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "Invoking close end card trackers."

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5527
    :cond_1
    const-string v2, "closeEndCard"

    invoke-virtual {v0, v2}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6122
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/u8;

    .line 6123
    invoke-virtual {p0, p1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    invoke-static {v3, v4, v1, v5}, Lcom/inmobi/media/D7;->a(Lcom/inmobi/media/u8;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 6124
    iput-boolean p1, v0, Lcom/inmobi/media/ad;->g:Z

    :cond_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/D7;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v3, "asset"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "interactionMode"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "url"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7346
    iget-object v5, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v12, "TAG"

    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/g5;

    const-string v7, "openUrl"

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7347
    :cond_0
    const-string v5, "EMBEDDED"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "IN_CUSTOM"

    const/16 v13, 0xc

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-eqz v5, :cond_3

    if-nez v11, :cond_1

    goto :goto_0

    .line 7349
    :cond_1
    iput-object v6, v11, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 7350
    :goto_0
    invoke-virtual {v1, v10, v0, v11}, Lcom/inmobi/media/t7;->a(Ljava/lang/String;Lcom/inmobi/media/D7;Lcom/inmobi/media/t6;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7351
    sget-object v2, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v11, v0, v14}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    .line 7352
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v0, v15

    :goto_1
    if-nez v0, :cond_16

    .line 7355
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    goto/16 :goto_9

    .line 7357
    :cond_3
    const-string v5, "INAPP"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "EX_NATIVE"

    if-eqz v2, :cond_e

    .line 7358
    iget-object v2, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "openUrlInCCT"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7359
    :cond_4
    iget-object v2, v1, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/Context;

    if-nez v8, :cond_5

    goto/16 :goto_9

    .line 7363
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6

    .line 7364
    iget-object v2, v1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/inmobi/media/O0;->e()V

    .line 7366
    :cond_6
    invoke-static {v8}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7367
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 7368
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    move-result v3

    if-eqz v2, :cond_8

    if-nez v3, :cond_7

    goto :goto_2

    .line 7379
    :cond_7
    new-instance v0, Lcom/inmobi/media/h2;

    iget-object v6, v1, Lcom/inmobi/media/t7;->Q:Lcom/inmobi/media/k7;

    iget-object v7, v1, Lcom/inmobi/media/t7;->l:Lcom/inmobi/media/r7;

    const-string v16, "NATIVE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move-object v2, v0

    move-object/from16 v3, p3

    move-object v5, v8

    move-object/from16 v17, v8

    move-object/from16 v8, p4

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/h2;-><init>(Ljava/lang/String;Lcom/inmobi/media/g2;Landroid/content/Context;Lcom/inmobi/media/c2;Lcom/inmobi/media/Aa;Lcom/inmobi/media/t6;Ljava/lang/String;)V

    .line 7380
    invoke-virtual {v0}, Lcom/inmobi/media/h2;->a()V

    goto/16 :goto_9

    :cond_8
    :goto_2
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 7381
    iget-object v2, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ChromeCustomTab fallback to Embedded"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v11, :cond_a

    goto :goto_3

    .line 7384
    :cond_a
    iput-object v6, v11, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 7385
    :goto_3
    invoke-virtual {v1, v10, v0, v11}, Lcom/inmobi/media/t7;->a(Ljava/lang/String;Lcom/inmobi/media/D7;Lcom/inmobi/media/t6;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7386
    sget-object v2, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v11, v0, v14}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    .line 7387
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_b
    move-object v0, v15

    :goto_4
    if-nez v0, :cond_16

    .line 7390
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :goto_5
    move-object v2, v0

    .line 7398
    :try_start_2
    iget-object v0, v1, Lcom/inmobi/media/t7;->l:Lcom/inmobi/media/r7;

    const-string v3, "NATIVE"

    move-object/from16 v4, v17

    invoke-static {v4, v10, v0, v3}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;)I

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v5, v18

    .line 7400
    iput-object v5, v11, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 7401
    :goto_6
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 7403
    iget-object v3, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_d

    iget-object v4, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v5, "Exception occurred while opening External "

    invoke-virtual {v3, v4, v5, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 7404
    :cond_d
    sget-object v0, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v11, v3, v14}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    .line 7406
    :goto_7
    iget-object v0, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_16

    iget-object v3, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v4, "Fallback to External while opening cct"

    invoke-virtual {v0, v3, v4, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9

    :cond_e
    move-object v5, v9

    .line 7407
    iget-object v2, v0, Lcom/inmobi/media/D7;->q:Ljava/lang/String;

    .line 7408
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8743
    iget-object v3, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_f

    iget-object v4, v1, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v6, "openUrlUsingExternalBrowser"

    invoke-virtual {v3, v4, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8744
    :cond_f
    iget-object v3, v1, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_9

    :cond_10
    if-nez v11, :cond_11

    goto :goto_8

    .line 8748
    :cond_11
    iput-object v5, v11, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 8749
    :goto_8
    iget-object v3, v1, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 8750
    iget-object v4, v1, Lcom/inmobi/media/t7;->l:Lcom/inmobi/media/r7;

    .line 8751
    invoke-static {v3, v4, v10, v2}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Lcom/inmobi/media/r7;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 8754
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_9

    .line 8755
    :cond_12
    iget-object v4, v4, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    .line 8756
    iget-boolean v5, v1, Lcom/inmobi/media/t7;->D:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_13

    .line 8757
    invoke-virtual {v4}, Lcom/inmobi/media/O0;->g()V

    .line 8761
    :cond_13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8764
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 8765
    const-string v4, "TRACKER_EVENT_TYPE_FALLBACK_URL"

    invoke-virtual {v0, v4, v2, v15, v3}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 8770
    :cond_14
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    goto :goto_9

    .line 8772
    :cond_15
    sget-object v0, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v11, v2, v14}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    :cond_16
    :goto_9
    return-void
.end method

.method public final a(Lcom/inmobi/media/D7;Ljava/util/HashMap;)V
    .locals 6

    .line 5131
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "Click impression record requested"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 5132
    iget-byte v2, p1, Lcom/inmobi/media/D7;->l:B

    const-string v3, "reportAdClick"

    const-string v4, "click"

    const/4 v5, 0x0

    if-ne v0, v2, :cond_7

    .line 5133
    instance-of v0, p1, Lcom/inmobi/media/C8;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_3

    .line 5134
    check-cast v0, Lcom/inmobi/media/jd;

    .line 5135
    iget-object v0, v0, Lcom/inmobi/media/jd;->j:Lcom/inmobi/media/ad;

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_4

    .line 5136
    iget-object v2, v0, Lcom/inmobi/media/ad;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    if-eqz v2, :cond_5

    .line 5137
    iget-object v2, p1, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 5138
    iget-object p1, v0, Lcom/inmobi/media/ad;->f:Ljava/util/ArrayList;

    .line 5139
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 5140
    invoke-virtual {v0, v4}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5143
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/u8;

    .line 5144
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    invoke-static {v0, p2, v5, v1}, Lcom/inmobi/media/D7;->a(Lcom/inmobi/media/u8;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_4

    .line 5145
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5149
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 5150
    invoke-virtual {p1, v4, p2, v5, v0}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_5

    .line 5151
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5155
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 5156
    invoke-virtual {p1, v4, p2, v5, v0}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final a(Lcom/inmobi/media/D7;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "asset"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4852
    iget-object v2, v0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 4853
    iget-boolean v3, v2, Lcom/inmobi/media/P7;->q:Z

    if-eqz v3, :cond_19

    .line 4854
    iget-boolean v3, v0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v3, :cond_0

    return-void

    .line 4855
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;

    move-result-object v2

    const-string v3, "TAG"

    if-eqz v2, :cond_18

    .line 4857
    invoke-virtual {v0, v2}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v4

    .line 4858
    iget-object v1, v1, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    .line 4859
    const-string v5, "<set-?>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5043
    iput-object v1, v2, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    .line 5044
    iget-object v1, v0, Lcom/inmobi/media/t7;->k:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 5045
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->getNativeEnabled()Z

    move-result v1

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/inmobi/media/t7;->i:Lcom/inmobi/media/u6;

    new-instance v8, Lcom/inmobi/media/t6;

    .line 5046
    iget-object v9, v2, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    .line 5047
    invoke-static {v9}, Lcom/inmobi/media/l6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5048
    invoke-direct {v8, v1, v9, v6, v5}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move-object v8, v7

    .line 5052
    :goto_0
    sget-object v1, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    invoke-static {v1, v8, v7, v5}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    .line 5055
    const-string v1, "VIDEO"

    .line 5056
    iget-object v5, v2, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 5057
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5058
    iget-boolean v1, v2, Lcom/inmobi/media/D7;->f:Z

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 5059
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    iget-object v5, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v9, "Asset interaction requested"

    invoke-virtual {v1, v5, v9}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    :cond_3
    iget-object v1, v2, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    .line 5061
    iget-object v5, v0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v5, :cond_4

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/inmobi/media/md;->a(B)V

    .line 5065
    :cond_4
    const-string v5, "NO_ACTION"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/16 v9, 0x8

    if-eqz v5, :cond_5

    .line 5066
    sget-object v1, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v2, v9}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    goto/16 :goto_8

    .line 5067
    :cond_5
    iget-object v5, v2, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    const/4 v10, 0x2

    .line 5068
    iget-byte v11, v2, Lcom/inmobi/media/D7;->l:B

    const/4 v12, 0x1

    if-ne v10, v11, :cond_f

    .line 5069
    const-string v10, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    check-cast v10, Lcom/inmobi/media/C8;

    invoke-virtual {v10}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 5070
    check-cast v10, Lcom/inmobi/media/jd;

    .line 5071
    iget-object v10, v10, Lcom/inmobi/media/jd;->j:Lcom/inmobi/media/ad;

    goto :goto_1

    :cond_6
    move-object v10, v7

    :goto_1
    if-eqz v10, :cond_7

    .line 5072
    iget-object v10, v10, Lcom/inmobi/media/ad;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v10, v7

    :goto_2
    if-eqz v10, :cond_e

    .line 5073
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v12

    move v11, v6

    move v13, v11

    :goto_3
    if-gt v11, v7, :cond_d

    if-nez v13, :cond_8

    move v14, v11

    goto :goto_4

    :cond_8
    move v14, v7

    .line 5078
    :goto_4
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    .line 5079
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gtz v14, :cond_9

    move v14, v12

    goto :goto_5

    :cond_9
    move v14, v6

    :goto_5
    if-nez v13, :cond_b

    if-nez v14, :cond_a

    move v13, v12

    goto :goto_3

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    if-nez v14, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 5080
    :cond_d
    :goto_6
    invoke-static {v7, v12, v10, v11}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 5081
    :cond_e
    invoke-static {v7}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v5, v10

    .line 5087
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 5088
    iget-object v6, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v6, :cond_10

    iget-object v7, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid url:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " will use fallback"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Lcom/inmobi/media/g5;

    invoke-virtual {v6, v7, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5089
    :cond_10
    iget-object v5, v2, Lcom/inmobi/media/D7;->q:Ljava/lang/String;

    .line 5090
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 5091
    iget-object v1, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 5092
    const-string v4, "Invalid fallback url:"

    invoke-static {v2, v3, v4, v5}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5093
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    :cond_11
    sget-object v1, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v2, v9}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;I)V

    goto :goto_8

    .line 5100
    :cond_12
    sget-boolean v3, Lcom/inmobi/media/p9;->a:Z

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lcom/inmobi/media/p9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 5103
    iget-object v4, v0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz v4, :cond_13

    .line 5104
    iget-object v5, v4, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_13

    .line 5105
    iget-object v5, v4, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 5106
    iput v12, v5, Lcom/inmobi/media/d3;->g:I

    .line 5107
    iget-object v4, v4, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5108
    :cond_13
    iget-boolean v4, v0, Lcom/inmobi/media/t7;->D:Z

    if-eqz v4, :cond_17

    if-nez p2, :cond_17

    .line 5109
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_8

    .line 5110
    :cond_14
    iget-object v4, v4, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v4, :cond_16

    .line 5112
    const-string v5, "INAPP"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5113
    invoke-static {v3}, Lcom/inmobi/media/w2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5114
    invoke-virtual {v4}, Lcom/inmobi/media/O0;->e()V

    goto :goto_7

    .line 5116
    :cond_15
    invoke-virtual {v4}, Lcom/inmobi/media/O0;->g()V

    .line 5119
    :cond_16
    :goto_7
    iput-object v2, v0, Lcom/inmobi/media/t7;->E:Lcom/inmobi/media/D7;

    .line 5120
    iput-object v3, v0, Lcom/inmobi/media/t7;->F:Ljava/lang/String;

    goto :goto_8

    .line 5122
    :cond_17
    invoke-virtual {v0, v2, v1, v3, v8}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V

    goto :goto_8

    .line 5123
    :cond_18
    iget-object v1, v0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_19

    iget-object v2, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Couldn\'t find an asset reference for this asset click URL"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_8
    return-void
.end method

.method public final b(Lcom/inmobi/media/P7;Lcom/inmobi/media/D7;)Lcom/inmobi/media/D7;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p2, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    .line 2
    iget-object v1, p2, Lcom/inmobi/media/D7;->q:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Lcom/inmobi/media/P7;Ljava/lang/String;)Lcom/inmobi/media/D7;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2, p1, v1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;Lcom/inmobi/media/P7;Ljava/lang/String;)Lcom/inmobi/media/D7;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 9
    const-string v1, "TAG"

    const-string v2, "Referenced asset ("

    invoke-static {p2, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object v2, v0, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 7

    .line 1027
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "destroyContainer"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1031
    iput-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    .line 1032
    iget-object v2, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/inmobi/media/Z2;->b()V

    :cond_2
    const/4 v2, -0x1

    .line 1033
    iput v2, p0, Lcom/inmobi/media/t7;->y:I

    .line 1034
    iget-object v2, p0, Lcom/inmobi/media/t7;->C:Lcom/inmobi/media/t7;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/inmobi/media/t7;->a()V

    :cond_3
    const/4 v2, 0x0

    .line 1035
    iput-object v2, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    .line 1036
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->h()Lcom/inmobi/media/d8;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1037
    iget-object v4, v3, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    .line 1038
    iget-object v5, v4, Lcom/inmobi/media/Z0;->b:Ljava/util/ArrayList;

    .line 1039
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inmobi/media/Y0;

    .line 1040
    iget-object v6, v6, Lcom/inmobi/media/Y0;->a:Landroid/animation/ValueAnimator;

    .line 1041
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 1043
    :cond_4
    iget-object v4, v4, Lcom/inmobi/media/Z0;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1044
    iput-boolean v0, v3, Lcom/inmobi/media/d8;->n:Z

    .line 1045
    iget-object v0, v3, Lcom/inmobi/media/d8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1046
    iput-object v2, v3, Lcom/inmobi/media/d8;->p:Lcom/inmobi/media/X7;

    .line 1047
    iget-object v0, v3, Lcom/inmobi/media/d8;->j:Lcom/inmobi/media/l8;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/inmobi/media/l8;->destroy()V

    .line 1048
    :cond_5
    iput-object v2, v3, Lcom/inmobi/media/d8;->j:Lcom/inmobi/media/l8;

    .line 1049
    :cond_6
    iput-object v2, p0, Lcom/inmobi/media/t7;->q:Lcom/inmobi/media/d8;

    .line 1050
    iget-object v0, p0, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1051
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/media/md;->e()V

    .line 1052
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/media/md;->a()V

    .line 1053
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1054
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_9

    .line 1055
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1056
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1057
    iget-object v0, p0, Lcom/inmobi/media/t7;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1058
    :cond_a
    iput-object v2, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    .line 1059
    iget-object v0, p0, Lcom/inmobi/media/t7;->J:Lcom/inmobi/media/t7;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/inmobi/media/t7;->b()V

    .line 1060
    :cond_b
    iput-object v2, p0, Lcom/inmobi/media/t7;->J:Lcom/inmobi/media/t7;

    .line 1061
    iget-object v0, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    sget-object v0, Lcom/inmobi/media/A;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1063
    const-string v2, "A"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 6

    .line 15
    iget-boolean p1, p0, Lcom/inmobi/media/t7;->r:Z

    if-nez p1, :cond_7

    .line 16
    iget-boolean p1, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/inmobi/media/t7;->r:Z

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/Z2;->a()V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v0, "TAG"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "A viewable impression is reported on ad view."

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 21
    iget-object p1, p1, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p0, p1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/inmobi/media/t7;->O:Lcom/inmobi/media/l7;

    .line 24
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 25
    const-string v4, "Impression"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->m()V

    .line 33
    iget-object p1, p0, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/D7;

    .line 971
    invoke-virtual {p0, v1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v2

    .line 972
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v5, "Page-view impression record request"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_4
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v4, "page_view"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_0

    .line 974
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 975
    iget-object p1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/md;->a(B)V

    .line 976
    :cond_6
    invoke-static {p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 977
    iget-object p1, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/inmobi/media/O0;->f()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final b(Lcom/inmobi/media/D7;)V
    .locals 6

    .line 982
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "showEndCard"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->J:Lcom/inmobi/media/t7;

    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 987
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 989
    invoke-virtual {v0}, Lcom/inmobi/media/t7;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/inmobi/media/md;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_3

    .line 992
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    const/4 v2, 0x1

    .line 994
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 995
    invoke-virtual {v0}, Lcom/inmobi/media/t7;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    instance-of v0, p1, Lcom/inmobi/media/C8;

    if-eqz v0, :cond_b

    .line 1008
    check-cast p1, Lcom/inmobi/media/C8;

    invoke-virtual {p1}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/jd;

    .line 1009
    iget-object v4, p1, Lcom/inmobi/media/jd;->j:Lcom/inmobi/media/ad;

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    .line 1010
    :cond_5
    iput-boolean v2, v4, Lcom/inmobi/media/ad;->g:Z

    goto :goto_2

    .line 1011
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Could not inflate the end card. Closing the ad"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1016
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Failed to show end card Exception"

    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1017
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->a()V

    .line 1018
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1019
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 1020
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    return-void

    .line 1021
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "End card container is null; end card will not be shown"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_a
    const-string p1, "InMobi"

    const-string v0, "Failed to show end card"

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->a()V

    :cond_b
    :goto_2
    return-void
.end method

.method public c(Lcom/inmobi/media/D7;)V
    .locals 14

    const-string v0, "Action 3 not valid for asset of type: "

    const-string v1, "asset"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "triggerAssetAction"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-byte v1, p1, Lcom/inmobi/media/D7;->k:B

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v3, "skipToInterActive"

    const-string v4, "window.imraid.broadcastEvent(\'skip\');"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v5, :cond_6

    .line 4
    iput-boolean v6, p0, Lcom/inmobi/media/t7;->A:Z

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    sget-object v5, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v5, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-virtual {v0, v4}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->b()V

    .line 11
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/D7;)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz p1, :cond_23

    .line 13
    iget-object v0, p1, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_23

    .line 14
    iget-object v0, p1, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    .line 15
    iput v6, v0, Lcom/inmobi/media/d3;->h:I

    .line 16
    iget-object p1, p1, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    const/4 v7, 0x3

    const-string v8, "event"

    const-string v9, "InMobi"

    if-ne v1, v7, :cond_16

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-eqz v1, :cond_8

    .line 18
    iget-object v3, v1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_7

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "replayToInterActive"

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v7}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7
    const-string v3, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {v1, v3}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_9
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_a

    .line 23
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_a
    iget-object v1, p0, Lcom/inmobi/media/t7;->v:Lcom/inmobi/media/t7;

    .line 25
    instance-of v4, v1, Lcom/inmobi/media/t7;

    if-eqz v4, :cond_b

    move-object v4, v1

    goto :goto_1

    :cond_b
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {v4}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v4

    .line 27
    invoke-static {v4}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 28
    iget-object v7, v4, Lcom/inmobi/media/t8;->n:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_c

    .line 29
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v10

    if-ne v10, v6, :cond_c

    .line 30
    iget-wide v10, v4, Lcom/inmobi/media/t8;->f:J

    const/16 v12, 0x3e8

    int-to-long v12, v12

    mul-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/16 v7, 0x168

    int-to-float v7, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    .line 31
    iput v7, v4, Lcom/inmobi/media/t8;->l:F

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 34
    :cond_c
    const-string v4, "VIDEO"

    .line 35
    iget-object v7, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 36
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 37
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p1, p1, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    .line 42
    :cond_e
    instance-of p1, v1, Lcom/inmobi/media/A8;

    if-eqz p1, :cond_23

    .line 43
    check-cast v1, Lcom/inmobi/media/A8;

    invoke-virtual {v1}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/M8;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/inmobi/media/M8;

    goto :goto_2

    :cond_f
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_23

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/C8;

    if-eqz v1, :cond_10

    move-object v3, v0

    check-cast v3, Lcom/inmobi/media/C8;

    :cond_10
    if-eqz v3, :cond_12

    .line 48
    invoke-virtual {v3}, Lcom/inmobi/media/C8;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->k()V

    goto :goto_3

    .line 51
    :cond_11
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->c()V

    goto :goto_3

    .line 52
    :cond_12
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-ne v6, v0, :cond_13

    .line 53
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->k()V

    goto :goto_3

    .line 55
    :cond_13
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->c()V

    :goto_3
    if-eqz v3, :cond_14

    .line 62
    invoke-virtual {p0, v3}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/C8;)V

    .line 64
    :cond_14
    invoke-virtual {p1}, Lcom/inmobi/media/L8;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 69
    const-string v3, "Encountered unexpected error in handling replay action on video: "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 989
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_15
    const-string v0, "SDK encountered unexpected error in replaying video"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 993
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 994
    invoke-static {p1, v8}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 995
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_4

    :cond_16
    if-ne v1, v6, :cond_1a

    .line 996
    :try_start_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-eqz p1, :cond_18

    .line 997
    iget-object v0, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_17

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "closeToInterActive"

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_17
    const-string v0, "window.imraid.broadcastEvent(\'close\');"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 999
    :cond_18
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 1001
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 1002
    const-string v3, "Encountered unexpected error in handling exit action on video: "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1003
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    :cond_19
    const-string v0, "SDK encountered unexpected error in exiting video"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 1936
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1937
    invoke-static {p1, v8}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 1938
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_4

    :cond_1a
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1f

    .line 1939
    :try_start_2
    iget-byte p1, p0, Lcom/inmobi/media/t7;->a:B

    if-nez p1, :cond_23

    .line 1940
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launchFullscreen"

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :cond_1b
    invoke-static {p0}, Lcom/inmobi/media/t7;->c(Lcom/inmobi/media/t7;)Lcom/inmobi/media/t7;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_4

    .line 1942
    :cond_1c
    iget-object v0, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_1d

    .line 1943
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->e()V

    .line 1944
    :cond_1d
    iget-object v0, p0, Lcom/inmobi/media/t7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v3, Lcom/inmobi/media/m7;

    invoke-direct {v3, p0, p1}, Lcom/inmobi/media/m7;-><init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/t7;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 1945
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 1946
    const-string v3, "Encountered unexpected error in handling fullscreen action "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1947
    invoke-static {p1, v2}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 2889
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    :cond_1e
    const-string v0, "SDK encountered unexpected error in launching fullscreen ad"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 2891
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 2892
    invoke-static {p1, v8}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 2893
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto :goto_4

    .line 2894
    :cond_1f
    iput-boolean v6, p0, Lcom/inmobi/media/t7;->A:Z

    .line 2895
    iget-object v0, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_21

    if-eqz v0, :cond_21

    .line 2896
    iget-object v1, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_20

    sget-object v5, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v5, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    :cond_20
    invoke-virtual {v0, v4}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 2898
    :cond_21
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v0

    .line 2899
    invoke-static {v0}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2900
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->b()V

    .line 2901
    :cond_22
    invoke-virtual {p0, p1}, Lcom/inmobi/media/t7;->b(Lcom/inmobi/media/D7;)V

    :cond_23
    :goto_4
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/t7;->t:Z

    return v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/md;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataModel()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    return-object v0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/media/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->N:Lcom/inmobi/media/p7;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarkupType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "inmobiJson"

    return-object v0
.end method

.method public final getPlacementType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    return v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewableAd()Lcom/inmobi/media/md;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->j()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "fireLoadedAndServedBeacons"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 5
    iget-object v1, v1, Lcom/inmobi/media/P7;->e:Lcom/inmobi/media/H7;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v3, v1}, Lcom/inmobi/media/t7;->a(BLjava/util/Map;)V

    const/4 v3, 0x2

    .line 8
    invoke-virtual {p0, v3, v1}, Lcom/inmobi/media/t7;->a(BLjava/util/Map;)V

    .line 9
    :cond_1
    new-instance v1, Lcom/inmobi/media/r5;

    .line 10
    new-instance v3, Lcom/inmobi/media/od;

    iget-object v4, p0, Lcom/inmobi/media/t7;->H:Lcom/inmobi/media/Ya;

    iget-object v5, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    invoke-direct {v3, p0, v4, v5}, Lcom/inmobi/media/od;-><init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/Ya;Lcom/inmobi/media/f5;)V

    iget-object v4, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    .line 11
    invoke-direct {v1, v0, p0, v3, v4}, Lcom/inmobi/media/r5;-><init>(Landroid/content/Context;Lcom/inmobi/media/t7;Lcom/inmobi/media/od;Lcom/inmobi/media/f5;)V

    iput-object v1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    .line 13
    iget-object v0, p0, Lcom/inmobi/media/t7;->d:Ljava/util/Set;

    if-eqz v0, :cond_8

    .line 1135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Hc;

    .line 1136
    :try_start_0
    iget-byte v3, v1, Lcom/inmobi/media/Hc;->a:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1137
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "OMID tracker"

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_3
    iget-object v1, v1, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v3, "omidAdSession"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/inmobi/media/z9;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/inmobi/media/z9;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 1139
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 1141
    iget-byte v4, p0, Lcom/inmobi/media/t7;->K:B

    if-nez v4, :cond_5

    .line 1142
    new-instance v4, Lcom/inmobi/media/D9;

    iget-object v5, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    invoke-direct {v4, p0, v3, v1, v5}, Lcom/inmobi/media/D9;-><init>(Lcom/inmobi/media/x;Lcom/inmobi/media/md;Lcom/inmobi/media/z9;Lcom/inmobi/media/f5;)V

    goto :goto_2

    .line 1144
    :cond_5
    new-instance v4, Lcom/inmobi/media/E9;

    iget-object v5, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    invoke-direct {v4, p0, v3, v1, v5}, Lcom/inmobi/media/E9;-><init>(Lcom/inmobi/media/t7;Lcom/inmobi/media/ld;Lcom/inmobi/media/z9;Lcom/inmobi/media/f5;)V

    .line 1145
    :goto_2
    iput-object v4, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    goto :goto_0

    .line 1151
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Did not find a OMID ad session; the OMID decorator will not be applied."

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1155
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 1156
    const-string v5, "Exception occurred while creating the Display viewable ad : "

    invoke-static {v4, v2, v5}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1157
    invoke-static {v1, v5}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 1687
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :cond_7
    sget-object v3, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 1689
    const-string v3, "event"

    invoke-static {v1, v3}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v1

    .line 1690
    sget-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v3, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto/16 :goto_0

    .line 1691
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    return-object v0
.end method

.method public final h()Lcom/inmobi/media/d8;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/md;->c()Lcom/inmobi/media/X7;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/inmobi/media/X7;

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 2
    iget-object v0, v1, Lcom/inmobi/media/X7;->e:Lcom/inmobi/media/d8;

    .line 3
    iput-object v0, p0, Lcom/inmobi/media/t7;->q:Lcom/inmobi/media/d8;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/t7;->q:Lcom/inmobi/media/d8;

    return-object v0
.end method

.method public i()Lcom/inmobi/media/rd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->T:Lcom/inmobi/media/o7;

    return-object v0
.end method

.method public final j()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iget-byte v1, p0, Lcom/inmobi/media/t7;->a:B

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/t7;->a:B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/t7;->u:Z

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/inmobi/media/t8;->b()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->h()Lcom/inmobi/media/d8;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/inmobi/media/Z0;->a()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v2, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "reportFirstPageRendered"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/media/P7;->b(I)Lcom/inmobi/media/H7;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcom/inmobi/media/t7;->n:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 4
    iget-boolean v3, p0, Lcom/inmobi/media/t7;->t:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/t7;->n:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iput-wide v2, v0, Lcom/inmobi/media/H7;->y:J

    .line 8
    iget-boolean v2, p0, Lcom/inmobi/media/t7;->r:Z

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Lcom/inmobi/media/t7;->a(Lcom/inmobi/media/D7;)Ljava/util/HashMap;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "Page-view impression record request"

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    const-string v3, "page_view"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/inmobi/media/t7;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/t7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/inmobi/media/t7$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/t7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onActivityDestroyed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/t7;->h:Lcom/inmobi/media/Z2;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/media/Z2;->b()V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/t7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onResume"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/inmobi/media/t7;->u:Z

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->g()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/inmobi/media/t7;->a(Landroid/view/View;)Lcom/inmobi/media/t8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/t8;->c()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->p()V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/inmobi/media/t7;->p:Lcom/inmobi/media/ld;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/md;->a(Landroid/content/Context;B)V

    :cond_2
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->l()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->h()Lcom/inmobi/media/d8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/d8;->l:Lcom/inmobi/media/Z0;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, v0, Lcom/inmobi/media/Z0;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/Z0;->c:Z

    .line 5
    iget-object v1, v0, Lcom/inmobi/media/Z0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/Z0;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "unlockRewards"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/t7;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/inmobi/media/t7;->A:Z

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/t7;->b:Lcom/inmobi/media/P7;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/P7;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v1, :cond_4

    .line 7
    const-string v2, "rewards"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1823
    iget-object v2, v1, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 1824
    iget-object v2, v2, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    .line 1825
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v3

    .line 1826
    const-string v4, "<get-TAG>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "onAdRewardsUnlocked"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_1
    iget-object v2, v1, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v2}, Lcom/inmobi/media/Q0;->Z()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1830
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/O0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/E0;

    if-eqz v2, :cond_3

    .line 1832
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Lcom/inmobi/media/E0;->b(Ljava/util/Map;)V

    goto :goto_0

    .line 1834
    :cond_3
    iget-object v0, v1, Lcom/inmobi/media/O0;->a:Lcom/inmobi/media/Q0;

    .line 1835
    iget-object v0, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 1836
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "InMobi"

    const-string v2, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/t7;->z:Ljava/lang/ref/WeakReference;

    return-void
.end method
