.class public Lcom/itextpdf/forms/fields/PdfTextFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfTextFormField.java"


# static fields
.field public static final FF_COMB:I

.field public static final FF_DO_NOT_SCROLL:I

.field public static final FF_DO_NOT_SPELL_CHECK:I

.field public static final FF_FILE_SELECT:I

.field public static final FF_RICH_TEXT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    .line 57
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    const/16 v0, 0x17

    .line 58
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    const/16 v0, 0x18

    .line 59
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    const/16 v0, 0x19

    .line 60
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    const/16 v0, 0x1a

    .line 61
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 82
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMaxLen()I
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MaxLen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    invoke-direct {v1, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getMaxLen()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isComb()Z
    .locals 1

    .line 169
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isFileSelect()Z
    .locals 1

    .line 110
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRichText()Z
    .locals 1

    .line 190
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isScroll()Z
    .locals 1

    .line 147
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSpellCheck()Z
    .locals 1

    .line 128
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setComb(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 181
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setFileSelect(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 120
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_FILE_SELECT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setMaxLen(I)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 2

    .line 229
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MaxLen:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 230
    sget p1, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_COMB:I

    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->getFieldFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfTextFormField;->regenerateField()Z

    :cond_0
    return-object p0
.end method

.method public setMultiline(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 91
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_MULTILINE:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setPassword(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 101
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_PASSWORD:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setRichText(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 200
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_RICH_TEXT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setScroll(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 158
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SCROLL:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method

.method public setSpellCheck(Z)Lcom/itextpdf/forms/fields/PdfTextFormField;
    .locals 1

    .line 137
    sget v0, Lcom/itextpdf/forms/fields/PdfTextFormField;->FF_DO_NOT_SPELL_CHECK:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfTextFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfTextFormField;

    return-object p1
.end method
