.class public Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFileSpec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 406
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method private static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 3

    .line 364
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 365
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p5, :cond_0

    .line 367
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 369
    :cond_0
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Unspecified:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_0
    if-eqz p4, :cond_1

    .line 373
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p5, p4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 375
    :cond_1
    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ApplicationOctetStream:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_1
    if-eqz p2, :cond_2

    .line 379
    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Desc:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p5, p2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 381
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Filespec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 382
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p4, p3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 383
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string p5, "UnicodeBig"

    invoke-direct {p4, p3, p5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 385
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 386
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 387
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 388
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p3, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 389
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->markStreamAsEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 391
    new-instance p1, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 6

    .line 319
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;)V

    .line 320
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    if-eqz p5, :cond_0

    .line 322
    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 324
    :cond_0
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 325
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDate;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1, p5, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 327
    :cond_1
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p5, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 328
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 346
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    .line 300
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 284
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/io/InputStream;)V

    .line 240
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    if-eqz p5, :cond_0

    .line 242
    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 244
    :cond_0
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 245
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDate;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1, p5, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 247
    :cond_1
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p5, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 267
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 187
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    .line 202
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 170
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 218
    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;[BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 7

    .line 141
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 142
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    if-eqz p5, :cond_0

    .line 144
    invoke-virtual {v0, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 146
    :cond_0
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 147
    sget-object p5, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>()V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDate;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, p5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 150
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {p5, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p1, p5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 152
    :cond_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Params:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    .line 153
    invoke-static/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createEmbeddedFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createExternalFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->createExternalFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p0

    return-object p0
.end method

.method public static createExternalFileSpec(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 4

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 103
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Filespec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 105
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p2, :cond_0

    .line 107
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 109
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Unspecified:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 111
    :goto_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    return-object p0
.end method

.method public static wrapFileSpecObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;-><init>(Lcom/itextpdf/kernel/pdf/PdfString;)V

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/pdf/filespec/PdfDictionaryFS;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfDictionaryFS;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFileIdentifier()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isVolatile()Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Volatile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 451
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public setCollectionItem(Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    .line 426
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p1

    return-object p1
.end method

.method public setFileIdentifier(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    .line 410
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p1

    return-object p1
.end method

.method public setThumbnailImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    .line 436
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p1

    return-object p1
.end method

.method public setVolatile(Lcom/itextpdf/kernel/pdf/PdfBoolean;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;
    .locals 1

    .line 418
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Volatile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object p1

    return-object p1
.end method
