.class public Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
.super Lcom/itextpdf/kernel/pdf/PdfObject;
.source "PdfIndirectReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LENGTH_OF_INDIRECTS_CHAIN:I = 0x1f


# instance fields
.field protected genNr:I

.field protected final objNr:I

.field protected objectStreamNumber:I

.field protected offsetOrIndex:J

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    .line 91
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    .line 93
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    .line 98
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 99
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    .line 100
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    .line 101
    iput-wide p4, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    return-void
.end method

.method private comparePdfDocumentLinks(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-nez v0, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x1

    if-nez v1, :cond_2

    return v4

    .line 355
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v0

    .line 356
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v5

    cmp-long p1, v0, v5

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-lez p1, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I
    .locals 4

    .line 203
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v1, :cond_2

    .line 204
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->comparePdfDocumentLinks(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I

    move-result p1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->compareTo(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)I

    move-result p1

    return p1
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    return-void
.end method

.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 180
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 181
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v3, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-ne v2, v3, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v2

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v1

    .line 188
    :cond_4
    :goto_1
    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    iget v3, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    iget p1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    if-ne v2, p1, :cond_5

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    :cond_6
    :goto_3
    return v1
.end method

.method fixOffset(J)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    :cond_0
    return-void
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getGenNumber()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    return v0
.end method

.method public getIndex()I
    .locals 2

    .line 169
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getObjNumber()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    return v0
.end method

.method public getObjStreamNumber()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 160
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method protected getReader()Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move v1, p1

    :goto_0
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_2

    .line 136
    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v2, :cond_2

    .line 137
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getType()B
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 193
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objNr:I

    mul-int/lit8 v0, v0, 0x1f

    .line 194
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    add-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isFree()Z
    .locals 1

    const/4 v0, 0x2

    .line 246
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    return v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 306
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    return-object v0
.end method

.method public setFree()V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    return-void
.end method

.method setIndex(J)V
    .locals 0

    .line 333
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    return-void
.end method

.method setObjStreamNumber(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    return-void
.end method

.method setOffset(J)V
    .locals 0

    .line 337
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->offsetOrIndex:J

    const/4 p1, 0x0

    .line 338
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->objectStreamNumber:I

    return-void
.end method

.method protected setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method protected setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 252
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "Free; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x8

    .line 255
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const-string v1, "Modified; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x20

    .line 258
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const-string v1, "MustBeFlushed; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x4

    .line 261
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    const-string v1, "Reading; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    const-string v2, "Flushed; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v2, 0x10

    .line 267
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    const-string v2, "OriginalObjectStream; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v2, 0x80

    .line 270
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 271
    const-string v2, "ForbidRelease; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v2, 0x100

    .line 273
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    const-string v2, "ReadOnly; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 276
    const-string v1, "{0} {1} R{2}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
