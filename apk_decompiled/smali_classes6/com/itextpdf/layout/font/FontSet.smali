.class public final Lcom/itextpdf/layout/font/FontSet;
.super Ljava/lang/Object;
.source "FontSet.java"


# static fields
.field private static final lastId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final fontPrograms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            "Lcom/itextpdf/io/font/FontProgram;",
            ">;"
        }
    .end annotation
.end field

.field private final fonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/font/FontSet;->lastId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fontPrograms:Ljava/util/Map;

    .line 86
    sget-object v0, Lcom/itextpdf/layout/font/FontSet;->lastId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/layout/font/FontSet;->id:J

    return-void
.end method


# virtual methods
.method public addDirectory(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public addDirectory(Ljava/lang/String;Z)I
    .locals 7

    .line 98
    invoke-static {p1, p2}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectory(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 101
    :cond_0
    array-length v0, p1

    move v1, p2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v3, p1, v1

    .line 103
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 104
    :goto_1
    const-string v6, ".afm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".pfm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    const-string v5, ".ttf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".otf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".ttc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    :cond_3
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 106
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pfb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v4}, Lcom/itextpdf/commons/utils/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    :catch_0
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 147
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/kernel/font/Type3Font;

    if-eqz v1, :cond_1

    .line 148
    const-class p1, Lcom/itextpdf/layout/font/FontSet;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 149
    const-string p2, "Type 3 font cannot be added to FontSet. Custom FontProvider class may be created for this purpose."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v0

    .line 152
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p2

    .line 153
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 154
    iget-object p3, p0, Lcom/itextpdf/layout/font/FontSet;->fontPrograms:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final addFont(Lcom/itextpdf/layout/font/FontInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 0

    .line 325
    invoke-static {p1, p2, p3}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-static {p1, p2, v0, v0}, Lcom/itextpdf/layout/font/FontInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 0

    .line 204
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/layout/font/FontInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p1

    return p1
.end method

.method public addFont([B)Z
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, p1, v0, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFont([BLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-static {p1, p2, v0, v0}, Lcom/itextpdf/layout/font/FontInfo;->create([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p1

    return p1
.end method

.method public addFont([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontSet;->addFont([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result p1

    return p1
.end method

.method public addFont([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 0

    .line 254
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/layout/font/FontInfo;->create([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontSet;->getFonts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontInfo;

    .line 380
    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontSet;->getFonts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/FontInfo;

    .line 403
    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 404
    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontInfo;->getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 398
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getFontProgram(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/io/font/FontProgram;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fontPrograms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/FontProgram;

    return-object p1
.end method

.method public getFonts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontSet;->getFonts(Lcom/itextpdf/layout/font/FontSet;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFonts(Lcom/itextpdf/layout/font/FontSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Lcom/itextpdf/layout/font/FontSetCollection;

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/itextpdf/layout/font/FontSetCollection;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 455
    iget-wide v0, p0, Lcom/itextpdf/layout/font/FontSet;->id:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSet;->fonts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
