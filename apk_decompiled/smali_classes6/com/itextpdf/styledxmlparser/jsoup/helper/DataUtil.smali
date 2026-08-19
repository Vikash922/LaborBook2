.class public final Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field static final boundaryLength:I = 0x20

.field static final bufferSize:I = 0x8000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharsetName:Ljava/lang/String;

.field private static final firstReadBufferSize:I = 0x1400

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 63
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 66
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 127
    new-array v0, v0, [B

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;
    .locals 8

    .line 283
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x4

    .line 284
    new-array v1, v0, [B

    .line 285
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 286
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    const/4 p0, 0x0

    .line 289
    aget-byte v0, v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_1

    aget-byte v7, v1, v6

    if-nez v7, :cond_1

    aget-byte v7, v1, v3

    if-ne v7, v4, :cond_1

    aget-byte v7, v1, v2

    if-eq v7, v5, :cond_2

    :cond_1
    if-ne v0, v5, :cond_3

    aget-byte v7, v1, v6

    if-ne v7, v4, :cond_3

    aget-byte v7, v1, v3

    if-nez v7, :cond_3

    aget-byte v2, v1, v2

    if-nez v2, :cond_3

    .line 291
    :cond_2
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;

    const-string v1, "UTF-32"

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    if-ne v0, v4, :cond_4

    .line 292
    aget-byte v2, v1, v6

    if-eq v2, v5, :cond_5

    :cond_4
    if-ne v0, v5, :cond_6

    aget-byte v2, v1, v6

    if-ne v2, v4, :cond_6

    .line 294
    :cond_5
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;

    const-string v1, "UTF-16"

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_6
    const/16 p0, -0x11

    if-ne v0, p0, :cond_7

    .line 295
    aget-byte p0, v1, v6

    const/16 v0, -0x45

    if-ne p0, v0, :cond_7

    aget-byte p0, v1, v3

    const/16 v0, -0x41

    if-ne p0, v0, :cond_7

    .line 296
    new-instance p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;

    const-string v0, "UTF-8"

    invoke-direct {p0, v0, v6}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 251
    :cond_0
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 254
    const-string v0, "charset="

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x8b

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    .line 90
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    :cond_3
    :goto_1
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object p0

    invoke-static {v0, p1, p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->htmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 5

    .line 273
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 276
    sget-object v3, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 136
    new-instance p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const v0, 0x8000

    const/4 v1, 0x0

    .line 137
    invoke-static {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lcom/itextpdf/styledxmlparser/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    .line 142
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/16 v2, 0x13ff

    .line 143
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    .line 145
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 148
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 150
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const/4 v6, 0x0

    if-nez p1, :cond_c

    .line 154
    :try_start_0
    sget-object v7, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v7, Ljava/io/CharArrayReader;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v7, v8, v1, v2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {p3, v7, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v2
    :try_end_0
    .catch Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const-string v7, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v2, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v6

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 164
    const-string v10, "http-equiv"

    invoke-virtual {v9, v10}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    const-string v8, "content"

    invoke-virtual {v9, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_5

    .line 166
    const-string v10, "charset"

    invoke-virtual {v9, v10}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 167
    invoke-virtual {v9, v10}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    if-eqz v8, :cond_3

    :cond_6
    if-nez v8, :cond_9

    .line 173
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodeSize()I

    move-result v7

    if-lez v7, :cond_9

    .line 174
    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v7

    .line 176
    instance-of v9, v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    if-eqz v9, :cond_7

    .line 177
    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    goto :goto_1

    .line 178
    :cond_7
    instance-of v9, v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-eqz v9, :cond_8

    .line 179
    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    .line 180
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 181
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;->asXmlDeclaration()Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    move-result-object v7

    goto :goto_1

    :cond_8
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_9

    .line 184
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 185
    const-string v8, "encoding"

    invoke-virtual {v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    :cond_9
    invoke-static {v8}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 189
    sget-object v8, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[\"\']"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move-object v6, v2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 197
    :cond_c
    const-string v2, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v6, :cond_11

    if-nez p1, :cond_d

    .line 201
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 202
    :cond_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    if-eqz v4, :cond_f

    .line 203
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil$BomCharset;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v3, 0x1

    .line 205
    invoke-virtual {v2, v3, v4}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-nez v0, :cond_e

    move v1, v5

    .line 206
    :cond_e
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 209
    :cond_f
    :try_start_1
    invoke-virtual {p3, v2, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v6
    :try_end_1
    .catch Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_10
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 215
    :goto_3
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 216
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result p1

    if-nez p1, :cond_11

    .line 218
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 212
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 221
    :cond_11
    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v6
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const v0, 0x8000

    .line 235
    invoke-static {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lcom/itextpdf/styledxmlparser/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    .line 236
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/ConstrainableInputStream;->readToByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->charsetIsSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 264
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->charsetIsSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
