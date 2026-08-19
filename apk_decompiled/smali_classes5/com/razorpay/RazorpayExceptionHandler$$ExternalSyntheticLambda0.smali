.class public final synthetic Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/razorpay/RazorpayExceptionHandler;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Lcom/razorpay/RazorpayExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/razorpay/RazorpayExceptionHandler;

    iput-object p2, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/razorpay/RazorpayExceptionHandler;

    iget-object v1, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Thread;

    invoke-static {v0, v1, v2}, Lcom/razorpay/RazorpayExceptionHandler;->$r8$lambda$2uMTifVcWc3n1Eo6vI6wyW8N-WQ(Lcom/razorpay/RazorpayExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-void
.end method
