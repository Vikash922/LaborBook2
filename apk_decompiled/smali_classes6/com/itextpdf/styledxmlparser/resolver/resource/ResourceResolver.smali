.class public Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
.super Ljava/lang/Object;
.source "ResourceResolver.java"


# static fields
.field public static final BASE64_IDENTIFIER:Ljava/lang/String; = "base64"

.field public static final DATA_SCHEMA_PREFIX:Ljava/lang/String; = "data:"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

.field private retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

.field private uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 117
    const-string p1, ""

    .line 119
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 120
    new-instance p1, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    if-nez p2, :cond_1

    .line 123
    new-instance p1, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    goto :goto_0

    .line 125
    :cond_1
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    :goto_0
    return-void
.end method

.method private isContains64Mark(Ljava/lang/String;)Z
    .locals 1

    .line 323
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static isDataSrc(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private retrieveBytesFromBase64Src(Ljava/lang/String;)[B
    .locals 3

    .line 304
    const-string v0, "base64"

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isContains64Mark(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {p1}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected createImageByUrl(Ljava/net/URL;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getByteArrayByUrl(Ljava/net/URL;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    return-object v0
.end method

.method public resetCache()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->reset()V

    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public retrieveBytesFromResource(Ljava/lang/String;)[B
    .locals 3

    .line 192
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromBase64Src(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getByteArrayByUrl(Ljava/net/URL;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 203
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 201
    const-string v2, "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public retrieveImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 2

    if-eqz p1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isContains64Mark(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->tryResolveBase64ImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->tryResolveUrlImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 173
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isDataSrc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unable to retrieve image with data URI {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 179
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 177
    const-string v1, "Unable to retrieve image with given base URI ({0}) and image source path ({1})"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public retrieveResourceAsInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 215
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromBase64Src(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1

    .line 221
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 226
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 224
    const-string v2, "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setRetriever(Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    return-object p0
.end method

.method protected tryResolveBase64ImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 3

    .line 261
    const-string v0, "base64"

    :try_start_0
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {p1}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 266
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected tryResolveUrlImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->createImageByUrl(Ljava/net/URL;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
