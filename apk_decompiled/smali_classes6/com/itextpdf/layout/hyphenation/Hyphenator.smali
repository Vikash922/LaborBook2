.class public final Lcom/itextpdf/layout/hyphenation/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final SOFT_HYPHEN:C = '\u00ad'

.field private static additionalHyphenationFileDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static hTreeCache:Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

.field private static log:Lorg/slf4j/Logger;

.field private static final staticLock:Ljava/lang/Object;


# instance fields
.field protected country:Ljava/lang/String;

.field hyphPathNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lang:Ljava/lang/String;

.field leftMin:I

.field rightMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->staticLock:Ljava/lang/Object;

    .line 47
    const-class v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->lang:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->country:Ljava/lang/String;

    .line 70
    iput p3, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->leftMin:I

    .line 71
    iput p4, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->rightMin:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/layout/hyphenation/Hyphenator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    iput-object p5, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hyphPathNames:Ljava/util/Map;

    return-void
.end method

.method public static clearHyphenationTreeCache()V
    .locals 2

    .line 120
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    new-instance v1, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;-><init>()V

    sput-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hTreeCache:Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHyphenationTree(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;
    .locals 5

    const-string v0, "Can\'t load user patterns from XML file "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 264
    :cond_0
    :try_start_0
    new-instance v2, Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    invoke-direct {v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;-><init>()V

    .line 265
    invoke-virtual {v2, p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->loadPatterns(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/layout/hyphenation/HyphenationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 268
    :try_start_2
    sget-object v3, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itextpdf/layout/hyphenation/HyphenationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    :catch_3
    throw p1
.end method

.method public static getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".xml"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {v0, p1}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 244
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I/O problem while trying to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHyphenationTree(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/layout/hyphenation/HyphenationTree;"
        }
    .end annotation

    .line 136
    invoke-static {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTreeCache()Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->isMissing(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 144
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object v2

    .line 147
    const-string v4, "none"

    const-string v5, "Couldn\'t find hyphenation pattern for lang=\""

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    invoke-static {p0, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->isMissing(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    invoke-static {p0, v3, p2}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    sget-object p2, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 152
    sget-object p2, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\",country=\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\". Using general language pattern for lang=\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\" instead."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    if-nez v2, :cond_2

    .line 159
    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->noteMissing(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->cache(Ljava/lang/String;Lcom/itextpdf/layout/hyphenation/HyphenationTree;)V

    :cond_3
    :goto_0
    if-nez v2, :cond_5

    .line 169
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->noteMissing(Ljava/lang/String;)V

    .line 170
    sget-object p2, Lcom/itextpdf/layout/hyphenation/Hyphenator;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_4

    .line 172
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",country=\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-interface {p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public static getHyphenationTree2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/layout/hyphenation/HyphenationTree;"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTreeCache()Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    move-result-object v1

    .line 195
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTreeCache()Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 200
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructUserKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    .line 205
    :cond_1
    sget-object p1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->additionalHyphenationFileDirectories:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 207
    invoke-static {p2, p0}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_3
    if-nez v2, :cond_4

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "com/itextpdf/hyph/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".xml"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 218
    invoke-static {p1, p0}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    .line 224
    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->cache(Ljava/lang/String;Lcom/itextpdf/layout/hyphenation/HyphenationTree;)V

    :cond_5
    return-object v2
.end method

.method public static getHyphenationTreeCache()Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;
    .locals 2

    .line 108
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hTreeCache:Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;-><init>()V

    sput-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hTreeCache:Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    .line 112
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hTreeCache:Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;

    return-object v0

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static hyphenate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 314
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hyphenate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object p0

    return-object p0
.end method

.method public static hyphenate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;
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
            "Ljava/lang/String;",
            "II)",
            "Lcom/itextpdf/layout/hyphenation/Hyphenation;"
        }
    .end annotation

    .line 292
    invoke-static {p3}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->wordContainsSoftHyphens(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p3, p4, p5}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hyphenateBasedOnSoftHyphens(Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 297
    invoke-static {p0, p1, p2}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->getHyphenationTree(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 299
    invoke-virtual {p0, p3, p4, p5}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hyphenate(Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static hyphenateBasedOnSoftHyphens(Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 8

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xad

    .line 335
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    move v4, v3

    .line 340
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, p1, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    if-gt v4, v1, :cond_4

    sub-int p1, v1, v4

    add-int/lit8 p1, p1, 0x1

    .line 347
    new-array p1, p1, [I

    move p2, v4

    :goto_3
    if-gt p2, v1, :cond_3

    sub-int v2, p2, v4

    .line 349
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 351
    :cond_3
    new-instance p2, Lcom/itextpdf/layout/hyphenation/Hyphenation;

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/layout/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    return-object p2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerAdditionalHyphenationFileDirectory(Ljava/lang/String;)V
    .locals 2

    .line 94
    sget-object v0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->additionalHyphenationFileDirectories:Ljava/util/List;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->additionalHyphenationFileDirectories:Ljava/util/List;

    .line 98
    :cond_0
    sget-object v1, Lcom/itextpdf/layout/hyphenation/Hyphenator;->additionalHyphenationFileDirectories:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static wordContainsSoftHyphens(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xad

    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public hyphenate(Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->lang:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->country:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hyphPathNames:Ljava/util/Map;

    iget v4, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->leftMin:I

    iget v5, p0, Lcom/itextpdf/layout/hyphenation/Hyphenator;->rightMin:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/hyphenation/Hyphenator;->hyphenate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object p1

    return-object p1
.end method
