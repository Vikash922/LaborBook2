.class public final Lcom/inmobi/media/Ba;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ca;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ca;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    iput-boolean p2, p0, Lcom/inmobi/media/Ba;->b:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    .line 2
    iget-object v2, v1, Lcom/inmobi/media/Ca;->g:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/inmobi/media/Ca;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/inmobi/media/Ca;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v2, "{}"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 110
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 111
    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    .line 112
    iget-object v1, v1, Lcom/inmobi/media/Ca;->j:Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    sget-object v2, Lcom/inmobi/media/M6;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    iget-object v2, v1, Lcom/inmobi/media/Ca;->a:Landroid/content/Context;

    .line 116
    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/logging"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/logging/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    iput-object v2, v1, Lcom/inmobi/media/Ca;->j:Ljava/lang/String;

    .line 189
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    .line 190
    iget-object v2, v1, Lcom/inmobi/media/Ca;->j:Ljava/lang/String;

    .line 191
    invoke-virtual {v1}, Lcom/inmobi/media/Ca;->c()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v3, "RemoteLogger"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/N6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    iget-boolean v9, v0, Lcom/inmobi/media/Ba;->b:Z

    .line 194
    iget-object v14, v1, Lcom/inmobi/media/Ca;->j:Ljava/lang/String;

    .line 196
    iget-object v1, v1, Lcom/inmobi/media/Ca;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    .line 197
    new-instance v1, Lcom/inmobi/media/z6;

    const-wide/16 v7, 0x0

    const/16 v11, 0xc

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v14

    move-wide v4, v12

    invoke-direct/range {v2 .. v11}, Lcom/inmobi/media/z6;-><init>(Ljava/lang/String;JIJZII)V

    .line 198
    invoke-static {}, Lcom/inmobi/media/Db;->d()Lcom/inmobi/media/A6;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    const-string v3, "data"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    invoke-static/range {v15 .. v22}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 252
    invoke-virtual {v2, v1}, Lcom/inmobi/media/A6;->b(Lcom/inmobi/media/z6;)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v3, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    .line 256
    iget v3, v3, Lcom/inmobi/media/Ca;->c:I

    .line 257
    invoke-virtual {v2, v1}, Lcom/inmobi/media/R1;->a(Ljava/lang/Object;)V

    .line 258
    iget-object v1, v2, Lcom/inmobi/media/A6;->b:Lcom/inmobi/media/i5;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/inmobi/media/i5;->a()V

    .line 259
    :cond_4
    sget-object v1, Lcom/inmobi/media/M6;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lcom/inmobi/media/Ba;->a:Lcom/inmobi/media/Ca;

    .line 260
    iget-wide v3, v1, Lcom/inmobi/media/Ca;->b:J

    sub-long/2addr v12, v3

    .line 261
    iget v1, v1, Lcom/inmobi/media/Ca;->c:I

    .line 262
    invoke-static {v2, v12, v13, v1}, Lcom/inmobi/media/L6;->a(Lcom/inmobi/media/A6;JI)V

    .line 263
    :cond_5
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
