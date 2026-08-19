.class public Lcom/itextpdf/forms/xfdf/AnnotObject;
.super Ljava/lang/Object;
.source "AnnotObject.java"


# instance fields
.field private action:Lcom/itextpdf/forms/xfdf/ActionObject;

.field private appearance:Ljava/lang/String;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation
.end field

.field private borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

.field private contents:Lcom/itextpdf/kernel/pdf/PdfString;

.field private contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

.field private defaultAppearance:Ljava/lang/String;

.field private defaultStyle:Ljava/lang/String;

.field private destination:Lcom/itextpdf/forms/xfdf/DestObject;

.field private hasPopup:Z

.field private name:Ljava/lang/String;

.field private popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

.field private ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private vertices:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAttribute(Ljava/lang/String;F)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 364
    invoke-static {p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectToString(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/String;

    move-result-object p2

    .line 365
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 377
    :cond_0
    new-instance p2, Lcom/itextpdf/forms/exceptions/AttributeNotFoundException;

    invoke-direct {p2, p1}, Lcom/itextpdf/forms/exceptions/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 382
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 383
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-object p3, p2

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "yes"

    goto :goto_0

    :cond_2
    const-string p2, "no"

    goto :goto_0

    .line 384
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p3

    const/4 v0, 0x6

    if-ne p3, v0, :cond_4

    .line 385
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object p3, p2

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 386
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_5

    .line 387
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object p3, p2

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 388
    :cond_5
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_6

    .line 389
    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfString;

    move-object p3, p2

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    .line 392
    :goto_0
    iget-object p3, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAttribute(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 355
    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addFdfAttributes(I)V
    .locals 2

    .line 403
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    return-void
.end method

.method public getAction()Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->action:Lcom/itextpdf/forms/xfdf/ActionObject;

    return-object v0
.end method

.method public getAppearance()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->appearance:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 210
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 224
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getBorderStyleAlt()Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    return-object v0
.end method

.method public getContents()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contents:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getContentsRichText()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getDefaultAppearance()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultAppearance:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultStyle()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/itextpdf/forms/xfdf/DestObject;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopup()Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

    return-object v0
.end method

.method public getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getVertices()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->vertices:Ljava/lang/String;

    return-object v0
.end method

.method public isHasPopup()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->hasPopup:Z

    return v0
.end method

.method public setAction(Lcom/itextpdf/forms/xfdf/ActionObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->action:Lcom/itextpdf/forms/xfdf/ActionObject;

    return-object p0
.end method

.method public setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->appearance:Ljava/lang/String;

    return-object p0
.end method

.method public setBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    return-object p0
.end method

.method public setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contents:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object p0
.end method

.method public setContentsRichText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object p0
.end method

.method public setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultAppearance:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultStyle(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultStyle:Ljava/lang/String;

    return-object p0
.end method

.method public setDestination(Lcom/itextpdf/forms/xfdf/DestObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    return-object p0
.end method

.method public setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->hasPopup:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

    return-object p0
.end method

.method public setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object p0
.end method

.method public setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->vertices:Ljava/lang/String;

    return-object p0
.end method
