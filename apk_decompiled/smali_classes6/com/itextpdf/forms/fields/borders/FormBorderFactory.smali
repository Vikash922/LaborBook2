.class public final Lcom/itextpdf/forms/fields/borders/FormBorderFactory;
.super Ljava/lang/Object;
.source "FormBorderFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getBorder(Lcom/itextpdf/kernel/pdf/PdfDictionary;FLcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/borders/Border;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 74
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    new-instance v0, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto/16 :goto_2

    .line 82
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    new-instance v0, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto/16 :goto_2

    .line 84
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p3

    if-lez p3, :cond_3

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p3

    int-to-float p3, p3

    goto :goto_0

    :cond_3
    const/high16 p3, 0x40400000    # 3.0f

    :goto_0
    move v3, p3

    if-eqz p0, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 92
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p0

    int-to-float p0, p0

    move v4, p0

    goto :goto_1

    :cond_4
    move v4, v3

    .line 94
    :goto_1
    new-instance p0, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFF)V

    goto :goto_2

    .line 95
    :cond_5
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 96
    new-instance v0, Lcom/itextpdf/forms/fields/borders/InsetBorder;

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/forms/fields/borders/InsetBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto :goto_2

    .line 97
    :cond_6
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 98
    new-instance v0, Lcom/itextpdf/forms/fields/borders/BeveledBorder;

    invoke-direct {v0, p2, p1, p3}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/colors/Color;)V

    :cond_7
    :goto_2
    return-object v0
.end method
