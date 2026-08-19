.class public final Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;
.super Ljava/lang/Object;
.source "XMPUtilsImpl.java"

# interfaces
.implements Lcom/itextpdf/kernel/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMMAS:Ljava/lang/String; = ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

.field private static final CONTROLS:Ljava/lang/String; = "\u2028\u2029"

.field private static final QUOTES:Ljava/lang/String; = "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

.field private static final SEMICOLA:Ljava/lang/String; = ";\uff1b\ufe54\u061b\u037e"

.field private static final SPACES:Ljava/lang/String; = " \u3000\u303f"

.field private static final UCK_COMMA:I = 0x2

.field private static final UCK_CONTROL:I = 0x5

.field private static final UCK_NORMAL:I = 0x0

.field private static final UCK_QUOTE:I = 0x4

.field private static final UCK_SEMICOLON:I = 0x3

.field private static final UCK_SPACE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/XMPMeta;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 537
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 538
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 540
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 541
    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 543
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 545
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 548
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    .line 549
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 548
    invoke-static {v1, v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 553
    new-instance v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v4}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    const/4 v5, 0x1

    .line 554
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 555
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    move v3, v5

    .line 560
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 562
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    if-nez p2, :cond_3

    .line 564
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/itextpdf/kernel/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 566
    :cond_3
    invoke-static {p1, v4, v1, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZ)V

    goto :goto_1

    .line 571
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v3, :cond_5

    if-eqz p4, :cond_0

    .line 574
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static appendSubtree(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 620
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 625
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_13

    .line 634
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_7

    :cond_3
    if-nez v0, :cond_4

    .line 640
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_7

    :cond_4
    if-eqz p3, :cond_5

    .line 645
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-virtual {p0, v0, p3, p4, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    .line 646
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 647
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 648
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_7

    .line 655
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v3

    .line 656
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v4

    if-eq v3, v4, :cond_6

    return-void

    .line 661
    :cond_6
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isStruct()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 666
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 668
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 669
    invoke-static {p0, v1, v0, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZ)V

    if-eqz p4, :cond_7

    .line 671
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_7

    .line 673
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 677
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 682
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 684
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 685
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 686
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "xml:lang"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_3

    .line 692
    :cond_a
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 691
    invoke-static {v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eqz p4, :cond_c

    .line 694
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 695
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    if-eq p3, v1, :cond_9

    .line 699
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(I)V

    .line 700
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p1

    if-nez p1, :cond_9

    .line 702
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_3

    :cond_c
    if-ne p3, v1, :cond_9

    .line 709
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p3

    const-string v1, "x-default"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 710
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p3

    if-nez p3, :cond_d

    goto :goto_4

    .line 716
    :cond_d
    new-instance p3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 717
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-direct {p3, v1, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 720
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->cloneSubtree(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 721
    invoke-virtual {v0, v2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_3

    .line 712
    :cond_e
    :goto_4
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->cloneSubtree(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_3

    .line 726
    :cond_f
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 732
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 734
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 737
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p3

    move p4, v1

    :cond_11
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 739
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 740
    invoke-static {p1, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v3

    if-eqz v3, :cond_11

    move p4, v2

    goto :goto_6

    :cond_12
    if-nez p4, :cond_10

    .line 747
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 748
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    move-object v0, p1

    goto :goto_5

    :cond_13
    :goto_7
    return-void
.end method

.method private static applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    .line 1028
    const-string p0, ""

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1049
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ge v1, v3, :cond_5

    .line 1051
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1052
    invoke-static {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v3

    if-nez v1, :cond_1

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-eq v3, v2, :cond_5

    const/4 v2, 0x5

    if-eq v3, v2, :cond_5

    if-ne v3, v4, :cond_4

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1079
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v1, p3, :cond_a

    .line 1088
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v0

    :goto_3
    if-gt v2, v1, :cond_7

    .line 1092
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v3

    if-ne v3, v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1099
    :cond_7
    :goto_4
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 1103
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1105
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1111
    :cond_9
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1113
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static catenateArrayItems(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 105
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const-string p3, "; "

    :cond_1
    if-eqz p4, :cond_2

    .line 111
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 113
    :cond_2
    const-string p4, "\""

    .line 116
    :cond_3
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 122
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    if-nez p0, :cond_4

    .line 126
    const-string p0, ""

    return-object p0

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result p1

    if-nez p1, :cond_8

    .line 134
    invoke-static {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->checkSeparator(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 137
    invoke-static {p4, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->checkQuotes(Ljava/lang/String;C)C

    move-result p4

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 147
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 151
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 149
    :cond_6
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Array items must be simple"

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 160
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_8
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Named property must be non-alternate array"

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static checkQuotes(Ljava/lang/String;C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 895
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 896
    const-string v1, "Invalid quoting character"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 901
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move p0, p1

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 908
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 915
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result p1

    if-ne p0, p1, :cond_1

    return p0

    .line 917
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Mismatched quote pair"

    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 911
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 898
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static checkSeparator(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 855
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v0, v2, :cond_3

    .line 857
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_1

    .line 862
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Separator can have only one semicolon"

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    if-ne v2, v5, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Separator can have only spaces and one semicolon"

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    return-void

    .line 875
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Separator must have one semicolon"

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static classifyCharacter(C)I
    .locals 1

    .line 933
    const-string v0, " \u3000\u303f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200b

    if-gt p0, v0, :cond_0

    goto :goto_2

    .line 937
    :cond_0
    const-string v0, ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 941
    :cond_1
    const-string v0, ";\uff1b\ufe54\u061b\u037e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 945
    :cond_2
    const-string v0, "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    const/16 v0, 0x3008

    if-gt v0, p0, :cond_3

    const/16 v0, 0x300f

    if-le p0, v0, :cond_7

    :cond_3
    const/16 v0, 0x2018

    if-gt v0, p0, :cond_4

    const/16 v0, 0x201f

    if-gt p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x20

    if-lt p0, v0, :cond_6

    .line 950
    const-string v0, "\u2028\u2029"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x4

    return p0

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static getClosingQuote(C)C
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/16 p0, 0x301f

    return p0

    :sswitch_1
    const/16 p0, 0x300f

    return p0

    :sswitch_2
    const/16 p0, 0x300d

    return p0

    :sswitch_3
    const/16 p0, 0x300b

    return p0

    :sswitch_4
    const/16 p0, 0x3009

    return p0

    :sswitch_5
    const/16 p0, 0x2039

    return p0

    :sswitch_6
    const/16 p0, 0x203a

    return p0

    :sswitch_7
    const/16 p0, 0x201f

    return p0

    :sswitch_8
    const/16 p0, 0x201d

    return p0

    :sswitch_9
    const/16 p0, 0x201b

    return p0

    :sswitch_a
    const/16 p0, 0x2019

    return p0

    :sswitch_b
    const/16 p0, 0x2015

    return p0

    :sswitch_c
    const/16 p0, 0xab

    return p0

    :sswitch_d
    const/16 p0, 0xbb

    return p0

    :sswitch_e
    const/16 p0, 0x22

    return p0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0xab -> :sswitch_d
        0xbb -> :sswitch_c
        0x2015 -> :sswitch_b
        0x2018 -> :sswitch_a
        0x201a -> :sswitch_9
        0x201c -> :sswitch_8
        0x201e -> :sswitch_7
        0x2039 -> :sswitch_6
        0x203a -> :sswitch_5
        0x3008 -> :sswitch_4
        0x300a -> :sswitch_3
        0x300c -> :sswitch_2
        0x300e -> :sswitch_1
        0x301d -> :sswitch_0
    .end sparse-switch
.end method

.method private static isClosingingQuote(CCC)Z
    .locals 0

    if-eq p0, p2, :cond_2

    const/16 p2, 0x301d

    if-ne p1, p2, :cond_0

    const/16 p1, 0x301e

    if-eq p0, p1, :cond_2

    :cond_0
    const/16 p1, 0x301f

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSurroundingQuote(CCC)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 1128
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

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

.method private static itemValuesMatch(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    .line 766
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    .line 768
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 773
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 776
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v1

    if-eq v0, v1, :cond_2

    return v2

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 785
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 786
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 785
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    .line 791
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-eq v0, v1, :cond_4

    return v2

    .line 800
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 802
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 803
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 805
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    return v2

    .line 820
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 822
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 825
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 827
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 828
    invoke-static {v0, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_9
    return v2

    :cond_a
    return v3
.end method

.method public static removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 430
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 431
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 433
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1

    .line 445
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 447
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-static {p0, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    if-eqz p0, :cond_7

    if-nez p3, :cond_0

    .line 451
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object p2

    .line 452
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-static {p2, p1}, Lcom/itextpdf/kernel/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    .line 455
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 456
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p0

    if-nez p0, :cond_7

    .line 459
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto/16 :goto_2

    .line 441
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Property name requires schema namespace"

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    if-eqz p1, :cond_5

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 473
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 476
    invoke-static {p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_3
    if-eqz p4, :cond_7

    .line 490
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;->findAliases(Ljava/lang/String;)[Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;

    move-result-object p1

    move p2, v1

    .line 491
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_7

    .line 493
    aget-object p3, p1, p2

    .line 494
    invoke-interface {p3}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object p4

    .line 495
    invoke-interface {p3}, Lcom/itextpdf/kernel/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object p3

    .line 494
    invoke-static {p4, p3}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p3

    .line 497
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p4

    invoke-static {p4, p3, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 500
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p4

    .line 501
    invoke-virtual {p4, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 512
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 514
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 515
    invoke-static {p1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 517
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method private static removeSchemaChildren(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Z)Z
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    if-nez p1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itextpdf/kernel/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static separateArrayItems(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 192
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eqz p3, :cond_12

    .line 197
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 198
    check-cast p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 201
    invoke-static {p1, p2, p4, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    .line 211
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    move v1, p4

    :goto_0
    if-ge p2, p1, :cond_11

    :goto_1
    if-ge p2, p1, :cond_1

    .line 218
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 219
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result p4

    if-eqz p4, :cond_1

    if-ne p4, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lt p2, p1, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v2, 0x1

    if-eq p4, v0, :cond_7

    move v3, p2

    :goto_3
    if-ge v3, p1, :cond_6

    .line 236
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 237
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result p4

    if-eqz p4, :cond_5

    if-eq p4, v0, :cond_5

    const/4 v4, 0x2

    if-ne p4, v4, :cond_3

    if-eqz p5, :cond_3

    goto :goto_4

    :cond_3
    if-eq p4, v2, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v3, 0x1

    if-ge v5, p1, :cond_6

    .line 250
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v0, :cond_5

    if-ne v5, v4, :cond_6

    if-eqz p5, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 263
    :cond_6
    :goto_5
    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_a

    .line 273
    :cond_7
    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v3

    add-int/lit8 p2, p2, 0x1

    .line 278
    const-string v4, ""

    move v5, v1

    :goto_6
    if-ge p2, p1, :cond_d

    .line 280
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 281
    invoke-static {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result p4

    if-ne p4, v0, :cond_c

    .line 283
    invoke-static {v5, v1, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p1, :cond_9

    .line 299
    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 300
    invoke-static {v7}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    goto :goto_7

    :cond_9
    const/16 v7, 0x3b

    :goto_7
    if-ne v5, v7, :cond_a

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    move p2, v6

    goto :goto_9

    .line 315
    :cond_a
    invoke-static {v5, v1, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v7

    if-nez v7, :cond_b

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_b
    move-object p2, v4

    move v1, v5

    move v3, v6

    goto :goto_a

    .line 287
    :cond_c
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9
    add-int/2addr p2, v2

    goto :goto_6

    :cond_d
    move v3, p2

    move-object p2, v4

    move v1, v5

    .line 334
    :goto_a
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v4

    if-gt v2, v4, :cond_f

    .line 336
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, -0x1

    :goto_b
    if-gez v2, :cond_10

    .line 346
    new-instance v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v4, "[]"

    const/4 v5, 0x0

    invoke-direct {v2, v4, p2, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_10
    move p2, v3

    goto/16 :goto_0

    :cond_11
    :goto_c
    return-void

    .line 195
    :cond_12
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Parameter must not be null"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 365
    invoke-static {p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    .line 366
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p0

    .line 374
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    const/16 v0, 0x66

    if-eqz p1, :cond_2

    .line 379
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result p3

    if-nez p3, :cond_1

    .line 385
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->equalArrayTypes(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Mismatch of specified and existing array form"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 382
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Named property must be non-alternate array"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 395
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    const/4 p3, 0x1

    .line 396
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    .line 395
    invoke-static {p1, p0, p3, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_0
    return-object p1

    .line 399
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Failed to create named array"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 368
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Options can only provide array form"

    const/16 p2, 0x67

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
