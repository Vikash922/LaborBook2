.class public Lcom/itextpdf/io/font/otf/GsubLookupType5;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GsubLookupType5.java"


# instance fields
.field protected subTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualTable<",
            "Lcom/itextpdf/io/font/otf/ContextualSubstRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTables()V

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

    .line 113
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 114
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat1(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat2(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat3(I)V

    :goto_0
    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad substFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readSubTableFormat1(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 131
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 133
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v1

    invoke-virtual {v4, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 135
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v3, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 136
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 137
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v7, v3, v4

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v6

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_0

    .line 141
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v6, v8

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 142
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 143
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 144
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v11, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v9

    .line 145
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v10

    .line 147
    new-instance v11, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1$SubstRuleFormat1;

    invoke-direct {v11, v9, v10}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1$SubstRuleFormat1;-><init>([I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 149
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v1, v2, v3, v0}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected readSubTableFormat2(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 159
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 161
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr v0, p1

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    .line 164
    new-instance v0, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v0, v1, v5, v4, p1}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;)V

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 169
    aget v5, v3, v4

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v3, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 171
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 172
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v7, v3, v4

    invoke-virtual {v6, v5, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v6

    .line 174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_1
    if-ge v8, v5, :cond_1

    .line 177
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v10, v6, v8

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 179
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v9, v9, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 180
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v10, v10, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 181
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v11, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v9

    .line 182
    iget-object v11, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v10

    .line 184
    new-instance v11, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2$SubstRuleFormat2;

    invoke-direct {v11, v0, v9, v10}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2$SubstRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 185
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 188
    :cond_1
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;->setSubClassSets(Ljava/util/List;)V

    .line 192
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected readSubTableFormat3(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object p1

    .line 200
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v1

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v0, p1, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 205
    new-instance p1, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;

    invoke-direct {p1, v2, v1}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;-><init>(Ljava/util/List;[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 206
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 74
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 75
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 77
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

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

    .line 78
    invoke-virtual {v6, v1}, Lcom/itextpdf/io/font/otf/ContextualTable;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualRule;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    if-nez v6, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 84
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getSubstLookupRecords()[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v6

    .line 85
    new-instance v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v9}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 86
    iput-object v1, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 87
    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v13, v6, v11

    .line 90
    iput v4, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 v14, 0x0

    .line 91
    :goto_2
    iget v15, v13, Lcom/itextpdf/io/font/otf/SubstLookupRecord;->sequenceIndex:I

    if-ge v14, v15, :cond_1

    .line 92
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-virtual {v9, v15, v8}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 95
    :cond_1
    iget v8, v9, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iput v8, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 96
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v13, v13, Lcom/itextpdf/io/font/otf/SubstLookupRecord;->lookupListIndex:I

    invoke-virtual {v8, v13}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getLookupTable(I)Lcom/itextpdf/io/font/otf/OpenTableLookup;

    move-result-object v8

    .line 97
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

    .line 100
    :cond_4
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 101
    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 102
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr v5, v2

    sub-int/2addr v3, v5

    .line 103
    iput v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return v12

    .line 107
    :cond_5
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 v1, 0x0

    return v1
.end method
