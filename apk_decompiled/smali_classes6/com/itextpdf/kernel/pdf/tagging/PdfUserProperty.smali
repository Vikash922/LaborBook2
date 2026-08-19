.class public Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfUserProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    .line 82
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setValue(F)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    .line 76
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setValue(I)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    .line 70
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setValue(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    .line 88
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->setValue(Z)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBool()Ljava/lang/Boolean;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsFloat()Ljava/lang/Float;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    :goto_0
    return-object v0
.end method

.method public getValueAsText()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValueFormattedRepresentation()Ljava/lang/String;
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValueType()Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->UNKNOWN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 113
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->UNKNOWN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0

    .line 111
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->TEXT:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0

    .line 109
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->NUMBER:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0

    .line 107
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->BOOLEAN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0
.end method

.method public isHidden()Ljava/lang/Boolean;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHidden(Z)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setValue(F)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v3, p1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setValue(I)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setValue(Z)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setValueFormattedRepresentation(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method
