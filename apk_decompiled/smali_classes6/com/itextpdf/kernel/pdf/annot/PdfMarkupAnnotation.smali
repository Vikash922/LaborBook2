.class public abstract Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
.source "PdfMarkupAnnotation.java"


# instance fields
.field protected inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

.field protected popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 67
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 67
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    return-void
.end method


# virtual methods
.method public getCreationDate()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getExternalData()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ExData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getInReplyTo()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getInReplyToObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-object v0
.end method

.method public getInReplyToObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IRT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPopupObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-nez v1, :cond_0

    .line 240
    const-class v0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 241
    const-string v1, "Popup entry in the markup annotations refers not to the annotation with Popup subtype."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    return-object v0
.end method

.method public getPopupObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getRichText()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->RC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public setCreationDate(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 163
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setExternalData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 348
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ExData:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setInReplyTo(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->inReplyTo:Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 201
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IRT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setIntent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 315
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setOpacity(Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 125
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setPopup(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 213
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->popup:Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 214
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->setParent(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    .line 215
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setReplyType(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 290
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setRichText(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 145
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setSubject(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 264
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method

.method public setText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .locals 1

    .line 101
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    return-object p1
.end method
