.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;
.super Ljava/lang/Object;
.source "CssStyleSheetParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/PortUtil;->wrapInBufferedReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p0

    const/16 p1, 0x2000

    .line 80
    new-array v1, p1, [C

    :cond_0
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 84
    aget-char v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->process(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getParsingResult()Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 2

    .line 109
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    :try_start_0
    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
