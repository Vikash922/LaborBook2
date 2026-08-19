.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    }
.end annotation


# static fields
.field private static final DefaultOutput:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

.field private static final codeDelims:[C

.field static final codepointRadix:I = 0x24

.field private static final empty:I = -0x1

.field private static final emptyName:Ljava/lang/String; = ""

.field private static final multipoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->codeDelims:[C

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->DefaultOutput:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->load(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object p1

    .line 260
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_0

    const/16 p2, 0x26

    .line 261
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 263
    :cond_0
    const-string p1, "&#x"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method private static canEncode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 2

    .line 301
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$1;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 308
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x80

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 3

    .line 138
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    .line 144
    :cond_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 146
    aput p0, p1, v2

    return v1

    :cond_1
    return v2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 179
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->DefaultOutput:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    .line 161
    const-string p0, ""

    return-object p0

    .line 162
    :cond_0
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    .line 164
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    move-object/from16 v3, p2

    .line 190
    iget-object v4, v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->coreCharset:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v5, :cond_12

    move-object/from16 v10, p1

    .line 195
    invoke-virtual {v10, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    if-eqz p4, :cond_3

    .line 198
    invoke-static {v11}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    if-eqz p5, :cond_0

    if-eqz v8, :cond_11

    :cond_0
    if-eqz v9, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v9, 0x20

    .line 201
    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v9, v13

    goto/16 :goto_2

    :cond_2
    move v9, v6

    move v8, v13

    :cond_3
    const/high16 v12, 0x10000

    if-ge v11, v12, :cond_f

    int-to-char v12, v11

    const/16 v13, 0x22

    if-eq v12, v13, :cond_d

    const/16 v13, 0x26

    if-eq v12, v13, :cond_c

    const/16 v13, 0x3c

    if-eq v12, v13, :cond_9

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_7

    const/16 v13, 0xa0

    if-eq v12, v13, :cond_5

    .line 243
    invoke-static {v4, v12, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->canEncode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 244
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_2

    .line 246
    :cond_4
    invoke-static {p0, v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;I)V

    goto :goto_2

    .line 218
    :cond_5
    sget-object v12, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    if-eq v1, v12, :cond_6

    .line 219
    const-string v12, "&nbsp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 221
    :cond_6
    const-string v12, "&#xa0;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    .line 232
    const-string v12, "&gt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 234
    :cond_8
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_b

    .line 225
    sget-object v13, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    if-eq v1, v13, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v13

    sget-object v14, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v13, v14, :cond_a

    goto :goto_1

    .line 228
    :cond_a
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 226
    :cond_b
    :goto_1
    const-string v12, "&lt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 215
    :cond_c
    const-string v12, "&amp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_d
    if-eqz p3, :cond_e

    .line 238
    const-string v12, "&quot;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 240
    :cond_e
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 249
    :cond_f
    new-instance v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 250
    invoke-virtual {v2, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 251
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 253
    :cond_10
    invoke-static {p0, v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;I)V

    .line 194
    :cond_11
    :goto_2
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v7, v11

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 128
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/String;

    int-to-char p0, p0

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v3, 0x0

    aput-char p0, v2, v3

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 134
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static getCoreCharsetByName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    .locals 1

    .line 317
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->ascii:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object p0

    .line 319
    :cond_0
    const-string v0, "UTF-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 320
    sget-object p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->utf:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object p0

    .line 321
    :cond_1
    sget-object p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->fallback:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object p0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 118
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 107
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static load(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 10

    .line 325
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    .line 326
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    .line 327
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    .line 328
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v1, p1

    .line 333
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0x3d

    .line 336
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    .line 338
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->codeDelims:[C

    invoke-virtual {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 339
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v6

    .line 340
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x3b

    .line 343
    invoke-virtual {v0, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 344
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    goto :goto_1

    :cond_0
    move v6, v8

    :goto_1
    const/16 v7, 0x26

    .line 348
    invoke-virtual {v0, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v7

    .line 349
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 350
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    .line 352
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    aput-object v2, v7, v1

    .line 353
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    aput v4, v7, v1

    .line 354
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    aput v4, v7, v5

    .line 355
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_1

    .line 358
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    int-to-char v4, v4

    int-to-char v6, v6

    const/4 v8, 0x2

    new-array v9, v8, [C

    aput-char v4, v9, p1

    aput-char v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    move p1, v3

    .line 363
    :cond_3
    const-string p0, "Unexpected count of entities loaded"

    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 284
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
