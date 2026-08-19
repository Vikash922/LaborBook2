.class public Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;
.super Ljava/lang/Object;
.source "DefaultResourceRetriever.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private resourceSizeByteLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 53
    iput-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    return-void
.end method


# virtual methods
.method public getByteArrayByUrl(Ljava/net/URL;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lcom/itextpdf/styledxmlparser/exceptions/ReadingByteLimitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 110
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 111
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/itextpdf/styledxmlparser/exceptions/ReadingByteLimitException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object v2

    :catchall_0
    move-exception v2

    .line 105
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Lcom/itextpdf/styledxmlparser/exceptions/ReadingByteLimitException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :catch_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    iget-wide v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 112
    const-string v2, "Unable to retrieve resource with given URL ({0}) and resource size byte limit ({1})."

    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->urlFilter(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    const-string v1, "Resource with given URL ({0}) was filtered out."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 90
    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getInputStreamOfFinalConnection(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    iget-wide v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    invoke-direct {v0, p1, v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public getResourceSizeByteLimit()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    return-wide v0
.end method

.method public setResourceSizeByteLimit(J)Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    return-object p0
.end method

.method protected urlFilter(Ljava/net/URL;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
