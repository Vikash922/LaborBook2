.class Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"

# interfaces
.implements Lcom/razorpay/MonitoringUtil$ProcessExitProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/MonitoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidProcessExitProvider"
.end annotation


# instance fields
.field private final l$1_I$l$:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;->l$1_I$l$:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getHistoricalProcessExitReasons()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/razorpay/MonitoringUtil$ProcessExitRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_6

    iget-object v1, v0, Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;->l$1_I$l$:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 426
    :cond_0
    const-string v2, "activity"

    .line 427
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    return-object v3

    .line 431
    :cond_1
    iget-object v2, v0, Lcom/razorpay/MonitoringUtil$AndroidProcessExitProvider;->l$1_I$l$:Landroid/content/Context;

    .line 432
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v3

    .line 436
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    .line 440
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 443
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v6, v5

    :catch_1
    :cond_4
    :goto_2
    move/from16 v19, v6

    .line 447
    new-instance v4, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;

    .line 448
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v8

    .line 449
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v9

    .line 450
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v11

    .line 451
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v12

    .line 452
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v13

    .line 453
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v14

    .line 454
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v16

    .line 455
    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v18

    move-object v7, v4

    invoke-direct/range {v7 .. v19}, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;-><init>(IJIIIJJLjava/lang/String;Z)V

    .line 447
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v2

    :cond_6
    :goto_3
    return-object v3
.end method
