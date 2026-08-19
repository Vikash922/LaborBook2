.class public abstract Lcom/itextpdf/layout/element/BlockElement;
.super Lcom/itextpdf/layout/element/AbstractElement;
.source "BlockElement.java"

# interfaces
.implements Lcom/itextpdf/layout/tagging/IAccessibleElement;
.implements Lcom/itextpdf/layout/element/IBlockElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/element/IElement;",
        ">",
        "Lcom/itextpdf/layout/element/AbstractElement<",
        "TT;>;",
        "Lcom/itextpdf/layout/tagging/IAccessibleElement;",
        "Lcom/itextpdf/layout/element/IBlockElement;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/itextpdf/layout/element/AbstractElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/AbstractElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    sget-object p1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    return-object p1
.end method

.method public getHeight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x1b

    .line 458
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2b

    .line 149
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2c

    .line 86
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2d

    .line 107
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2e

    .line 128
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2f

    .line 260
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x30

    .line 197
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x31

    .line 218
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x32

    .line 239
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getWidth()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x4d

    .line 426
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public isKeepTogether()Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x20

    .line 337
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public isKeepWithNext()Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x51

    .line 359
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/BlockElement;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHeight(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 447
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x1b

    .line 448
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 449
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x1b

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 437
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setKeepTogether(Z)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 348
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 349
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setKeepWithNext(Z)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const/16 v0, 0x51

    .line 371
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 372
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMargin(F)Lcom/itextpdf/layout/element/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/element/BlockElement;->setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    return-object p1
.end method

.method public setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2b

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 161
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMarginLeft(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2c

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 98
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMarginRight(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2d

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 119
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMarginTop(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2e

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 140
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMargins(FFFF)Lcom/itextpdf/layout/element/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setMarginTop(F)Lcom/itextpdf/layout/element/IElement;

    .line 185
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/BlockElement;->setMarginRight(F)Lcom/itextpdf/layout/element/IElement;

    .line 186
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/element/BlockElement;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    .line 187
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/BlockElement;->setMarginLeft(F)Lcom/itextpdf/layout/element/IElement;

    .line 188
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMaxHeight(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 468
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x54

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 470
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMaxHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x54

    .line 480
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 481
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMaxWidth(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x4f

    .line 525
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 526
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMaxWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x4f

    .line 514
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 515
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMinHeight(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 502
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x55

    .line 503
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 504
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x55

    .line 491
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 492
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMinWidth(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x50

    .line 547
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 548
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setMinWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x50

    .line 536
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 537
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setNeutralRole()Lcom/itextpdf/layout/element/IElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/BlockElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 559
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/element/IElement;

    return-object v0
.end method

.method public setPadding(F)Lcom/itextpdf/layout/element/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/element/BlockElement;->setPaddings(FFFF)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    return-object p1
.end method

.method public setPaddingBottom(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 270
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2f

    .line 271
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 272
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setPaddingLeft(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x30

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 209
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setPaddingRight(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 228
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x31

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 230
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setPaddingTop(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x32

    .line 250
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 251
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setPaddings(FFFF)Lcom/itextpdf/layout/element/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setPaddingTop(F)Lcom/itextpdf/layout/element/IElement;

    .line 296
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/element/BlockElement;->setPaddingRight(F)Lcom/itextpdf/layout/element/IElement;

    .line 297
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/element/BlockElement;->setPaddingBottom(F)Lcom/itextpdf/layout/element/IElement;

    .line 298
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/element/BlockElement;->setPaddingLeft(F)Lcom/itextpdf/layout/element/IElement;

    .line 299
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setRotationAngle(D)Lcom/itextpdf/layout/element/IElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    double-to-float p1, p1

    .line 393
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 p2, 0x37

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 394
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setRotationAngle(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x37

    .line 382
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 383
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setSpacingRatio(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x3d

    .line 326
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 327
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setVerticalAlignment(Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/VerticalAlignment;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x4b

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 310
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setWidth(F)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/16 v0, 0x4d

    .line 404
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 405
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/properties/UnitValue;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x4d

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/BlockElement;->setProperty(ILjava/lang/Object;)V

    .line 416
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method
