.class public Lcom/itextpdf/io/font/otf/GposLookupType7;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType7.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected subTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualTable<",
            "Lcom/itextpdf/io/font/otf/ContextualPositionRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/itextpdf/io/font/otf/GposLookupType7;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/otf/GposLookupType7;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->subTables:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType7;->readSubTables()V

    return-void
.end method


# virtual methods
.method protected readSubTable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad subtable format identifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GposLookupType7;->readSubTableFormat2(I)V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    sget-object p1, Lcom/itextpdf/io/font/otf/GposLookupType7;->LOGGER:Lorg/slf4j/Logger;

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    const-string v1, "Subtable format {0} of GPOS Lookup Type {1} is not supported yet"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected readSubTableFormat2(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 135
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 138
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v0, p1

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    .line 141
    new-instance v0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->lookupFlag:I

    invoke-direct {v0, v1, v5, v4, p1}, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 147
    aget v5, v3, v4

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v3, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 149
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 150
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v7, v3, v4

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v6

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_1

    .line 155
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v6, v8

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 157
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 158
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 159
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v11, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v9

    .line 160
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readPosLookupRecords(I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object v10

    .line 162
    new-instance v11, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;

    invoke-direct {v11, v0, v9, v10}, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;[I[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V

    .line 163
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 166
    :cond_1
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;->setPosClassSets(Ljava/util/List;)V

    .line 170
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType7;->subTables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 77
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 78
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 80
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType7;->subTables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/ContextualTable;

    .line 81
    invoke-virtual {v6, v1}, Lcom/itextpdf/io/font/otf/ContextualTable;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/ContextualPositionRule;

    if-nez v6, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 87
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/ContextualPositionRule;->getPosLookupRecords()[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object v6

    .line 88
    new-instance v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v9}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 89
    iput-object v1, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 90
    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v13, v6, v11

    .line 93
    iput v4, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 v14, 0x0

    .line 94
    :goto_2
    iget v15, v13, Lcom/itextpdf/io/font/otf/PosLookupRecord;->sequenceIndex:I

    if-ge v14, v15, :cond_1

    .line 95
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v8, v0, Lcom/itextpdf/io/font/otf/GposLookupType7;->lookupFlag:I

    invoke-virtual {v9, v15, v8}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 98
    :cond_1
    iget v8, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iput v8, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 99
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GposLookupType7;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v13, v13, Lcom/itextpdf/io/font/otf/PosLookupRecord;->lookupListIndex:I

    invoke-virtual {v8, v13}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getLookupTable(I)Lcom/itextpdf/io/font/otf/OpenTableLookup;

    move-result-object v8

    .line 100
    invoke-virtual {v8, v1}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    move v12, v7

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 103
    :cond_4
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 104
    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 105
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v5, v2

    sub-int/2addr v3, v5

    .line 106
    iput v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return v12

    .line 110
    :cond_5
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 v1, 0x0

    return v1
.end method
