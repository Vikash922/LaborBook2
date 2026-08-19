.class Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;
.super Ljava/lang/Object;
.source "UriEncodeUtil.java"


# static fields
.field private static final caseDiff:I = 0x20

.field private static dfltEncName:Ljava/lang/String; = "UTF-8"

.field private static unreservedAndReserved:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 73
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 79
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 87
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 89
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 97
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 102
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 103
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 104
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 105
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 129
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 131
    const-string v2, "Unsupported encoding exception."

    if-eqz p1, :cond_e

    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    .line 142
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_c

    .line 143
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v8, v7, :cond_0

    const/16 v5, 0x2f

    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    :goto_1
    move v5, v2

    goto :goto_0

    :cond_0
    const/16 v8, 0x25

    const/16 v9, 0x10

    if-ne v8, v7, :cond_2

    add-int/lit8 v8, v4, 0x2

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, -0x1

    if-ge v8, v10, :cond_1

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v10, v4, 0x3

    .line 152
    :try_start_1
    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v11, v8

    :catch_0
    if-ltz v11, :cond_1

    int-to-char v7, v7

    .line 157
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    if-gez v11, :cond_5

    .line 163
    const-string v5, "%25"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_2
    const/16 v10, 0x23

    if-ne v10, v7, :cond_4

    if-eqz v6, :cond_3

    int-to-char v6, v7

    .line 169
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v3

    goto :goto_3

    .line 173
    :cond_3
    const-string v5, "%23"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 177
    :cond_4
    sget-object v10, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_6

    int-to-char v7, v7

    .line 178
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_6
    invoke-virtual {v1, v7}, Ljava/io/CharArrayWriter;->write(I)V

    const v5, 0xd800

    if-lt v7, v5, :cond_7

    const v5, 0xdbff

    if-gt v7, v5, :cond_7

    add-int/lit8 v5, v4, 0x1

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 198
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v10, 0xdc00

    if-lt v7, v10, :cond_7

    const v10, 0xdfff

    if-gt v7, v10, :cond_7

    .line 209
    invoke-virtual {v1, v7}, Ljava/io/CharArrayWriter;->write(I)V

    move v4, v5

    :cond_7
    add-int/2addr v4, v2

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    sget-object v5, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    :cond_8
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->flush()V

    .line 218
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    .line 219
    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move v7, v3

    .line 220
    :goto_4
    array-length v10, v5

    if-ge v7, v10, :cond_b

    .line 221
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    aget-byte v10, v5, v7

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 225
    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v10, v10, -0x20

    int-to-char v10, v10

    .line 228
    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    aget-byte v10, v5, v7

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 230
    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_a

    add-int/lit8 v10, v10, -0x20

    int-to-char v10, v10

    .line 233
    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 235
    :cond_b
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->reset()V

    goto/16 :goto_1

    :cond_c
    if-eqz v5, :cond_d

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0

    .line 138
    :catch_1
    new-instance p0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_e
    new-instance p0, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
