.class public final Lcom/inmobi/media/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public final d:Z

.field public final e:Z

.field public f:I

.field public g:J

.field public final h:J

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/inmobi/media/i2;->a:I

    .line 5
    iput-object p2, p0, Lcom/inmobi/media/i2;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/inmobi/media/i2;->c:Ljava/util/Map;

    .line 7
    iput-boolean p4, p0, Lcom/inmobi/media/i2;->d:Z

    .line 8
    iput-boolean p5, p0, Lcom/inmobi/media/i2;->e:Z

    .line 9
    iput p6, p0, Lcom/inmobi/media/i2;->f:I

    .line 10
    iput-wide p7, p0, Lcom/inmobi/media/i2;->g:J

    .line 11
    iput-wide p9, p0, Lcom/inmobi/media/i2;->h:J

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/inmobi/media/i2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;ZZII)V
    .locals 13

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v3, v0, v1

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p2

    .line 21
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 23
    invoke-direct/range {v2 .. v12}, Lcom/inmobi/media/i2;-><init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V

    return-void
.end method
