.class Lcom/itextpdf/io/font/FontRegisterProvider;
.super Ljava/lang/Object;
.source "FontRegisterProvider.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fontNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFonts()V

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFontFamilies()V

    return-void
.end method


# virtual methods
.method public clearRegisteredFontFamilies()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 422
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFontFamilies()V

    return-void
.end method

.method public clearRegisteredFonts()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 417
    invoke-virtual {p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerStandardFonts()V

    return-void
.end method

.method getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    return-object p1
.end method

.method getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "Times-Roman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    .line 113
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    const-string v1, "Times"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 115
    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    .line 118
    :cond_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "bold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 122
    const-string v5, "italic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "oblique"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    or-int/lit8 v4, v4, 0x2

    :cond_5
    and-int/lit8 v3, p2, 0x3

    if-ne v3, v4, :cond_3

    move-object p1, v2

    .line 128
    :cond_6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 130
    :cond_7
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFontProgram(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    return-object p1
.end method

.method protected getFontProgram(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 182
    invoke-static {p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getRegisteredFontFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isRegisteredFont(Ljava/lang/String;)Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method registerFont(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method registerFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 248
    const-string v0, ","

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".otf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ttc,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    goto/16 :goto_2

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".ttc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeCollection;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/TrueTypeCollection;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 275
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/TrueTypeCollection;->getTTCSize()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".afm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".pfm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 284
    :cond_3
    invoke-static {p1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 249
    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontNameLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const-string v1, "regular"

    if-eqz p2, :cond_5

    .line 252
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 253
    iget-object v3, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNameAllLangs()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 264
    invoke-virtual {p0, v3, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 268
    :cond_7
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameEnglishOpenType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 269
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFullNamesEnglishOpenType()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFamilyNameEnglishOpenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 289
    :cond_8
    :goto_5
    sget-object p2, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Registered {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    new-instance p2, Lcom/itextpdf/io/exceptions/IOException;

    invoke-direct {p2, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method registerFontDirectory(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method registerFontDirectory(Ljava/lang/String;Z)I
    .locals 8

    .line 326
    sget-object v0, Lcom/itextpdf/io/font/FontRegisterProvider;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Registering directory {0}, looking for fonts"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 329
    :try_start_0
    invoke-static {p1, p2}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectory(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 332
    :cond_0
    array-length p2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_6

    :try_start_1
    aget-object v3, p1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ge v4, v6, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 335
    :goto_1
    const-string v7, ".afm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".pfm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 342
    :cond_2
    const-string v6, ".ttf"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".otf"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".ttc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 343
    :cond_3
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 337
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".pfb"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-static {v4}, Lcom/itextpdf/commons/utils/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    :catch_0
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move v0, v2

    :catch_2
    move v2, v0

    :cond_6
    return v2
.end method

.method registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 196
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    iget-object p3, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    monitor-enter p3

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    monitor-enter v0

    .line 206
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x0

    move v1, p3

    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 211
    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 219
    const-string v1, "regular"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 204
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected registerStandardFontFamilies()V
    .locals 3

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-string v1, "Courier"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v2, "Courier-Bold"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v2, "Courier-Oblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v2, "Courier-BoldOblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const-string v1, "Helvetica"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v2, "Helvetica-Bold"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v2, "Helvetica-Oblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v2, "Helvetica-BoldOblique"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    const-string v1, "Symbol"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    const-string v1, "Times-Roman"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v1, "Times-Bold"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "Times-Italic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "Times-BoldItalic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    const-string v2, "Times"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const-string v1, "ZapfDingbats"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontFamilies:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected registerStandardFonts()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-Oblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Courier-BoldOblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-Oblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Helvetica-BoldOblique"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Symbol"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Roman"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Bold"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-Italic"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "Times-BoldItalic"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    const-string v1, "ZapfDingbats"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method registerSystemFontDirectories()I
    .locals 8

    const/4 v0, 0x6

    .line 364
    new-array v1, v0, [Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/itextpdf/commons/utils/FileUtil;->getFontsDir()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/usr/share/X11/fonts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/usr/X/lib/X11/fonts"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v6, "/usr/openwin/lib/X11/fonts"

    aput-object v6, v1, v2

    const/4 v2, 0x4

    const-string v6, "/usr/share/fonts"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v6, "/usr/X11R6/lib/X11/fonts"

    aput-object v6, v1, v2

    move v2, v3

    move v6, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 372
    aget-object v7, v1, v2

    .line 373
    invoke-virtual {p0, v7, v4}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/Library/Fonts"

    aput-object v1, v0, v3

    const-string v1, "/System/Library/Fonts"

    aput-object v1, v0, v4

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_1

    .line 380
    aget-object v2, v0, v1

    .line 381
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;Z)I

    move-result v2

    add-int/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v6
.end method

.method saveCopyOfRegularFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/itextpdf/io/font/FontRegisterProvider;->fontNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
