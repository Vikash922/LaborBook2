.class public Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;
.super Ljava/lang/Object;
.source "TaggedPdfReaderTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;
    }
.end annotation


# instance fields
.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected out:Ljava/io/OutputStreamWriter;

.field protected parsedTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected rootTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parsedTags:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method protected static escapeXML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 310
    array-length v0, p0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 313
    aget-char v3, p0, v2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x26

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_1

    .line 331
    invoke-static {v3}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->isValidCharacterValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p1, :cond_0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 333
    const-string v4, "&#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    int-to-char v3, v3

    .line 335
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    :cond_1
    const-string v3, "&apos;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 322
    :cond_2
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_3
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 316
    :cond_4
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    :cond_5
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static fixTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 261
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/16 v5, 0x5f

    const/4 v6, 0x1

    if-eq v3, v4, :cond_d

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_d

    :cond_0
    if-eq v3, v5, :cond_d

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_d

    :cond_1
    const/16 v4, 0xc0

    if-lt v3, v4, :cond_2

    const/16 v4, 0xd6

    if-le v3, v4, :cond_d

    :cond_2
    const/16 v4, 0xd8

    if-lt v3, v4, :cond_3

    const/16 v4, 0xf6

    if-le v3, v4, :cond_d

    :cond_3
    const/16 v4, 0xf8

    if-lt v3, v4, :cond_4

    const/16 v4, 0x2ff

    if-le v3, v4, :cond_d

    :cond_4
    const/16 v4, 0x370

    if-lt v3, v4, :cond_5

    const/16 v4, 0x37d

    if-le v3, v4, :cond_d

    :cond_5
    const/16 v4, 0x37f

    if-lt v3, v4, :cond_6

    const/16 v4, 0x1fff

    if-le v3, v4, :cond_d

    :cond_6
    const/16 v4, 0x200c

    if-lt v3, v4, :cond_7

    const/16 v4, 0x200d

    if-le v3, v4, :cond_d

    :cond_7
    const/16 v4, 0x2070

    if-lt v3, v4, :cond_8

    const/16 v4, 0x218f

    if-le v3, v4, :cond_d

    :cond_8
    const/16 v4, 0x2c00

    if-lt v3, v4, :cond_9

    const/16 v4, 0x2fef

    if-le v3, v4, :cond_d

    :cond_9
    const/16 v4, 0x3001

    if-lt v3, v4, :cond_a

    const v4, 0xd7ff

    if-le v3, v4, :cond_d

    :cond_a
    const v4, 0xf900

    if-lt v3, v4, :cond_b

    const v4, 0xfdcf

    if-le v3, v4, :cond_d

    :cond_b
    const v4, 0xfdf0

    if-lt v3, v4, :cond_c

    const v4, 0xfffd

    if-gt v3, v4, :cond_c

    goto :goto_1

    :cond_c
    move v4, v1

    goto :goto_2

    :cond_d
    :goto_1
    move v4, v6

    :goto_2
    const/16 v7, 0x2d

    if-eq v3, v7, :cond_12

    const/16 v8, 0x2e

    if-eq v3, v8, :cond_12

    const/16 v8, 0x30

    if-lt v3, v8, :cond_e

    const/16 v8, 0x39

    if-le v3, v8, :cond_12

    :cond_e
    const/16 v8, 0xb7

    if-eq v3, v8, :cond_12

    const/16 v8, 0x300

    if-lt v3, v8, :cond_f

    const/16 v8, 0x36f

    if-le v3, v8, :cond_12

    :cond_f
    const/16 v8, 0x203f

    if-lt v3, v8, :cond_10

    const/16 v8, 0x2040

    if-le v3, v8, :cond_12

    :cond_10
    if-eqz v4, :cond_11

    goto :goto_3

    :cond_11
    move v6, v1

    :cond_12
    :goto_3
    if-nez v2, :cond_13

    if-nez v4, :cond_14

    move v3, v5

    goto :goto_4

    :cond_13
    if-nez v6, :cond_14

    move v3, v7

    .line 294
    :cond_14
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 296
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidCharacterValue(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public convertToXml(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->convertToXml(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public convertToXml(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    .line 129
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->rootTag:Ljava/lang/String;

    const-string p2, ">"

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->rootTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKids()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->inspectKids(Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->rootTag:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->rootTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 142
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    .line 135
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Document doesn\'t contain StructTreeRoot."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected inspectAttributes(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 7

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getAttributes(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 205
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_0

    .line 206
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_0
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 211
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 212
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 213
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 214
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 220
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Unknown I/O exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected inspectKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V
    .locals 7

    const-string v0, "]]></alt>"

    const-string v1, ">"

    .line 166
    :try_start_0
    instance-of v2, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v2, :cond_1

    .line 167
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 168
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->fixTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->inspectAttributes(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 176
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getAlt()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v5, "<alt><![CDATA["

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[\\000]*"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->inspectKids(Ljava/util/List;)V

    .line 187
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v0, :cond_2

    .line 191
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parseTag(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const-string v0, " <flushedKid/> "

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 196
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Unknown I/O exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected inspectKids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 160
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->inspectKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected parseTag(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V
    .locals 5

    .line 226
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result v0

    .line 227
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 231
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parsedTags:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 232
    new-instance p1, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;-><init>(Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$1;)V

    .line 234
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V

    .line 235
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->processContent([BLcom/itextpdf/kernel/pdf/PdfResources;)V

    .line 238
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parsedTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool$MarkedContentEventListener;->getMcidContent()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parsedTags:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->parsedTags:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;->getReferencedObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 253
    :cond_2
    const-string p1, ""

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->out:Ljava/io/OutputStreamWriter;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Unknown I/O exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setRootTag(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->rootTag:Ljava/lang/String;

    return-object p0
.end method
