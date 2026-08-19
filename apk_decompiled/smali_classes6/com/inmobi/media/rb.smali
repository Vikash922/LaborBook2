.class public abstract Lcom/inmobi/media/rb;
.super Lcom/inmobi/media/l9;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/Kc;Ljava/lang/String;II)V
    .locals 9

    const-string v0, "POST"

    const-string v1, "requestType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application/x-www-form-urlencoded"

    const-string v1, "requestContentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/t4;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v3}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/t4;ZILjava/lang/Object;)Z

    move-result v4

    const-string v6, "application/x-www-form-urlencoded"

    const/16 v7, 0x40

    const-string v1, "POST"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/l9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/Kc;ZLcom/inmobi/media/f5;Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/inmobi/media/rb;->y:I

    .line 3
    iput p5, p0, Lcom/inmobi/media/rb;->z:I

    .line 9
    iput-object p3, p0, Lcom/inmobi/media/l9;->m:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
