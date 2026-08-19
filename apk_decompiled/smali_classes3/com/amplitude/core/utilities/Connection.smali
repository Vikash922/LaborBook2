.class public abstract Lcom/amplitude/core/utilities/Connection;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0008&\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\nH\u0002J\u0015\u0010!\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\"J\r\u0010#\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008$J\u0015\u0010%\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008&J\u0015\u0010\'\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008(J\u0015\u0010)\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008*J\u0019\u0010+\u001a\u00020\u001f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0000\u00a2\u0006\u0004\u0008,\u0010-R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006."
    }
    d2 = {
        "Lcom/amplitude/core/utilities/Connection;",
        "Ljava/io/Closeable;",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "inputStream",
        "Ljava/io/InputStream;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V",
        "apiKey",
        "",
        "clientUploadTime",
        "getConnection",
        "()Ljava/net/HttpURLConnection;",
        "diagnostics",
        "Lcom/amplitude/core/utilities/Diagnostics;",
        "events",
        "getInputStream",
        "()Ljava/io/InputStream;",
        "minIdLength",
        "",
        "Ljava/lang/Integer;",
        "getOutputStream",
        "()Ljava/io/OutputStream;",
        "response",
        "Lcom/amplitude/core/utilities/Response;",
        "getResponse$core",
        "()Lcom/amplitude/core/utilities/Response;",
        "setResponse$core",
        "(Lcom/amplitude/core/utilities/Response;)V",
        "close",
        "",
        "getBodyStr",
        "setApiKey",
        "setApiKey$core",
        "setBody",
        "setBody$core",
        "setClientUploadTime",
        "setClientUploadTime$core",
        "setDiagnostics",
        "setDiagnostics$core",
        "setEvents",
        "setEvents$core",
        "setMinIdLength",
        "setMinIdLength$core",
        "(Ljava/lang/Integer;)V",
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
.field private apiKey:Ljava/lang/String;

.field private clientUploadTime:Ljava/lang/String;

.field private final connection:Ljava/net/HttpURLConnection;

.field private diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

.field private events:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private minIdLength:Ljava/lang/Integer;

.field private final outputStream:Ljava/io/OutputStream;

.field public response:Lcom/amplitude/core/utilities/Response;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->connection:Ljava/net/HttpURLConnection;

    .line 112
    iput-object p2, p0, Lcom/amplitude/core/utilities/Connection;->inputStream:Ljava/io/InputStream;

    .line 113
    iput-object p3, p0, Lcom/amplitude/core/utilities/Connection;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method private final getBodyStr()Ljava/lang/String;
    .locals 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"api_key\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amplitude/core/utilities/Connection;->apiKey:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "apiKey"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"client_upload_time\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amplitude/core/utilities/Connection;->clientUploadTime:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "clientUploadTime"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"events\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amplitude/core/utilities/Connection;->events:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "events"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/amplitude/core/utilities/Connection;->minIdLength:Ljava/lang/Integer;

    const/16 v2, 0x7d

    if-eqz v1, :cond_3

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",\"options\":{\"min_id_length\":"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amplitude/core/utilities/Connection;->minIdLength:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/amplitude/core/utilities/Connection;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/amplitude/core/utilities/Diagnostics;->hasDiagnostics()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",\"request_metadata\":{\"sdk\":"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amplitude/core/utilities/Connection;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/amplitude/core/utilities/Diagnostics;->extractDiagnostics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getResponse$core()Lcom/amplitude/core/utilities/Response;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->response:Lcom/amplitude/core/utilities/Response;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "response"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setApiKey$core(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public final setBody$core()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/amplitude/core/utilities/Connection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/amplitude/core/utilities/Connection;->getBodyStr()Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/amplitude/core/utilities/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setClientUploadTime$core(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientUploadTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->clientUploadTime:Ljava/lang/String;

    return-void
.end method

.method public final setDiagnostics$core(Lcom/amplitude/core/utilities/Diagnostics;)V
    .locals 1

    const-string v0, "diagnostics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->diagnostics:Lcom/amplitude/core/utilities/Diagnostics;

    return-void
.end method

.method public final setEvents$core(Ljava/lang/String;)V
    .locals 1

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->events:Ljava/lang/String;

    return-void
.end method

.method public final setMinIdLength$core(Ljava/lang/Integer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->minIdLength:Ljava/lang/Integer;

    return-void
.end method

.method public final setResponse$core(Lcom/amplitude/core/utilities/Response;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/amplitude/core/utilities/Connection;->response:Lcom/amplitude/core/utilities/Response;

    return-void
.end method
