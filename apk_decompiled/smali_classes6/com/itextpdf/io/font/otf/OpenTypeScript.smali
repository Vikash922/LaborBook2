.class public Lcom/itextpdf/io/font/otf/OpenTypeScript;
.super Ljava/lang/Object;
.source "OpenTypeScript.java"


# static fields
.field public static final DEFAULT_SCRIPT:Ljava/lang/String; = "DFLT"


# instance fields
.field private openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ScriptRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->records:Ljava/util/List;

    .line 59
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 60
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readTagAndLocations(I)[Lcom/itextpdf/io/font/otf/TagAndLocation;

    move-result-object p1

    .line 61
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 62
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->readScriptRecord(Lcom/itextpdf/io/font/otf/TagAndLocation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readLanguageRecord(Lcom/itextpdf/io/font/otf/TagAndLocation;)Lcom/itextpdf/io/font/otf/LanguageRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/itextpdf/io/font/otf/LanguageRecord;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/LanguageRecord;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    add-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 138
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/otf/LanguageRecord;->featureRequired:I

    .line 139
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/otf/LanguageRecord;->features:[I

    .line 141
    iget-object p1, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->tag:Ljava/lang/String;

    iput-object p1, v0, Lcom/itextpdf/io/font/otf/LanguageRecord;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private readScriptRecord(Lcom/itextpdf/io/font/otf/TagAndLocation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 114
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget v1, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    add-int/2addr v0, v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v2, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readTagAndLocations(I)[Lcom/itextpdf/io/font/otf/TagAndLocation;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/itextpdf/io/font/otf/ScriptRecord;

    invoke-direct {v2}, Lcom/itextpdf/io/font/otf/ScriptRecord;-><init>()V

    .line 120
    iget-object p1, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->tag:Ljava/lang/String;

    iput-object p1, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->tag:Ljava/lang/String;

    .line 121
    array-length p1, v1

    new-array p1, p1, [Lcom/itextpdf/io/font/otf/LanguageRecord;

    iput-object p1, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->languages:[Lcom/itextpdf/io/font/otf/LanguageRecord;

    const/4 p1, 0x0

    .line 122
    :goto_0
    array-length v3, v1

    if-ge p1, v3, :cond_1

    .line 123
    iget-object v3, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->languages:[Lcom/itextpdf/io/font/otf/LanguageRecord;

    aget-object v4, v1, p1

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->readLanguageRecord(Lcom/itextpdf/io/font/otf/TagAndLocation;)Lcom/itextpdf/io/font/otf/LanguageRecord;

    move-result-object v4

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 126
    new-instance p1, Lcom/itextpdf/io/font/otf/TagAndLocation;

    invoke-direct {p1}, Lcom/itextpdf/io/font/otf/TagAndLocation;-><init>()V

    .line 127
    const-string v1, ""

    iput-object v1, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->tag:Ljava/lang/String;

    .line 128
    iput v0, p1, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    .line 129
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeScript;->readLanguageRecord(Lcom/itextpdf/io/font/otf/TagAndLocation;)Lcom/itextpdf/io/font/otf/LanguageRecord;

    move-result-object p1

    iput-object p1, v2, Lcom/itextpdf/io/font/otf/ScriptRecord;->defaultLanguage:Lcom/itextpdf/io/font/otf/LanguageRecord;

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->records:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getLanguageRecord([Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/otf/LanguageRecord;
    .locals 11

    .line 73
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "DFLT"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/ScriptRecord;

    .line 74
    iget-object v4, v1, Lcom/itextpdf/io/font/otf/ScriptRecord;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 79
    :goto_0
    array-length v0, p1

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_6

    aget-object v7, p1, v5

    .line 80
    iget-object v8, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->records:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/io/font/otf/ScriptRecord;

    .line 81
    iget-object v10, v9, Lcom/itextpdf/io/font/otf/ScriptRecord;->tag:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v9

    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v1, v9

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    move-object v1, v6

    :goto_5
    if-nez v1, :cond_8

    return-object v3

    .line 100
    :cond_8
    iget-object p1, v1, Lcom/itextpdf/io/font/otf/ScriptRecord;->languages:[Lcom/itextpdf/io/font/otf/LanguageRecord;

    array-length v0, p1

    :goto_6
    if-ge v4, v0, :cond_a

    aget-object v2, p1, v4

    .line 101
    iget-object v5, v2, Lcom/itextpdf/io/font/otf/LanguageRecord;->tag:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v3, v2

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v3, :cond_b

    .line 107
    iget-object v3, v1, Lcom/itextpdf/io/font/otf/ScriptRecord;->defaultLanguage:Lcom/itextpdf/io/font/otf/LanguageRecord;

    :cond_b
    return-object v3
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

    .line 67
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeScript;->records:Ljava/util/List;

    return-object v0
.end method
