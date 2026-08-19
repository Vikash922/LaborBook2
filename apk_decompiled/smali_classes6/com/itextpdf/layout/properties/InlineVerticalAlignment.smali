.class public Lcom/itextpdf/layout/properties/InlineVerticalAlignment;
.super Ljava/lang/Object;
.source "InlineVerticalAlignment.java"


# instance fields
.field private type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->BASELINE:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    iput-object v0, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;F)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->FRACTION:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;->FIXED:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Inline vertical alignment \"{0}\" doesn\'t need a value"

    invoke-direct {p2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 66
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 69
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    .line 70
    iput p2, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->value:F

    return-void
.end method


# virtual methods
.method public getType()Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->value:F

    return v0
.end method

.method public setType(Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->type:Lcom/itextpdf/layout/properties/InlineVerticalAlignmentType;

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/itextpdf/layout/properties/InlineVerticalAlignment;->value:F

    return-void
.end method
