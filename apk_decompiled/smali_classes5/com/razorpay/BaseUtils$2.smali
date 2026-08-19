.class Lcom/razorpay/BaseUtils$2;
.super Ljava/lang/Object;
.source "BaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseUtils;->fetchIP(Lcom/razorpay/RzpJSONCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$jsonCallback:Lcom/razorpay/RzpJSONCallback;


# direct methods
.method constructor <init>(Lcom/razorpay/RzpJSONCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1613
    iput-object p1, p0, Lcom/razorpay/BaseUtils$2;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1617
    const-string v0, "S2"

    const-string v1, "error"

    const/4 v2, 0x0

    .line 1619
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://approvals-api.getsimpl.com/my-ip"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1621
    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x96

    .line 1622
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/16 v2, 0xfa

    .line 1623
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 1624
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 1625
    invoke-static {v3}, Lcom/razorpay/BaseUtils;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1626
    iget-object v4, p0, Lcom/razorpay/BaseUtils$2;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    invoke-interface {v4, v2}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1629
    :cond_0
    iget-object v2, p0, Lcom/razorpay/BaseUtils$2;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    .line 1636
    :try_start_2
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    .line 1634
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 1636
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 1632
    :catch_3
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/razorpay/BaseUtils$2;->val$jsonCallback:Lcom/razorpay/RzpJSONCallback;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "timeout"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_2

    :goto_4
    if-eqz v2, :cond_1

    .line 1636
    :try_start_6
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 1637
    :cond_1
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v1

    .line 1639
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_5
    return-void
.end method
