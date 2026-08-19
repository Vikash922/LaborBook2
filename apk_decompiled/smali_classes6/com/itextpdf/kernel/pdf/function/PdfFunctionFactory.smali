.class public final Lcom/itextpdf/kernel/pdf/function/PdfFunctionFactory;
.super Ljava/lang/Object;
.source "PdfFunctionFactory.java"


# static fields
.field public static final FUNCTION_TYPE_0:I = 0x0

.field public static final FUNCTION_TYPE_2:I = 0x2

.field public static final FUNCTION_TYPE_3:I = 0x3

.field public static final FUNCTION_TYPE_4:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/function/IPdfFunction;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid object type, a function must be either a Dictionary or a Stream"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 77
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eqz v1, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 91
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfType4Function;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfType4Function;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 89
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid object type, a function type 4 requires a stream object"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 95
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 93
    const-string v1, "Invalid function type {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType3Function;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object p0

    .line 84
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/PdfType2Function;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object p0

    .line 79
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, v2, :cond_7

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfType0Function;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 80
    :cond_7
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid object type, a function type 0 requires a stream object"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
