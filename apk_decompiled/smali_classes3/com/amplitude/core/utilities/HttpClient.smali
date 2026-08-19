.class public final Lcom/amplitude/core/utilities/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\r\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0008J\r\u0010\t\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\r\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cJ\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/amplitude/core/utilities/HttpClient;",
        "",
        "configuration",
        "Lcom/amplitude/core/Configuration;",
        "(Lcom/amplitude/core/Configuration;)V",
        "getApiHost",
        "",
        "getApiKey",
        "getApiKey$core",
        "getClientUploadTime",
        "getClientUploadTime$core",
        "getConnection",
        "Ljava/net/HttpURLConnection;",
        "url",
        "getCurrentTimeMillis",
        "",
        "getCurrentTimeMillis$core",
        "getInputStream",
        "Ljava/io/InputStream;",
        "connection",
        "getMindIdLength",
        "",
        "getMindIdLength$core",
        "()Ljava/lang/Integer;",
        "upload",
        "Lcom/amplitude/core/utilities/Connection;",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final configuration:Lcom/amplitude/core/Configuration;


# direct methods
.method public constructor <init>(Lcom/amplitude/core/Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    return-void
.end method

.method private final getApiHost()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getServerZone()Lcom/amplitude/core/ServerZone;

    move-result-object v0

    sget-object v1, Lcom/amplitude/core/ServerZone;->EU:Lcom/amplitude/core/ServerZone;

    if-ne v0, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getUseBatch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://api.eu.amplitude.com/batch"

    goto :goto_1

    :cond_2
    const-string v0, "https://api.eu.amplitude.com/2/httpapi"

    :goto_1
    return-object v0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getUseBatch()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "https://api2.amplitude.com/batch"

    goto :goto_2

    :cond_4
    const-string v0, "https://api2.amplitude.com/2/httpapi"

    :goto_2
    return-object v0
.end method

.method private final getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 57
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 62
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 66
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v0, 0x3a98

    .line 67
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0x31128

    .line 68
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted to use malformed url: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final getApiKey$core()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientUploadTime$core()Ljava/lang/String;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient;->getCurrentTimeMillis$core()J

    move-result-wide v0

    .line 88
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 90
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date(currentTimeMillis))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurrentTimeMillis$core()J
    .locals 2

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "{\n            connection.inputStream\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 104
    const-string/jumbo p1, "{\n            connection.errorStream\n        }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final getMindIdLength$core()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient;->configuration:Lcom/amplitude/core/Configuration;

    invoke-virtual {v0}, Lcom/amplitude/core/Configuration;->getMinIdLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final upload()Lcom/amplitude/core/utilities/Connection;
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/amplitude/core/utilities/HttpClient;->getApiHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amplitude/core/utilities/HttpClient;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "connection.outputStream"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/amplitude/core/utilities/HttpClient$upload$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amplitude/core/utilities/HttpClient$upload$1;-><init>(Lcom/amplitude/core/utilities/HttpClient;Ljava/net/HttpURLConnection;Ljava/io/OutputStream;)V

    check-cast v2, Lcom/amplitude/core/utilities/Connection;

    return-object v2
.end method
