.class Lcom/razorpay/RazorpayExceptionHandler;
.super Ljava/lang/Object;
.source "RazorpayExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field context:Landroid/content/Context;

.field existingHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static synthetic $r8$lambda$2uMTifVcWc3n1Eo6vI6wyW8N-WQ(Lcom/razorpay/RazorpayExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/razorpay/RazorpayExceptionHandler;->l$1_I$l$(Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/razorpay/RazorpayExceptionHandler;->existingHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 26
    iput-object p1, p0, Lcom/razorpay/RazorpayExceptionHandler;->context:Landroid/content/Context;

    return-void
.end method

.method private synthetic l$1_I$l$(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/razorpay/RazorpayExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/razorpay/AnalyticsUtil;->reportUncaughtException(Ljava/lang/Throwable;Ljava/lang/Thread;Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/razorpay/RazorpayExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Lumberjack;->saveEventsToPreferences(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/razorpay/RazorpayExceptionHandler;->existingHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p2, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static register(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 31
    instance-of v1, v0, Lcom/razorpay/RazorpayExceptionHandler;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/razorpay/RazorpayExceptionHandler;

    invoke-direct {v1, p0, v0}, Lcom/razorpay/RazorpayExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method static unregister()V
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/razorpay/RazorpayExceptionHandler;

    if-eqz v1, :cond_0

    .line 39
    check-cast v0, Lcom/razorpay/RazorpayExceptionHandler;

    .line 40
    iget-object v0, v0, Lcom/razorpay/RazorpayExceptionHandler;->existingHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/razorpay/RazorpayExceptionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/razorpay/RazorpayExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
