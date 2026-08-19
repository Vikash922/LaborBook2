.class public Lcom/razorpay/Owl;
.super Landroid/os/AsyncTask;
.source "Owl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/razorpay/ResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private __l1_:Ljava/lang/String;

.field private _l_1l__:Ljava/lang/String;

.field private _llI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l$1_I$l$:Lcom/razorpay/Callback;


# direct methods
.method private constructor <init>(Lcom/razorpay/Callback;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/razorpay/Owl;->__l1_:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lcom/razorpay/Owl;->_l_1l__:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/razorpay/Owl;->l$1_I$l$:Lcom/razorpay/Callback;

    return-void
.end method

.method static get(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 2

    .line 39
    new-instance v0, Lcom/razorpay/Owl;

    invoke-direct {v0, p1}, Lcom/razorpay/Owl;-><init>(Lcom/razorpay/Callback;)V

    const-string p1, "GET"

    invoke-virtual {v0, p1}, Lcom/razorpay/Owl;->method(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/razorpay/Owl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/razorpay/Callback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/razorpay/Owl;

    invoke-direct {v0, p3}, Lcom/razorpay/Owl;-><init>(Lcom/razorpay/Callback;)V

    const-string p3, "GET"

    invoke-virtual {v0, p3}, Lcom/razorpay/Owl;->method(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/razorpay/Owl;->data(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->headers(Ljava/util/Map;)Lcom/razorpay/Owl;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/razorpay/Callback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/razorpay/Owl;

    invoke-direct {v0, p2}, Lcom/razorpay/Owl;-><init>(Lcom/razorpay/Callback;)V

    const-string p2, "GET"

    invoke-virtual {v0, p2}, Lcom/razorpay/Owl;->method(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/razorpay/Owl;->headers(Ljava/util/Map;)Lcom/razorpay/Owl;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private l$1_I$l$(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1

    .line 52
    new-instance v0, Lcom/razorpay/Owl;

    invoke-direct {v0, p2}, Lcom/razorpay/Owl;-><init>(Lcom/razorpay/Callback;)V

    const-string p2, "POST"

    invoke-virtual {v0, p2}, Lcom/razorpay/Owl;->method(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/razorpay/Owl;->data(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/razorpay/Callback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/razorpay/Owl;

    invoke-direct {v0, p3}, Lcom/razorpay/Owl;-><init>(Lcom/razorpay/Callback;)V

    const-string p3, "POST"

    invoke-virtual {v0, p3}, Lcom/razorpay/Owl;->method(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/razorpay/Owl;->data(Ljava/lang/String;)Lcom/razorpay/Owl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->headers(Ljava/util/Map;)Lcom/razorpay/Owl;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Lcom/razorpay/Owl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method data(Ljava/lang/String;)Lcom/razorpay/Owl;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/razorpay/Owl;->_l_1l__:Ljava/lang/String;

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lcom/razorpay/ResponseObject;
    .locals 7

    .line 77
    const-string v0, "accept-encoding"

    const-string v1, "S2"

    .line 78
    new-instance v2, Lcom/razorpay/ResponseObject;

    invoke-direct {v2}, Lcom/razorpay/ResponseObject;-><init>()V

    const/4 v3, 0x0

    .line 80
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object p1, p1, v5

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 83
    iget-object v4, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 85
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/razorpay/Owl;->__l1_:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    iget-object v4, p0, Lcom/razorpay/Owl;->_l_1l__:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 92
    invoke-virtual {p1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 93
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/razorpay/Owl;->_l_1l__:Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    const/16 v4, 0x3a98

    .line 99
    invoke-virtual {p1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x4e20

    .line 103
    invoke-virtual {p1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 105
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 108
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    .line 109
    invoke-virtual {v2, v4}, Lcom/razorpay/ResponseObject;->setResponseCode(I)V

    .line 111
    iget-object v5, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    const/16 v6, 0x190

    if-eqz v5, :cond_3

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le v4, v6, :cond_2

    .line 113
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_2
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    if-lt v4, v6, :cond_4

    .line 120
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 128
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/razorpay/ResponseObject;->setHeaders(Ljava/util/Map;)V

    .line 129
    invoke-direct {p0, v3}, Lcom/razorpay/Owl;->l$1_I$l$(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/razorpay/ResponseObject;->setResponseResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 138
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input Stream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 138
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v2

    :goto_3
    if-eqz v3, :cond_6

    .line 138
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_6
    :goto_4
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/razorpay/Owl;->doInBackground([Ljava/lang/String;)Lcom/razorpay/ResponseObject;

    move-result-object p1

    return-object p1
.end method

.method headers(Ljava/util/Map;)Lcom/razorpay/Owl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/razorpay/Owl;"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/razorpay/Owl;->_llI:Ljava/util/Map;

    return-object p0
.end method

.method method(Ljava/lang/String;)Lcom/razorpay/Owl;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/razorpay/Owl;->__l1_:Ljava/lang/String;

    return-object p0
.end method

.method protected onPostExecute(Lcom/razorpay/ResponseObject;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/razorpay/Owl;->l$1_I$l$:Lcom/razorpay/Callback;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcom/razorpay/Callback;->run(Lcom/razorpay/ResponseObject;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/razorpay/ResponseObject;

    invoke-virtual {p0, p1}, Lcom/razorpay/Owl;->onPostExecute(Lcom/razorpay/ResponseObject;)V

    return-void
.end method
