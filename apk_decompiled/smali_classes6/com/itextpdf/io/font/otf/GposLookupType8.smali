.class public Lcom/itextpdf/io/font/otf/GposLookupType8;
.super Lcom/itextpdf/io/font/otf/GposLookupType7;
.source "GposLookupType8.java"


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/io/exceptions/IOException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/GposLookupType7;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->subTables:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType8;->readSubTables()V

    return-void
.end method

.method private readSubTableFormat1(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v1

    invoke-virtual {v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 129
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v3, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 130
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 131
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v7, v3, v4

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v6

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_0

    .line 135
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v6, v8

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 136
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 137
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v10, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v9

    .line 138
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 139
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v10

    .line 140
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 141
    iget-object v12, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v11

    .line 142
    iget-object v12, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 143
    iget-object v13, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v13, v12}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readPosLookupRecords(I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object v12

    .line 145
    new-instance v13, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format1$PosRuleFormat1;

    invoke-direct {v13, v9, v10, v11, v12}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format1$PosRuleFormat1;-><init>([I[I[I[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format1;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->lookupFlag:I

    invoke-direct {v1, v2, v3, v0}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readSubTableFormat3(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 159
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 160
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object p1

    .line 161
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 162
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readPosLookupRecords(I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object v5

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v3, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, p1, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 173
    new-instance p1, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format3$PosRuleFormat3;

    invoke-direct {p1, v6, v0, v1, v5}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format3$PosRuleFormat3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V

    .line 175
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format3;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->lookupFlag:I

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format3$PosRuleFormat3;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 55
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 56
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/otf/GposLookupType8;->readSubTableFormat3(I)V

    goto :goto_0

    .line 68
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

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GposLookupType8;->readSubTableFormat2(I)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/otf/GposLookupType8;->readSubTableFormat1(I)V

    :goto_0
    return-void
.end method

.method protected readSubTableFormat2(I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 74
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 75
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 76
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 77
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 78
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 79
    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v7, v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v7

    .line 81
    new-instance v11, Ljava/util/HashSet;

    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v2, v1

    invoke-virtual {v8, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v12

    .line 83
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v13

    .line 84
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v14

    .line 86
    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->lookupFlag:I

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 91
    aget v5, v7, v3

    if-eqz v5, :cond_1

    .line 92
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v5, v7, v3

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 93
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 94
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v8, v7, v3

    .line 95
    invoke-virtual {v5, v4, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v5

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v2

    :goto_1
    if-ge v9, v4, :cond_0

    .line 99
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v11, v5, v9

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 101
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 102
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v17

    .line 103
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 104
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v18

    .line 105
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 106
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v19

    .line 107
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 108
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readPosLookupRecords(I)[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    move-result-object v20

    .line 110
    new-instance v10, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;

    move-object v15, v10

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v20}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;[I[I[I[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V

    .line 111
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move-object v4, v8

    .line 114
    :cond_1
    invoke-virtual {v1, v4}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->addPosClassSet(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType8;->subTables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
