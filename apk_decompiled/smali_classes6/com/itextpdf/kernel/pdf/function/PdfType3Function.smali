.class public Lcom/itextpdf/kernel/pdf/function/PdfType3Function;
.super Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;
.source "PdfType3Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNCTION_FACTORY:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;


# instance fields
.field private bounds:[D

.field private encode:[D

.field private final functionFactory:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

.field private functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/function/IPdfFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->DEFAULT_FUNCTION_FACTORY:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->DEFAULT_FUNCTION_FACTORY:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 122
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functionFactory:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    .line 124
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Functions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 125
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->checkAndGetFunctions(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    .line 127
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getDomain()[D

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 131
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Bounds:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 132
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->checkAndGetBounds(Lcom/itextpdf/kernel/pdf/PdfArray;)[D

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    .line 134
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->checkAndGetEncode(Lcom/itextpdf/kernel/pdf/PdfArray;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->encode:[D

    return-void

    .line 128
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Invalid PDF Type 3 Function object, \"Domain\" array shall consist of 2 numbers."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([D[DLjava/util/List;[D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[D",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction<",
            "+",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;>;[D[D)V"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;I[D[D)V

    .line 109
    sget-object p1, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->DEFAULT_FUNCTION_FACTORY:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functionFactory:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    .line 110
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;

    .line 112
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Functions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 115
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Bounds:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p3, p4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 116
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p3, p5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method private static areThreeDoubleEqual(DDD)Z
    .locals 0

    .line 384
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private calculateSubdomain(D)I
    .locals 10

    .line 267
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 268
    aget-wide v3, v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v0

    aget-wide v5, v0, v2

    move-wide v7, p1

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->areThreeDoubleEqual(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-wide v4, v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v0

    aget-wide v6, v0, v3

    move-wide v8, p1

    invoke-static/range {v4 .. v9}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->areThreeDoubleEqual(DDD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    array-length p1, p1

    return p1

    .line 276
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 277
    aget-wide v3, v0, v2

    cmpg-double v0, p1, v3

    if-gez v0, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_3
    array-length p1, v0

    return p1
.end method

.method private checkAndGetBounds(Lcom/itextpdf/kernel/pdf/PdfArray;)[D
    .locals 9

    if-eqz p1, :cond_7

    .line 330
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_7

    .line 333
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    .line 336
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_5

    if-nez v1, :cond_0

    .line 337
    aget-wide v4, p1, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v6

    aget-wide v7, v6, v0

    cmpg-double v4, v4, v7

    if-gez v4, :cond_1

    goto :goto_1

    :cond_0
    aget-wide v4, p1, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v6

    aget-wide v7, v6, v0

    cmpg-double v4, v4, v7

    if-gtz v4, :cond_1

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    or-int/2addr v3, v4

    .line 338
    array-length v4, p1

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v4

    aget-wide v5, v4, v2

    aget-wide v7, p1, v1

    cmpg-double v4, v5, v7

    if-gez v4, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object v4

    aget-wide v5, v4, v2

    aget-wide v7, p1, v1

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_3

    :goto_3
    move v4, v2

    goto :goto_4

    :cond_3
    move v4, v0

    :goto_4
    or-int/2addr v3, v4

    if-eqz v1, :cond_4

    .line 339
    aget-wide v4, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, p1, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    move v4, v2

    goto :goto_5

    :cond_4
    move v4, v0

    :goto_5
    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-object p1

    .line 342
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, \"Bounds\" elements shall be in order of increasing value, and each value shall be within the domain defined by \"Domain\"."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, \"Bounds\" array should be exist and it size should corresponds to the size of \"Functions\" array."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAndGetEncode(Lcom/itextpdf/kernel/pdf/PdfArray;)[D
    .locals 2

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object p1

    return-object p1

    .line 349
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, \"Encode\" array should be exist and it size should be 2 times more than \"Functions\" array size."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAndGetFunctions(Lcom/itextpdf/kernel/pdf/PdfArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/function/IPdfFunction;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 298
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getRange()[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getOutputSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 309
    instance-of v3, v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v3, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 313
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functionFactory:Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;

    invoke-interface {v3, v2}, Lcom/itextpdf/kernel/pdf/function/IPdfFunctionFactory;->create(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    move-result-object v2

    if-nez v0, :cond_2

    .line 315
    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getOutputSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 317
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getOutputSize()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 320
    invoke-interface {v2}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getInputSize()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 324
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, all functions shall have 1 input value."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, the output dimensionality of all functions shall be the same, and compatible with the value of \"Range\"."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v1

    .line 299
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid PDF Type 3 Function object, \"Functions\" array should be exist and can\'t be empty."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSubdomainBorders(I)[D
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    array-length v1, v0

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object p1

    aget-wide v4, p1, v2

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    aget-wide v6, p1, v2

    new-array p1, v1, [D

    aput-wide v4, p1, v2

    aput-wide v6, p1, v3

    return-object p1

    .line 290
    :cond_1
    array-length v4, v0

    if-ne p1, v4, :cond_2

    .line 291
    array-length p1, v0

    sub-int/2addr p1, v3

    aget-wide v4, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getDomain()[D

    move-result-object p1

    aget-wide v6, p1, v3

    new-array p1, v1, [D

    aput-wide v4, p1, v2

    aput-wide v6, p1, v3

    return-object p1

    :cond_2
    add-int/lit8 v4, p1, -0x1

    .line 293
    aget-wide v4, v0, v4

    aget-wide v6, v0, p1

    new-array p1, v1, [D

    aput-wide v4, p1, v2

    aput-wide v6, p1, v3

    return-object p1
.end method

.method static synthetic lambda$static$0(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/function/IPdfFunction;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunctionFactory;->create(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    move-result-object p0

    return-object p0
.end method

.method private static mapValueFromActualRangeToExpected(DDDDD)D
    .locals 2

    sub-double/2addr p4, p2

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    return-wide p6

    :cond_0
    sub-double/2addr p8, p6

    sub-double/2addr p0, p2

    div-double/2addr p8, p4

    mul-double/2addr p8, p0

    add-double/2addr p6, p8

    return-wide p6
.end method


# virtual methods
.method public calculate([D)[D
    .locals 14

    if-eqz p1, :cond_0

    .line 247
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->clipInput([D)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 251
    aget-wide v2, p1, v0

    .line 252
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->calculateSubdomain(D)I

    move-result p1

    .line 253
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getSubdomainBorders(I)[D

    move-result-object v4

    .line 254
    aget-wide v5, v4, v0

    aget-wide v7, v4, v1

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->encode:[D

    mul-int/lit8 v9, p1, 0x2

    aget-wide v10, v4, v9

    add-int/2addr v9, v1

    aget-wide v12, v4, v9

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v10

    move-wide v10, v12

    invoke-static/range {v2 .. v11}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->mapValueFromActualRangeToExpected(DDDDD)D

    move-result-wide v2

    .line 257
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    new-array v1, v1, [D

    aput-wide v2, v1, v0

    invoke-interface {p1, v1}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->calculate([D)[D

    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->clipOutput([D)[D

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid input value for PDF Type 3 Function, value should be a single number."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkCompatibilityWithColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBounds()[D
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    return-object v0
.end method

.method public getEncode()[D
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toDoubleArray()[D

    move-result-object v0

    return-object v0
.end method

.method public getFunctions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/pdf/function/IPdfFunction;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    return-object v0
.end method

.method public getOutputSize()I
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getRange()[D

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->functions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getOutputSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getRange()[D

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBounds([D)V
    .locals 1

    .line 198
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->bounds:[D

    return-void
.end method

.method public setEncode([D)V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public setFunctions(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction<",
            "+",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;>;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 164
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;

    .line 165
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/function/AbstractPdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Functions:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
