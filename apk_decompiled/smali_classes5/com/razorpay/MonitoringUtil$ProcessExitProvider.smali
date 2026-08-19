.class interface abstract Lcom/razorpay/MonitoringUtil$ProcessExitProvider;
.super Ljava/lang/Object;
.source "MonitoringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/MonitoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProcessExitProvider"
.end annotation


# virtual methods
.method public abstract getHistoricalProcessExitReasons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/razorpay/MonitoringUtil$ProcessExitRecord;",
            ">;"
        }
    .end annotation
.end method
