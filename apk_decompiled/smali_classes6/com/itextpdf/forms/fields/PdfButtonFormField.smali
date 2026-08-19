.class public Lcom/itextpdf/forms/fields/PdfButtonFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfButtonFormField.java"


# static fields
.field public static final FF_NO_TOGGLE_TO_OFF:I

.field public static final FF_PUSH_BUTTON:I

.field public static final FF_RADIO:I

.field public static final FF_RADIOS_IN_UNISON:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 66
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_NO_TOGGLE_TO_OFF:I

    const/16 v0, 0x10

    .line 67
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    const/16 v0, 0x11

    .line 68
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    const/16 v0, 0x1a

    .line 69
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIOS_IN_UNISON:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 90
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public isPushButton()Z
    .locals 1

    .line 137
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRadio()Z
    .locals 1

    .line 99
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isRadiosInUnison()Z
    .locals 1

    .line 157
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIOS_IN_UNISON:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isToggleOff()Z
    .locals 1

    .line 119
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_NO_TOGGLE_TO_OFF:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setImage(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/commons/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    return-object p1
.end method

.method public setImageAsForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->form:Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->regenerateField()Z

    return-object p0
.end method

.method public setPushButton(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 146
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_PUSH_BUTTON:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    return-object p1
.end method

.method public setRadio(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 109
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIO:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    return-object p1
.end method

.method public setRadiosInUnison(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 169
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_RADIOS_IN_UNISON:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    return-object p1
.end method

.method public setToggleOff(Z)Lcom/itextpdf/forms/fields/PdfButtonFormField;
    .locals 1

    .line 129
    sget v0, Lcom/itextpdf/forms/fields/PdfButtonFormField;->FF_NO_TOGGLE_TO_OFF:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfButtonFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfButtonFormField;

    return-object p1
.end method
