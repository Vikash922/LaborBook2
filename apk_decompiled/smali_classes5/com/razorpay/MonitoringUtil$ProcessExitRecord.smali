.class Lcom/razorpay/MonitoringUtil$ProcessExitRecord;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/MonitoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessExitRecord"
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field final importance:I

.field final pid:I

.field final pss:J

.field final reason:I

.field final rss:J

.field final status:I

.field final timestamp:J

.field final traceAvailable:Z


# direct methods
.method constructor <init>(IJIIIJJLjava/lang/String;Z)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    .line 399
    iput-wide p2, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->timestamp:J

    .line 400
    iput p4, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->pid:I

    .line 401
    iput p5, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->importance:I

    .line 402
    iput p6, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->status:I

    .line 403
    iput-wide p7, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->pss:J

    .line 404
    iput-wide p9, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->rss:J

    .line 405
    iput-object p11, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->description:Ljava/lang/String;

    .line 406
    iput-boolean p12, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->traceAvailable:Z

    return-void
.end method


# virtual methods
.method dedupeKey()Ljava/lang/String;
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/razorpay/MonitoringUtil$ProcessExitRecord;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
