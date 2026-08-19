.class public Lcom/itextpdf/forms/PdfPageFormCopier;
.super Ljava/lang/Object;
.source "PdfPageFormCopier.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;


# static fields
.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private formFrom:Lcom/itextpdf/forms/PdfAcroForm;

.field private formTo:Lcom/itextpdf/forms/PdfAcroForm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-class v0, Lcom/itextpdf/forms/PdfPageFormCopier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 317
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 320
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;)V"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 337
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 338
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 339
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 341
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    .line 347
    iget-object p2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 351
    :cond_3
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 353
    :cond_4
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, p3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 354
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private copyField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    iget-object p2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 144
    :cond_1
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->copyParentFormField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/fields/PdfFormField;)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 151
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 152
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 156
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 157
    invoke-direct {p0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p2

    .line 160
    :cond_5
    iget-object p3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p3, p2, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 161
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfFormField;->updateDefaultAppearance()V

    :cond_6
    :goto_1
    return-void
.end method

.method private copyParentFormField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/fields/PdfFormField;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;",
            "Lcom/itextpdf/forms/fields/PdfFormField;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-virtual {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object p3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, p2, p3}, Lcom/itextpdf/forms/PdfPageFormCopier;->createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p2

    .line 172
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p3

    .line 173
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p4, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 174
    iget-object p4, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p4, p2, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 175
    invoke-virtual {p2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    .line 178
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfPageFormCopier;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfFormField;

    if-eqz p1, :cond_2

    .line 186
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 190
    iget-object p4, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p4}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p4

    invoke-direct {p0, p4, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 191
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p3, p1, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    .line 196
    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    invoke-virtual {p4}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->contains(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 199
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 200
    iget-object p2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    .line 201
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, p2, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->addChildToExistingParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)V

    goto :goto_0

    .line 206
    :cond_4
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfPageFormCopier;->mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p2

    .line 209
    iget-object p3, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p3, p2, p1}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    :goto_0
    return-void
.end method

.method private createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3

    .line 290
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 291
    invoke-static {p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->createParentFieldCopy(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 295
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-nez p2, :cond_0

    .line 297
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v0, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 365
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/forms/PdfPageFormCopier;->getAllFieldNames(Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 1

    .line 281
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {v0, p1}, Lcom/itextpdf/forms/PdfPageFormCopier;->getParentField(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p0

    return-object p0

    .line 286
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p0

    return-object p0
.end method

.method private makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->makeFormField(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    sget-object v1, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 126
    const-string v2, "Cannot create form field from a given PDF object: {0}"

    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private mergeFieldsWithTheSameName(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;
    .locals 6

    .line 216
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_1
    sget-object v2, Lcom/itextpdf/forms/PdfPageFormCopier;->logger:Lorg/slf4j/Logger;

    const-string v3, "The document already has field {0}. Annotations of the fields with this name will be added to the existing one as children. If you want to have separate fields, please, rename them manually before copying."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->isFlushed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p1

    .line 238
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 239
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 241
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFields()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 243
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    invoke-virtual {v1, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    return-object v1

    .line 249
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 250
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 251
    iget-object v2, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->createEmptyField(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    .line 252
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 253
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 254
    invoke-virtual {v4, v5, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 255
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getParent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 257
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 258
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 259
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 260
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 261
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 262
    invoke-virtual {v2}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 269
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 272
    :cond_7
    invoke-virtual {v2, v1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;->addKid(Lcom/itextpdf/forms/fields/PdfFormField;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 273
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 275
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/itextpdf/forms/fields/PdfFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :cond_8
    return-object v2
.end method


# virtual methods
.method public copy(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentFrom:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 88
    invoke-static {p1, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 91
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v0, 0x1

    .line 92
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    if-nez p1, :cond_2

    return-void

    .line 100
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->documentTo:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 107
    iget-object p1, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formFrom:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/forms/PdfPageFormCopier;->formTo:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 116
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0, p2, p1, v0, v2}, Lcom/itextpdf/forms/PdfPageFormCopier;->copyField(Lcom/itextpdf/kernel/pdf/PdfPage;Ljava/util/Map;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    goto :goto_0

    :cond_5
    return-void
.end method
