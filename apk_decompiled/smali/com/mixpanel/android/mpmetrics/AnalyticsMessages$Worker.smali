.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;
    }
.end annotation


# instance fields
.field private mAveFlushFrequency:J

.field private mFlushCount:J

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mLastFlushTime:J

.field private mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)V
    .locals 2

    .line 327
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 677
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    .line 678
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    const-wide/16 v0, -0x1

    .line 679
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    .line 328
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->restartWorkerThread()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Lcom/mixpanel/android/mpmetrics/SystemInformation;)Lcom/mixpanel/android/mpmetrics/SystemInformation;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->updateFlushFrequency()V

    return-void
.end method

.method static synthetic access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Ljava/lang/Object;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Landroid/os/Handler;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private updateFlushFrequency()V
    .locals 10

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 660
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 662
    iget-wide v6, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    sub-long v6, v0, v6

    .line 664
    iget-wide v8, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    mul-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 665
    div-long/2addr v6, v4

    iput-wide v6, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    const-wide/16 v2, 0x3e8

    .line 667
    div-long/2addr v6, v2

    .line 668
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Average send frequency approximately "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " seconds."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 671
    :cond_0
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    .line 672
    iput-wide v4, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    return-void
.end method


# virtual methods
.method public isDead()Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected restartWorkerThread()Landroid/os/Handler;
    .locals 3

    .line 351
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.mixpanel.android.AnalyticsWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 353
    new-instance v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;-><init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Looper;)V

    return-object v1
.end method

.method public runMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "Dead mixpanel worker dropping a message: "

    .line 338
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
