.class public Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;
.super Ljava/lang/Object;
.source "XfdfObjectFactory.java"


# static fields
.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V
    .locals 3

    if-eqz p2, :cond_12

    .line 328
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "creationdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_b
    const-string v1, "statemodel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_c
    const-string v1, "replyType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_d
    const-string v1, "fringe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_e
    const-string v1, "opacity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_f
    const-string v1, "inreplyto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_10
    const-string v1, "coords"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_11
    const-string v1, "subject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 355
    sget-object p1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string p2, "Xfdf unsupported attribute type"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :pswitch_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    goto :goto_1

    .line 353
    :pswitch_1
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    :cond_12
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_11
        -0x50bfdbe2 -> :sswitch_10
        -0x4bf021e0 -> :sswitch_f
        -0x4b8807f5 -> :sswitch_e
        -0x4b79d471 -> :sswitch_d
        -0x19d96ebc -> :sswitch_c
        -0xccd96c8 -> :sswitch_b
        0x2eefae -> :sswitch_a
        0x313c79 -> :sswitch_9
        0x337a8b -> :sswitch_8
        0x34264a -> :sswitch_7
        0x34628f -> :sswitch_6
        0x3559e4 -> :sswitch_5
        0x5a72f63 -> :sswitch_4
        0x5cfee87 -> :sswitch_3
        0x68ac491 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x5e8fd70d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V
    .locals 5

    .line 476
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    invoke-static {v2, p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->updateXfdfAnnotation(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 483
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    :cond_2
    return-void
.end method

.method private static addAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 7

    .line 488
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;-><init>()V

    .line 489
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_2

    .line 491
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 492
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v3

    .line 493
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 494
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne v5, v6, :cond_0

    .line 495
    invoke-static {v4, v0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addPopup(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V

    goto :goto_1

    .line 497
    :cond_0
    invoke-static {v4, v0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAnnots(Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    return-void
.end method

.method private static addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1

    .line 534
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 535
    const-string p1, "dashes"

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 536
    const-string p1, "style"

    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private static addCommonAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 3

    .line 509
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 511
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getColorObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getColorObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 514
    :cond_0
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 515
    invoke-static {p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFlagsToString(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    const-string v2, "flags"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 520
    :cond_1
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 522
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getRectangle()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    const-string v1, "rect"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 523
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getTitle()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private static addMarkupAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;)V
    .locals 2

    .line 527
    const-string v0, "creationdate"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getCreationDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 528
    const-string v0, "opacity"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getOpacity()Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 529
    const-string v0, "subject"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getSubject()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private static addPopup(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V
    .locals 6

    .line 450
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getParentObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getParent()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 455
    invoke-virtual {v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 457
    invoke-virtual {v3, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 458
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    .line 462
    new-instance v1, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 463
    invoke-virtual {v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 464
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 465
    invoke-virtual {v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 466
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 467
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    goto :goto_1

    .line 470
    :cond_2
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    :cond_3
    :goto_1
    return-void
.end method

.method private static convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 1

    .line 903
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 904
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 905
    const-string p1, "popup"

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 906
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 908
    const-string p1, "open"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getOpen()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static createCircleAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 5

    .line 576
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    .line 578
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 580
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 581
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 580
    invoke-static {p1, v2, v3, v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 584
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 591
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v1

    if-eqz v1, :cond_2

    .line 592
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interior-color"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 595
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 596
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeToString([F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fringe"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 599
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 600
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 601
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_4
    return-void
.end method

.method private static createDestElement(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 7

    .line 771
    new-instance v0, Lcom/itextpdf/forms/xfdf/DestObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/DestObject;-><init>()V

    const/4 v1, 0x1

    .line 772
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 773
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 774
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 775
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v2

    .line 776
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v2

    .line 777
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setZoom(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 778
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setXyz(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto/16 :goto_0

    .line 779
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 781
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFit(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto/16 :goto_0

    .line 782
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 784
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitB(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto/16 :goto_0

    .line 785
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 786
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 787
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 788
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;->setBottom(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 789
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;->setRight(F)Lcom/itextpdf/forms/xfdf/FitObject;

    const/4 v2, 0x5

    .line 790
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 791
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitR(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto/16 :goto_0

    .line 792
    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 793
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 794
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 795
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitH(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto :goto_0

    .line 796
    :cond_4
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 797
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 798
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 799
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitBH(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto :goto_0

    .line 800
    :cond_5
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitBV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 802
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 803
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitBV(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto :goto_0

    .line 804
    :cond_6
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 805
    new-instance v1, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 806
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 807
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitV(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 809
    :cond_7
    :goto_0
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDestination(Lcom/itextpdf/forms/xfdf/DestObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    return-void
.end method

.method private static createFreeTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4

    .line 657
    check-cast p0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    .line 659
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 662
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 661
    invoke-static {p1, v1, v2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 667
    :cond_0
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getJustification()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "justification"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 668
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 677
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 679
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultStyleString()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 680
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultStyleString()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDefaultStyle(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_4
    return-void
.end method

.method private static createLineAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 6

    .line 685
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    .line 687
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLine()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 690
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertLineStartToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 691
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 692
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertLineEndToString([F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "end"

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 694
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 695
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 697
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "head"

    invoke-direct {v1, v5, v4}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 699
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 700
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 701
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tail"

    invoke-direct {v1, v5, v4}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 705
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 706
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString(Lcom/itextpdf/kernel/colors/Color;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "interior-color"

    invoke-direct {v1, v5, v4}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 708
    :cond_3
    const-string v1, "leaderExtended"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineExtension()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 709
    const-string v1, "leaderLength"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineLength()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 710
    const-string v1, "caption"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getContentsAsCaption()Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Z)V

    .line 711
    const-string v1, "intent"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 712
    const-string v1, "leader-offset"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineOffset()F

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 713
    const-string v1, "caption-style"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionPosition()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 714
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const-string v4, "caption-offset-v"

    const-string v5, "caption-offset-h"

    if-eqz v1, :cond_4

    .line 715
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 716
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 718
    :cond_4
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    const-string v2, "0"

    invoke-direct {v1, v5, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 719
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v1, v4, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 722
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 724
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 725
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 724
    invoke-static {p1, v2, v3, v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 729
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 730
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_6
    return-void
.end method

.method private static createLinkAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4

    .line 735
    check-cast p0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 737
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 745
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 746
    new-instance v2, Lcom/itextpdf/forms/xfdf/ActionObject;

    invoke-direct {v2, v1}, Lcom/itextpdf/forms/xfdf/ActionObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 748
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/forms/xfdf/ActionObject;->setUri(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 750
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IsMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 751
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IsMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/forms/xfdf/ActionObject;->setMap(Z)Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 755
    :cond_1
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAction(Lcom/itextpdf/forms/xfdf/ActionObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v0, :cond_3

    .line 759
    invoke-static {v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createDestElement(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 762
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getBorder()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 764
    new-instance v0, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    .line 765
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;-><init>(FFF)V

    .line 766
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_4
    return-void
.end method

.method private static createPolyGeomAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 5

    .line 813
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    .line 815
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 817
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 818
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 817
    invoke-static {p1, v2, v3, v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 821
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 824
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 827
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 828
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString(Lcom/itextpdf/kernel/colors/Color;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interior-color"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 830
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 831
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 835
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 836
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 837
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 838
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "head"

    invoke-direct {v1, v4, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 840
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 841
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 842
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tail"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 848
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getVertices()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertVerticesToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 850
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 851
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 852
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_6
    return-void
.end method

.method private static createSquareAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 5

    .line 606
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    .line 608
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 611
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 610
    invoke-static {p1, v2, v3, v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 614
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 620
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v1

    if-eqz v1, :cond_2

    .line 621
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interior-color"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 623
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 624
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeToString([F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fringe"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 628
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 629
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_4
    return-void
.end method

.method private static createStampAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 3

    .line 634
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    .line 636
    const-string v1, "icon"

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getIconName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 639
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 642
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 646
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 647
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    goto :goto_0

    .line 648
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 649
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    goto :goto_0

    .line 650
    :cond_3
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 651
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_4
    :goto_0
    return-void
.end method

.method private static createTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 3

    .line 555
    check-cast p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    .line 557
    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getIconName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 558
    const-string v0, "state"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getState()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 559
    const-string v0, "statemodel"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getStateModel()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 561
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getInReplyTo()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inreplyto"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 564
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "replyType"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_2
    return-void
.end method

.method private static createTextMarkupAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 3

    .line 540
    check-cast p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    .line 542
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 543
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getQuadPoints()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsToCoordsString([F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "coords"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_1
    return-void
.end method

.method private static createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 2

    .line 857
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 858
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 859
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 861
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    if-eqz v1, :cond_0

    .line 862
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createTextMarkupAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 864
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    if-eqz v1, :cond_1

    .line 865
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 867
    :cond_1
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-eqz v1, :cond_2

    .line 868
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-static {v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v0

    .line 870
    :cond_2
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    if-eqz v1, :cond_3

    .line 871
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createCircleAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 873
    :cond_3
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    if-eqz v1, :cond_4

    .line 874
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createSquareAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 876
    :cond_4
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    if-eqz v1, :cond_5

    .line 877
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createStampAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 879
    :cond_5
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    if-eqz v1, :cond_6

    .line 880
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createFreeTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 882
    :cond_6
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    if-eqz v1, :cond_7

    .line 883
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createLineAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 885
    :cond_7
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    if-eqz v1, :cond_8

    .line 886
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createPolyGeomAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 888
    :cond_8
    instance-of p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-eqz p1, :cond_9

    .line 889
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createLinkAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 892
    :cond_9
    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isSupportedAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 893
    invoke-static {v0, p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addCommonAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 894
    instance-of p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    if-eqz p1, :cond_a

    .line 895
    check-cast p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    invoke-static {v0, p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addMarkupAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;)V

    :cond_a
    return-object v0
.end method

.method private static isAnnotSupported(Ljava/lang/String;)Z
    .locals 1

    .line 222
    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "highlight"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "underline"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "strikeout"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "squiggly"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "circle"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "square"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "polyline"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "polygon"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "line"

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAnnotationSubtype(Ljava/lang/String;)Z
    .locals 1

    .line 362
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "highlight"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "underline"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "strikeout"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "squiggly"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "line"

    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "circle"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "square"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "caret"

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "polygon"

    .line 371
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "polyline"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "stamp"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ink"

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "freetext"

    .line 375
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fileattachment"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sound"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "link"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "redact"

    .line 379
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "projection"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isSupportedAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z
    .locals 1

    .line 913
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private readAnnotsList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V
    .locals 4

    .line 235
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 237
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 240
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isAnnotationSubtype(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isAnnotSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitAnnotationNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readFieldList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 4

    .line 385
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 387
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 388
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 389
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "field"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    new-instance v2, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v2}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 391
    invoke-direct {p0, v2, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readXfdfRootAttributes(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 440
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 443
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 444
    new-instance v4, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static updateXfdfAnnotation(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)V
    .locals 0

    return-void
.end method

.method private visitAnnotationInnerNodes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V
    .locals 4

    .line 261
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 264
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 266
    const-string v2, "contents"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitContentsSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 269
    :cond_0
    const-string v2, "contents-richtext"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitContentsRichTextSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 272
    :cond_1
    const-string v2, "popup"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitPopupSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 275
    :cond_2
    const-string v2, "vertices"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitVerticesSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private visitAnnotationNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V
    .locals 4

    .line 248
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 249
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 250
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 252
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 253
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitAnnotationInnerNodes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    .line 256
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    :cond_1
    return-void
.end method

.method private visitChildNodes(Lorg/w3c/dom/NodeList;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 216
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitContentsRichTextSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4

    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 308
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 310
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContentsRichText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitContentsSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4

    .line 295
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 296
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 297
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 299
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 2

    .line 194
    const-string v0, "fields"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/itextpdf/forms/xfdf/FieldsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/FieldsObject;-><init>()V

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readFieldList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 197
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setFields(Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 199
    :cond_0
    const-string v0, "f"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitFNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 202
    :cond_1
    const-string v0, "ids"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitIdsNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 205
    :cond_2
    const-string v0, "annots"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;-><init>()V

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readAnnotsList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    .line 208
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAnnots(Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    :cond_3
    return-void
.end method

.method private visitFNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 1

    .line 166
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v0, "href"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Lcom/itextpdf/forms/xfdf/FObject;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/forms/xfdf/FObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setF(Lcom/itextpdf/forms/xfdf/FObject;)V

    goto :goto_0

    .line 171
    :cond_0
    sget-object p1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string p2, "Empty f element, no href attribute found."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private visitFieldElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldObject;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 3

    .line 397
    const-string v0, "value"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 400
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/forms/xfdf/FieldObject;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    sget-object p1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string p2, "Field has no value."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v0, "field"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    new-instance v0, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 408
    invoke-virtual {v0, p2}, Lcom/itextpdf/forms/xfdf/FieldObject;->setParent(Lcom/itextpdf/forms/xfdf/FieldObject;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    .line 410
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 411
    invoke-direct {p0, v0, p1, p3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 413
    :cond_2
    invoke-virtual {p3, v0}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    :cond_3
    return-void
.end method

.method private visitIdsNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 3

    .line 177
    new-instance v0, Lcom/itextpdf/forms/xfdf/IdsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/IdsObject;-><init>()V

    .line 178
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 179
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "original"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/IdsObject;->setOriginal(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 183
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v1, "modified"

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/IdsObject;->setModified(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 187
    :cond_1
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setIds(Lcom/itextpdf/forms/xfdf/IdsObject;)V

    goto :goto_0

    .line 189
    :cond_2
    sget-object p1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string p2, "Empty ids element, original and/or modified id attributes not found."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 4

    .line 418
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 420
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    sget-object v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v2, "Field has no name attribute."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 426
    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 428
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 429
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 431
    invoke-direct {p0, v0, p1, p3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitFieldElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldObject;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    :cond_3
    invoke-virtual {p3, p1}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    return-void
.end method

.method private visitPopupSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 3

    .line 285
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 286
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 v1, 0x0

    .line 287
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 288
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    return-void
.end method

.method private visitVerticesSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4

    .line 317
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 318
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 319
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 321
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createXfdfObject(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/XfdfObject;
    .locals 10

    const/4 v0, 0x0

    .line 96
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    .line 98
    new-instance v2, Lcom/itextpdf/forms/xfdf/XfdfObject;

    invoke-direct {v2}, Lcom/itextpdf/forms/xfdf/XfdfObject;-><init>()V

    .line 99
    new-instance v3, Lcom/itextpdf/forms/xfdf/FieldsObject;

    invoke-direct {v3}, Lcom/itextpdf/forms/xfdf/FieldsObject;-><init>()V

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "."

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v5}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->getValueAsString()Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v9, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v9, v6, v5, v0}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 113
    new-instance v5, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v5}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 114
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9, v5}, Lcom/itextpdf/forms/xfdf/FieldObject;->setParent(Lcom/itextpdf/forms/xfdf/FieldObject;)V

    .line 117
    :cond_1
    invoke-virtual {v3, v9}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setFields(Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertIdToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getModifiedDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertIdToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v3, Lcom/itextpdf/forms/xfdf/IdsObject;

    invoke-direct {v3}, Lcom/itextpdf/forms/xfdf/IdsObject;-><init>()V

    .line 127
    invoke-virtual {v3, v0}, Lcom/itextpdf/forms/xfdf/IdsObject;->setOriginal(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/IdsObject;->setModified(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setIds(Lcom/itextpdf/forms/xfdf/IdsObject;)V

    .line 131
    new-instance v0, Lcom/itextpdf/forms/xfdf/FObject;

    invoke-direct {v0, p2}, Lcom/itextpdf/forms/xfdf/FObject;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setF(Lcom/itextpdf/forms/xfdf/FObject;)V

    .line 134
    invoke-static {p1, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    return-object v2
.end method

.method public createXfdfObject(Ljava/io/InputStream;)Lcom/itextpdf/forms/xfdf/XfdfObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils;->createXfdfDocumentFromStream(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readXfdfRootAttributes(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAttributes(Ljava/util/List;)V

    .line 158
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitChildNodes(Lorg/w3c/dom/NodeList;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    return-object v0
.end method
