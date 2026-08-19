.class Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdvertisingIdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/AdvertisingIdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvertisingIdAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private __l1_:Landroid/content/Context;

.field private l$1_I$l$:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->__l1_:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->l$1_I$l$:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 35
    const-string p1, "S1"

    new-instance v0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingConnection;-><init>(Lcom/razorpay/AdvertisingIdUtil$1;)V

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v2, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->__l1_:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    new-instance v1, Lcom/razorpay/AdvertisingIdUtil$AdvertisingInterface;

    invoke-virtual {v0}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 42
    invoke-virtual {v1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    iget-object v2, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->__l1_:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    iget-object v2, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->__l1_:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    .line 47
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->__l1_:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_3
    throw v1

    .line 54
    :cond_0
    const-string p1, "permission disabled"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdAsyncTask;->l$1_I$l$:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;

    invoke-interface {v0, p1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
