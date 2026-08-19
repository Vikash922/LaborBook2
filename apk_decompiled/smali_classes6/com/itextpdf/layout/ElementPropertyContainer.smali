.class public abstract Lcom/itextpdf/layout/ElementPropertyContainer;
.super Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;
.source "ElementPropertyContainer.java"

# interfaces
.implements Lcom/itextpdf/layout/IPropertyContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/IPropertyContainer;",
        ">",
        "Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;",
        "Lcom/itextpdf/layout/IPropertyContainer;"
    }
.end annotation


# instance fields
.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/itextpdf/commons/actions/sequence/AbstractIdentifiableElement;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public deleteOwnProperty(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    .line 124
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOwnProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->getOwnProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSplitCharacters()Lcom/itextpdf/layout/splitting/ISplitCharacters;
    .locals 1

    const/16 v0, 0x3e

    .line 583
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/splitting/ISplitCharacters;

    return-object v0
.end method

.method public getStrokeColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    const/16 v0, 0x3f

    .line 619
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getStrokeWidth()Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x40

    .line 641
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getTextRenderingMode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x47

    .line 595
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasOwnProperty(I)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasProperty(I)Z
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->hasOwnProperty(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "F)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 396
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFF)TT;"
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 411
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(Lcom/itextpdf/kernel/colors/Color;FFFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFF)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    new-instance v7, Lcom/itextpdf/layout/properties/Background;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/properties/Background;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFF)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 p1, 0x6

    invoke-virtual {p0, p1, v7}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 428
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBackgroundImage(Lcom/itextpdf/layout/properties/BackgroundImage;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BackgroundImage;",
            ")TT;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x5a

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 441
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBackgroundImage(Ljava/util/List;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/properties/BackgroundImage;",
            ">;)TT;"
        }
    .end annotation

    const/16 v0, 0x5a

    .line 451
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 452
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBaseDirection(Lcom/itextpdf/layout/properties/BaseDirection;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BaseDirection;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 778
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 779
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBold()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 663
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 664
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setBorder(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 462
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 463
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderBottom(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 495
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 496
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderBottomLeftRadius(Lcom/itextpdf/layout/properties/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BorderRadius;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x71

    .line 528
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 529
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderBottomRightRadius(Lcom/itextpdf/layout/properties/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BorderRadius;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x70

    .line 539
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 540
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderLeft(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xb

    .line 506
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 507
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderRadius(Lcom/itextpdf/layout/properties/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BorderRadius;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x65

    .line 517
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 518
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderRight(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 484
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 485
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderTop(Lcom/itextpdf/layout/borders/Border;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/borders/Border;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 473
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 474
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderTopLeftRadius(Lcom/itextpdf/layout/properties/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BorderRadius;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x6e

    .line 550
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 551
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setBorderTopRightRadius(Lcom/itextpdf/layout/properties/BorderRadius;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/BorderRadius;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x6f

    .line 561
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 562
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setCharacterSpacing(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0xf

    .line 349
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 350
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setDestination(Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 812
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 813
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFixedPosition(FFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)TT;"
        }
    .end annotation

    .line 169
    invoke-static {p3}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    .line 170
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFixedPosition(FFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x22

    .line 187
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 188
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x4d

    .line 189
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 190
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFixedPosition(IFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)TT;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFF)Lcom/itextpdf/layout/IPropertyContainer;

    const/16 p2, 0x33

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 209
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFixedPosition(IFFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFixedPosition(FFLcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/IPropertyContainer;

    const/16 p2, 0x33

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 228
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 252
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFontColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFontColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setFontColor(Lcom/itextpdf/kernel/colors/Color;F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "F)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 314
    new-instance v0, Lcom/itextpdf/layout/properties/TransparentColor;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/properties/TransparentColor;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 315
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFontFamily(Ljava/util/List;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setFontFamily([Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public varargs setFontFamily([Ljava/lang/String;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 273
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFontKerning(Lcom/itextpdf/layout/properties/FontKerning;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/FontKerning;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x16

    .line 374
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 375
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFontScript(Ljava/lang/Character$UnicodeScript;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character$UnicodeScript;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x17

    .line 801
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 802
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setFontSize(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 325
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x18

    .line 326
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 327
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setHorizontalAlignment(Lcom/itextpdf/layout/properties/HorizontalAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/HorizontalAlignment;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x1c

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 239
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setHyphenation(Lcom/itextpdf/layout/hyphenation/HyphenationConfig;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/hyphenation/HyphenationConfig;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x1e

    .line 790
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 791
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setItalic()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 674
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 675
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v0
.end method

.method public setLineThrough()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const v5, 0x3e955555

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 686
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setOpacity(Ljava/lang/Float;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x5c

    .line 824
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 825
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/ElementPropertyContainer;->properties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRelativePosition(FFFF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 v0, 0x22

    .line 149
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x36

    .line 150
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0x49

    .line 151
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 152
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 153
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setSplitCharacters(Lcom/itextpdf/layout/splitting/ISplitCharacters;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/splitting/ISplitCharacters;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x3e

    .line 573
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 574
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x3f

    .line 630
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 631
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setStrokeWidth(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x40

    .line 652
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 653
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setTextAlignment(Lcom/itextpdf/layout/properties/TextAlignment;)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/TextAlignment;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x46

    .line 337
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 338
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setTextRenderingMode(I)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/16 v0, 0x47

    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 609
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method

.method public setUnderline()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/high16 v5, -0x42000000    # -0.125f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 696
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public setUnderline(FF)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 709
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFFI)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFFI)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 754
    new-instance v9, Lcom/itextpdf/layout/properties/Underline;

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/itextpdf/layout/properties/Underline;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFFFI)V

    const/16 v1, 0x4a

    .line 755
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 756
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 757
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_0
    instance-of v3, v2, Lcom/itextpdf/layout/properties/Underline;

    if-eqz v3, :cond_1

    .line 759
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 760
    check-cast v2, Lcom/itextpdf/layout/properties/Underline;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {p0, v1, v9}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 766
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object v1
.end method

.method public setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFI)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/colors/Color;",
            "FFFFI)TT;"
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 731
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/layout/ElementPropertyContainer;->setUnderline(Lcom/itextpdf/kernel/colors/Color;FFFFFI)Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    return-object p1
.end method

.method public setWordSpacing(F)Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x4e

    .line 361
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->setProperty(ILjava/lang/Object;)V

    .line 362
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/IPropertyContainer;

    return-object p1
.end method
