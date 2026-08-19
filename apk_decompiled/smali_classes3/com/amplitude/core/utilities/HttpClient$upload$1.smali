.class public final Lcom/amplitude/core/utilities/HttpClient$upload$1;
.super Lcom/amplitude/core/utilities/Connection;
.source "HttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amplitude/core/utilities/HttpClient;->upload()Lcom/amplitude/core/utilities/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\ncom/amplitude/core/utilities/HttpClient$upload$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/amplitude/core/utilities/HttpClient$upload$1",
        "Lcom/amplitude/core/utilities/Connection;",
        "close",
        "",
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
.field final synthetic $connection:Ljava/net/HttpURLConnection;

.field final synthetic $outputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/amplitude/core/utilities/HttpClient;


# direct methods
.method constructor <init>(Lcom/amplitude/core/utilities/HttpClient;Ljava/net/HttpURLConnection;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->this$0:Lcom/amplitude/core/utilities/HttpClient;

    iput-object p2, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->$connection:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->$outputStream:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 25
    invoke-direct {p0, p2, p1, p3}, Lcom/amplitude/core/utilities/Connection;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->this$0:Lcom/amplitude/core/utilities/HttpClient;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpClient;->getApiKey$core()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setApiKey$core(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->this$0:Lcom/amplitude/core/utilities/HttpClient;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpClient;->getClientUploadTime$core()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setClientUploadTime$core(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->this$0:Lcom/amplitude/core/utilities/HttpClient;

    invoke-virtual {v0}, Lcom/amplitude/core/utilities/HttpClient;->getMindIdLength$core()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setMinIdLength$core(Ljava/lang/Integer;)V

    .line 32
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setBody$core()V

    .line 33
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->$connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x0

    .line 38
    :try_start_1
    iget-object v2, p0, Lcom/amplitude/core/utilities/HttpClient$upload$1;->this$0:Lcom/amplitude/core/utilities/HttpClient;

    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amplitude/core/utilities/HttpClient;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v3, v4, Ljava/io/BufferedReader;

    if-eqz v3, :cond_1

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v3

    :goto_1
    check-cast v4, Ljava/io/Closeable;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v3, v4

    check-cast v3, Ljava/io/BufferedReader;

    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    sget-object v4, Lcom/amplitude/core/utilities/HttpResponse;->INSTANCE:Lcom/amplitude/core/utilities/HttpResponse;

    invoke-virtual {v4, v0, v3}, Lcom/amplitude/core/utilities/HttpResponse;->createHttpResponse(ILjava/lang/String;)Lcom/amplitude/core/utilities/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setResponse$core(Lcom/amplitude/core/utilities/Response;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 39
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-object v2, v1

    .line 42
    :catch_1
    :try_start_8
    sget-object v0, Lcom/amplitude/core/utilities/HttpResponse;->INSTANCE:Lcom/amplitude/core/utilities/HttpResponse;

    const/16 v3, 0x198

    invoke-virtual {v0, v3, v1}, Lcom/amplitude/core/utilities/HttpResponse;->createHttpResponse(ILjava/lang/String;)Lcom/amplitude/core/utilities/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->setResponse$core(Lcom/amplitude/core/utilities/Response;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v2, :cond_2

    .line 47
    :goto_2
    invoke-super {p0}, Lcom/amplitude/core/utilities/Connection;->close()V

    .line 48
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_3
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v2

    :goto_4
    if-nez v1, :cond_4

    goto :goto_5

    .line 44
    :cond_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    .line 47
    invoke-super {p0}, Lcom/amplitude/core/utilities/Connection;->close()V

    .line 48
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/HttpClient$upload$1;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_6
    throw v0
.end method
