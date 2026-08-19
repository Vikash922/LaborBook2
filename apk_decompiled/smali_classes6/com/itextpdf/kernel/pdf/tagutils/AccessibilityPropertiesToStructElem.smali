.class final Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;
.super Ljava/lang/Object;
.source "AccessibilityPropertiesToStructElem.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNewAttributesToAttributesArray(ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            ")V"
        }
    .end annotation

    if-gez p0, :cond_0

    .line 123
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    :cond_0
    if-eqz p2, :cond_1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    add-int/lit8 v1, p0, 0x1

    .line 127
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 p0, p0, 0x2

    .line 128
    invoke-virtual {p3, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    add-int/lit8 v0, p0, 0x1

    .line 132
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    move p0, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static apply(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getActualText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnicodeBig"

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getActualText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setActualText(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getAlternateDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getAlternateDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setAlt(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getExpansion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getExpansion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setE(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setLang(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getAttributesList()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getAttributes(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v4, v0, v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;->combineAttributesList(Lcom/itextpdf/kernel/pdf/PdfObject;ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setAttributes(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getPhoneme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getPhoneme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setPhoneme(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getPhoneticAlphabet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 84
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getPhoneticAlphabet()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setPhoneticAlphabet(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRefsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 90
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addRef(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method static combineAttributesList(Lcom/itextpdf/kernel/pdf/PdfObject;ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "I",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfObject;"
        }
    .end annotation

    .line 97
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 99
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 100
    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;->addNewAttributesToAttributesArray(ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v0, :cond_1

    .line 103
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 104
    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;->addNewAttributesToAttributesArray(ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-gtz p1, :cond_2

    const/4 p0, 0x0

    .line 111
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructureAttributes;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 113
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 114
    move-object p0, v0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityPropertiesToStructElem;->addNewAttributesToAttributesArray(ILjava/util/List;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :goto_0
    return-object v0
.end method
