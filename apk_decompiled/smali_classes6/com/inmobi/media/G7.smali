.class public final Lcom/inmobi/media/G7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/inmobi/media/H7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/H7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/G7;->b:Lcom/inmobi/media/H7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/inmobi/media/G7;->a:I

    iget-object v1, p0, Lcom/inmobi/media/G7;->b:Lcom/inmobi/media/H7;

    .line 2
    iget v1, v1, Lcom/inmobi/media/H7;->B:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/G7;->b:Lcom/inmobi/media/H7;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/H7;->A:Ljava/util/ArrayList;

    .line 3
    iget v1, p0, Lcom/inmobi/media/G7;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/media/G7;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/D7;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/inmobi/media/G7;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/inmobi/media/G7;->a:I

    .line 6
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
