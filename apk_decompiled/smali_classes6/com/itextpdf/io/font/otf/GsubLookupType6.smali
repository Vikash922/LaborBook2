.class public Lcom/itextpdf/io/font/otf/GsubLookupType6;
.super Lcom/itextpdf/io/font/otf/GsubLookupType5;
.source "GsubLookupType6.java"


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType5;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    return-void
.end method


# virtual methods
.method protected readSubTableFormat1(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v1

    invoke-virtual {v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 76
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v3, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 77
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 78
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v7, v3, v4

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v6

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_0

    .line 82
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v6, v8

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 83
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 84
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v10, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v9

    .line 85
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 86
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v10

    .line 87
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 88
    iget-object v12, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v11

    .line 89
    iget-object v12, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 90
    iget-object v13, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v13, v12}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v12

    .line 92
    new-instance v13, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;

    invoke-direct {v13, v9, v10, v11, v12}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;-><init>([I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    invoke-direct {v1, v2, v3, v0}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 102
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 103
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 104
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 105
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 106
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 107
    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v7, v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v7

    .line 109
    new-instance v11, Ljava/util/HashSet;

    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v2, v1

    invoke-virtual {v8, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v12

    .line 111
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v13

    .line 112
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v14

    .line 114
    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v10, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;)V

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    .line 120
    aget v5, v7, v4

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v8, v7, v4

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 122
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 123
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v9, v7, v4

    invoke-virtual {v8, v5, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v8

    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v3

    :goto_1
    if-ge v10, v5, :cond_1

    .line 128
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v12, v8, v10

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 130
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 131
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v17

    .line 132
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 133
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v18

    .line 134
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 135
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v19

    .line 136
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v11, v11, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 137
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v20

    .line 139
    new-instance v11, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;

    move-object v15, v11

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v20}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;[I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 140
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 143
    :cond_1
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 146
    :cond_2
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;->setSubClassSets(Ljava/util/List;)V

    .line 147
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected readSubTableFormat3(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 157
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object p1

    .line 158
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 159
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v5

    .line 161
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v3, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, p1, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 170
    new-instance p1, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;

    invoke-direct {p1, v6, v0, v1, v5}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 172
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
