.class public abstract Lcom/itextpdf/kernel/pdf/PdfObject;
.super Ljava/lang/Object;
.source "PdfObject.java"


# static fields
.field public static final ARRAY:B = 0x1t

.field public static final BOOLEAN:B = 0x2t

.field public static final DICTIONARY:B = 0x3t

.field protected static final FLUSHED:S = 0x1s

.field protected static final FORBID_RELEASE:S = 0x80s

.field protected static final FREE:S = 0x2s

.field public static final INDIRECT_REFERENCE:B = 0x5t

.field public static final LITERAL:B = 0x4t

.field protected static final MODIFIED:S = 0x8s

.field protected static final MUST_BE_FLUSHED:S = 0x20s

.field protected static final MUST_BE_INDIRECT:S = 0x40s

.field public static final NAME:B = 0x6t

.field public static final NULL:B = 0x7t

.field public static final NUMBER:B = 0x8t

.field protected static final ORIGINAL_OBJECT_STREAM:S = 0x10s

.field protected static final READING:S = 0x4s

.field protected static final READ_ONLY:S = 0x100s

.field public static final STREAM:B = 0x9t

.field public static final STRING:B = 0xat

.field protected static final UNENCRYPTED:S = 0x200s


# instance fields
.field protected indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private state:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-void
.end method

.method static equalContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 620
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 622
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 623
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    :cond_1
    if-eqz p0, :cond_2

    .line 625
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected checkState(S)Z
    .locals 1

    .line 568
    iget-short v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->state:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 591
    iget-short v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->state:S

    not-int p1, p1

    int-to-short p1, p1

    and-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->state:S

    return-object p0
.end method

.method public clone()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 291
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->clone(Lcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public clone(Lcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3

    .line 303
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v2, 0x40

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 602
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    return-void
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 0

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot copy flushed object."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    const/4 v0, 0x1

    .line 322
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    const/4 v0, 0x1

    .line 358
    invoke-virtual {p0, p1, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 341
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    if-eqz p1, :cond_3

    .line 383
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->isOpenedWithFullPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/BadPasswordException;

    const-string p2, "PdfReader is not opened with owner password"

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot copy indirect object from the document that is being written."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfObject;->processCopying(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 381
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Document for copyTo cannot be null."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 1

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush(Z)V

    return-void
.end method

.method public final flush(Z)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isModified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const-class p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 183
    const-string v0, "PdfObject flushing is not performed: PdfDocument is opened in append mode and the object is not marked as modified ( see PdfObject#setModified() )."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 187
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 191
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot flush object."

    invoke-direct {v0, v1, p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public abstract getType()B
.end method

.method public isArray()Z
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBoolean()Z
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDictionary()Z
    .locals 2

    .line 513
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlushed()Z
    .locals 2

    .line 268
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIndirect()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-nez v0, :cond_1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isIndirectReference()Z
    .locals 2

    .line 534
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModified()Z
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 279
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isName()Z
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReleaseForbidden()Z
    .locals 1

    const/16 v0, 0x80

    .line 427
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    return v0
.end method

.method public isStream()Z
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    if-eqz p1, :cond_3

    .line 231
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->createNextIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 240
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 242
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 243
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 244
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_0
    const/16 p1, 0x80

    .line 246
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/16 p1, 0x40

    .line 247
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0

    .line 235
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "There is no associate PdfWriter for making indirects."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method protected abstract newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
.end method

.method processCopying(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 648
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->processCopying(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method processCopying(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    if-eqz p1, :cond_1

    .line 675
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1

    .line 677
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot copy to document opened in reading mode."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 684
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p0

    .line 687
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    return-object p1

    .line 690
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->clone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 434
    const-string v1, "ForbidRelease flag is set and release is called. Releasing will not be performed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 439
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v0, 0x100

    .line 440
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    :goto_0
    return-void
.end method

.method protected setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object p0
.end method

.method public setModified()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->indirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 412
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/16 v0, 0x80

    .line 413
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-object p0
.end method

.method protected setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 579
    iget-short v0, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->state:S

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/itextpdf/kernel/pdf/PdfObject;->state:S

    return-object p0
.end method
