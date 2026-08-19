.class public Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;
.super Ljava/lang/Object;
.source "XMPNormalizer.java"


# static fields
.field private static dcArrayForms:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 61
    invoke-static {}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->initDCArrays()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareAliasedSubtrees(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xcb

    const-string v2, "Mismatch between alias and base nodes"

    if-eqz v0, :cond_4

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-ne v0, v3, :cond_4

    if-nez p2, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifierLength()I

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 562
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p2

    .line 563
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 564
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 567
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 568
    invoke-static {v1, v3, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)V

    goto :goto_1

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p0

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p1

    .line 574
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 576
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 577
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 578
    invoke-static {p2, v0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)V

    goto :goto_2

    :cond_3
    return-void

    .line 548
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static deleteEmptySchemas(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 524
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static fixGPSTimeStamp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 469
    const-string v0, "exif:GPSTimeStamp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPDateTime;

    move-result-object v2

    .line 481
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getYear()I

    move-result v3

    if-nez v3, :cond_3

    .line 482
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getMonth()I

    move-result v3

    if-nez v3, :cond_3

    .line 483
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getDay()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    const-string v3, "exif:DateTimeOriginal"

    invoke-static {p0, v3, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    if-nez v3, :cond_2

    .line 492
    const-string v3, "exif:DateTimeDigitized"

    invoke-static {p0, v3, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    .line 495
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPDateTime;

    move-result-object p0

    .line 496
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 497
    invoke-interface {p0}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getYear()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    invoke-interface {p0}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getMonth()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-interface {p0}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getDay()I

    move-result p0

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 500
    new-instance p0, Lcom/itextpdf/kernel/xmp/impl/XMPDateTimeImpl;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    .line 501
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromDate(Lcom/itextpdf/kernel/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private static initDCArrays()V
    .locals 4

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    .line 690
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    const/4 v1, 0x1

    .line 691
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 692
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:contributor"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:language"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:publisher"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:relation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:subject"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:type"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    .line 701
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 702
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 703
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:creator"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v3, "dc:date"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    .line 708
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 709
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 710
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 711
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 712
    sget-object v1, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:description"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v1, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:rights"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v1, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string v2, "dc:title"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static migrateAudioCopyright(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 13

    .line 615
    const-string v0, "x-default"

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 616
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    .line 615
    invoke-static {v1, v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    .line 618
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 621
    const-string v4, "dc:rights"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const-string v4, "\n\n"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    .line 637
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 638
    const-string v7, "http://purl.org/dc/elements/1.1/"

    const-string v8, "rights"

    const-string v9, ""

    const-string v10, "x-default"

    const/4 v12, 0x0

    move-object v6, p0

    invoke-interface/range {v6 .. v12}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 640
    invoke-static {v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v6

    .line 644
    :cond_1
    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    .line 645
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 651
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 626
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 627
    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "rights"

    const-string v4, ""

    const-string v5, "x-default"

    const/4 v7, 0x0

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 671
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    :try_end_1
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private static moveExplicitAliases(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 320
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getStrictAliasing()Z

    move-result p1

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getUnmodifiableChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 325
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 332
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 334
    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->isAlias()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setAlias(Z)V

    .line 342
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    move-result-object v5

    .line 343
    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 348
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 347
    invoke-static {p0, v6, v7, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v6

    .line 349
    invoke-virtual {v6, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 352
    invoke-static {v6, v9, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v9

    if-nez v9, :cond_5

    .line 356
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/itextpdf/kernel/xmp/options/AliasOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 370
    :cond_4
    new-instance v7, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 371
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/itextpdf/kernel/xmp/options/AliasOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->toPropertyOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 372
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 373
    invoke-static {v3, v4, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    .line 377
    :cond_5
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/itextpdf/kernel/xmp/options/AliasOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_6

    .line 384
    invoke-static {v4, v9, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)V

    .line 387
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 396
    :cond_7
    invoke-interface {v5}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/itextpdf/kernel/xmp/options/AliasOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 398
    const-string v5, "x-default"

    invoke-static {v9, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 402
    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v5

    move-object v7, v5

    goto :goto_2

    .line 405
    :cond_8
    invoke-virtual {v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 407
    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v7

    :cond_9
    :goto_2
    if-nez v7, :cond_a

    .line 412
    invoke-static {v3, v4, v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    :cond_a
    if-eqz p1, :cond_b

    .line 418
    invoke-static {v4, v7, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)V

    .line 421
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 426
    :cond_c
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setHasAliases(Z)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private static normalizeDCArrays(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 211
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    if-nez v2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    new-instance v3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 223
    const-string v4, "[]"

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 225
    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->replaceChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 228
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    new-instance v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v3, "x-default"

    const/4 v4, 0x0

    const-string v5, "xml:lang"

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 231
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v3

    const/16 v4, 0x1e00

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 243
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->mergeWith(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 245
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->repairAltText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static process(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    .line 85
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->touchUpDataModel(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;)V

    .line 86
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->moveExplicitAliases(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)V

    .line 88
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->tweakOldXMP(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 90
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->deleteEmptySchemas(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return-object p0
.end method

.method private static repairAltText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 278
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 286
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 294
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v2, "x-repair"

    const/4 v3, 0x0

    const-string v4, "xml:lang"

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 289
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private static touchUpDataModel(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-static {v0, v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 155
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 158
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->normalizeDCArrays(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 162
    :cond_1
    const-string v3, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 165
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->fixGPSTimeStamp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 166
    const-string v3, "exif:UserComment"

    invoke-static {v1, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->repairAltText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 173
    :cond_2
    const-string v3, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const-string v3, "xmpDM:copyright"

    invoke-static {v1, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->migrateAudioCopyright(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string v3, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "xmpRights:UsageTerms"

    invoke-static {v1, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->repairAltText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static transplantArrayItemAlias(Ljava/util/Iterator;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 441
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v1, "x-default"

    const/4 v2, 0x0

    const-string v3, "xml:lang"

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 450
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 445
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Alias to x-default already has a language qualifier"

    const/16 p2, 0xcb

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 453
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 454
    const-string p0, "[]"

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return-void
.end method

.method private static tweakOldXMP(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/Utils;->checkUUIDFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v3, "InstanceID"

    invoke-static {v2, v3}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-static {p0, v2, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChildren()V

    .line 129
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeQualifiers()V

    .line 130
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Failure creating xmpMM:InstanceID"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
