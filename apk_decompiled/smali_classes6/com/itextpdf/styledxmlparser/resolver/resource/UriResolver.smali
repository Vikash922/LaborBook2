.class public Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;
.super Ljava/lang/Object;
.source "UriResolver.java"


# instance fields
.field private baseUrl:Ljava/net/URL;

.field private isLocalBaseUri:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveBaseUrlOrPath(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseUri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private baseUriAsUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const/4 v0, 0x0

    .line 156
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 160
    const-string p1, "file"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    const-string v0, "\\"

    const-string v1, "/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 197
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    :cond_0
    const-string p1, "/*\\\\*"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPathRooted(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 0

    .line 205
    invoke-interface {p1}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resolveBaseUrlOrPath(Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUriAsUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->uriAsFileUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    if-eqz v0, :cond_1

    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid base URI: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uriAsFileUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    const-string v0, "file:///"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 178
    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 179
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isPathRooted(Ljava/nio/file/Path;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->encode(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    const-string v0, ""

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method


# virtual methods
.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLocalBaseUri()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z

    return v0
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->isLocalBaseUri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_0
    if-nez v1, :cond_1

    .line 116
    new-instance v1, Ljava/net/URL;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->baseUrl:Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method
