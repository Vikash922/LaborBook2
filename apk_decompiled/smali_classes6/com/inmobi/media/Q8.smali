.class public final Lcom/inmobi/media/Q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Lcom/inmobi/media/D7;

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/media/D7;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageAsset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/Q8;->a:Lcom/inmobi/media/D7;

    .line 7
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/inmobi/media/Q8;->b:Ljava/lang/ref/WeakReference;

    .line 8
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/inmobi/media/Q8;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object p1, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    const-string p1, "d9"

    const-string p3, "access$getTAG$cp(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string p3, "onError"

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 3
    sget-object p2, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/inmobi/media/Q8;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object p3, p0, Lcom/inmobi/media/Q8;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/inmobi/media/Q8;->a:Lcom/inmobi/media/D7;

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 4
    iget-object v2, v1, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    .line 5
    iget-object v3, v1, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 6
    const-string v4, "cross_button"

    invoke-static {v4, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_7

    .line 978
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-gt v5, v3, :cond_6

    if-nez v6, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v3

    .line 983
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 984
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_2

    move v7, v0

    goto :goto_3

    :cond_2
    move v7, v4

    :goto_3
    if-nez v6, :cond_4

    if-nez v7, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 985
    :cond_6
    :goto_4
    invoke-static {v3, v0, v2, v5}, Lcom/inmobi/media/i7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, p1

    :goto_5
    if-eqz v0, :cond_8

    .line 986
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 987
    :cond_8
    invoke-static {p2, p3}, Lcom/inmobi/media/N8;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 992
    :cond_9
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 993
    const-string p3, "[ERRORCODE]"

    const-string v0, "603"

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string p3, "error"

    invoke-virtual {v1, p3, p2, p1, p1}, Lcom/inmobi/media/D7;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/l7;Lcom/inmobi/media/f5;)V

    :cond_a
    return-object p1
.end method
