.class public abstract Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
.super Ljava/lang/Object;
.source "OpenTypeFontTableReader.java"


# instance fields
.field protected featuresType:Lcom/itextpdf/io/font/otf/OpenTypeFeature;

.field private final gdef:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

.field private final indexGlyphMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field protected lookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/OpenTableLookup;",
            ">;"
        }
    .end annotation
.end field

.field protected final rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected scriptsType:Lcom/itextpdf/io/font/otf/OpenTypeScript;

.field protected final tableLocation:I

.field private final unitsPerEm:I


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/source/RandomAccessFileOrArray;",
            "I",
            "Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 75
    iput p2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->tableLocation:I

    .line 76
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->indexGlyphMap:Ljava/util/Map;

    .line 77
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->gdef:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    .line 78
    iput p5, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->unitsPerEm:I

    return-void
.end method

.method private readLookupListTable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    .line 267
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 268
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object p1

    .line 271
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readLookupTable(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readLookupTable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 286
    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object p1

    .line 287
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readLookupTable(II[I)Lcom/itextpdf/io/font/otf/OpenTableLookup;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getFeatureRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->featuresType:Lcom/itextpdf/io/font/otf/OpenTypeFeature;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->getRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->scriptsType:Lcom/itextpdf/io/font/otf/OpenTypeScript;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->getLanguageRecord([Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object p1, p1, Lcom/itextpdf/io/font/otf/LanguageRecord;->features:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 107
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->featuresType:Lcom/itextpdf/io/font/otf/OpenTypeFeature;

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->getRecord(I)Lcom/itextpdf/io/font/otf/FeatureRecord;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->indexGlyphMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    return-object p1
.end method

.method public getGlyphClass(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->gdef:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->getGlyphClassTable()Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    return p1
.end method

.method public getLanguageRecord(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getLanguageRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;

    move-result-object p1

    return-object p1
.end method

.method public getLanguageRecord(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getScriptRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/ScriptRecord;

    .line 180
    iget-object v3, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 184
    iget-object p1, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->defaultLanguage:Lcom/itextpdf/io/font/otf/LanguageRecord;

    return-object p1

    .line 186
    :cond_3
    iget-object v2, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->languages:[Lcom/itextpdf/io/font/otf/LanguageRecord;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 187
    iget-object v6, v5, Lcom/itextpdf/io/font/otf/LanguageRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getLookupTable(I)Lcom/itextpdf/io/font/otf/OpenTableLookup;
    .locals 1

    if-ltz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/OpenTableLookup;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLookups(Lcom/itextpdf/io/font/otf/FeatureRecord;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/OpenTableLookup;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/FeatureRecord;->lookups:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    iget-object p1, p1, Lcom/itextpdf/io/font/otf/FeatureRecord;->lookups:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 154
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLookups([Lcom/itextpdf/io/font/otf/FeatureRecord;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/OpenTableLookup;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 139
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 140
    iget-object v4, v4, Lcom/itextpdf/io/font/otf/FeatureRecord;->lookups:[I

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    const/4 v8, 0x1

    .line 141
    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {v0}, Lcom/itextpdf/io/util/IntHashtable;->toOrderedKeys()[I

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 146
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->lookupList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public getRequiredFeature([Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/FeatureRecord;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->scriptsType:Lcom/itextpdf/io/font/otf/OpenTypeScript;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->getLanguageRecord([Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->featuresType:Lcom/itextpdf/io/font/otf/OpenTypeFeature;

    iget p1, p1, Lcom/itextpdf/io/font/otf/LanguageRecord;->featureRequired:I

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->getRecord(I)Lcom/itextpdf/io/font/otf/FeatureRecord;

    move-result-object p1

    return-object p1
.end method

.method public getScriptRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ScriptRecord;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->scriptsType:Lcom/itextpdf/io/font/otf/OpenTypeScript;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->getScriptRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpecificFeatures(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 116
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 119
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/FeatureRecord;

    .line 123
    iget-object v2, v1, Lcom/itextpdf/io/font/otf/FeatureRecord;->tag:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public getUnitsPerEm()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->unitsPerEm:I

    return v0
.end method

.method public isSkip(II)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->gdef:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->isSkip(II)Z

    move-result p1

    return p1
.end method

.method protected final readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->create(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    return-object p1
.end method

.method protected final readCoverageFormat(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readCoverageFormat(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected readCoverages([ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readCoverages(Lcom/itextpdf/io/source/RandomAccessFileOrArray;[ILjava/util/List;)V

    return-void
.end method

.method protected abstract readLookupTable(II[I)Lcom/itextpdf/io/font/otf/OpenTableLookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readPosLookupRecords(I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readPosLookupRecords(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object p1

    return-object p1
.end method

.method protected readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readSubstLookupRecords(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object p1

    return-object p1
.end method

.method protected readTagAndLocations(I)[Lcom/itextpdf/io/font/otf/TagAndLocation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 229
    new-array v1, v0, [Lcom/itextpdf/io/font/otf/TagAndLocation;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 231
    new-instance v3, Lcom/itextpdf/io/font/otf/TagAndLocation;

    invoke-direct {v3}, Lcom/itextpdf/io/font/otf/TagAndLocation;-><init>()V

    .line 232
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v5, 0x4

    const-string v6, "utf-8"

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/itextpdf/io/font/otf/TagAndLocation;->tag:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    iput v4, v3, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    .line 234
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected final readUShortArray(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readUShortArray(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)[I

    move-result-object p1

    return-object p1
.end method

.method protected final readUShortArray(II)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readUShortArray(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)[I

    move-result-object p1

    return-object p1
.end method

.method final startReadingTable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/io/font/otf/FontReadingException;
        }
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->tableLocation:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 250
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    .line 251
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 255
    new-instance v3, Lcom/itextpdf/io/font/otf/OpenTypeScript;

    iget v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->tableLocation:I

    add-int/2addr v4, v0

    invoke-direct {v3, p0, v4}, Lcom/itextpdf/io/font/otf/OpenTypeScript;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    iput-object v3, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->scriptsType:Lcom/itextpdf/io/font/otf/OpenTypeScript;

    .line 257
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;

    iget v3, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->tableLocation:I

    add-int/2addr v3, v1

    invoke-direct {v0, p0, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFeature;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->featuresType:Lcom/itextpdf/io/font/otf/OpenTypeFeature;

    .line 259
    iget v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->tableLocation:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readLookupListTable(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Lcom/itextpdf/io/font/otf/FontReadingException;

    const-string v2, "Error reading font file"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/font/otf/FontReadingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
