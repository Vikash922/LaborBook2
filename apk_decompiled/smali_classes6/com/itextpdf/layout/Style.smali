.class public Lcom/itextpdf/layout/Style;
.super Lcom/itextpdf/layout/ElementPropertyContainer;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/ElementPropertyContainer<",
        "Lcom/itextpdf/layout/Style;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/Style;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/itextpdf/layout/Style;->properties:Ljava/util/Map;

    iget-object p1, p1, Lcom/itextpdf/layout/Style;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getHeight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x1b

    .line 425
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2b

    .line 139
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2c

    .line 76
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2d

    .line 97
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getMarginTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2e

    .line 118
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingBottom()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x2f

    .line 250
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingLeft()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x30

    .line 187
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingRight()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x31

    .line 208
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getPaddingTop()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x32

    .line 229
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getWidth()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    const/16 v0, 0x4d

    .line 393
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public isKeepTogether()Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x20

    .line 327
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHeight(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 414
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x1b

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 416
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x1b

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 404
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setKeepTogether(Z)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x20

    .line 338
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 339
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMargin(F)Lcom/itextpdf/layout/Style;
    .locals 0

    .line 161
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/Style;->setMargins(FFFF)Lcom/itextpdf/layout/Style;

    move-result-object p1

    return-object p1
.end method

.method public setMarginBottom(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2b

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 151
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMarginLeft(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 86
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2c

    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 88
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMarginRight(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 107
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2d

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 109
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMarginTop(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 128
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2e

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 130
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMargins(FFFF)Lcom/itextpdf/layout/Style;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Style;->setMarginTop(F)Lcom/itextpdf/layout/Style;

    .line 175
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/Style;->setMarginRight(F)Lcom/itextpdf/layout/Style;

    .line 176
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/Style;->setMarginBottom(F)Lcom/itextpdf/layout/Style;

    .line 177
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/Style;->setMarginLeft(F)Lcom/itextpdf/layout/Style;

    .line 178
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMaxHeight(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 435
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x54

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 437
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMaxHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x54

    .line 447
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 448
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMaxWidth(F)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x4f

    .line 492
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 493
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMaxWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x4f

    .line 481
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 482
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMinHeight(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 469
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x55

    .line 470
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 471
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMinHeight(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x55

    .line 458
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 459
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMinWidth(F)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x50

    .line 514
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 515
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setMinWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x50

    .line 503
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 504
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setPadding(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 272
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/itextpdf/layout/Style;->setPaddings(FFFF)Lcom/itextpdf/layout/Style;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/Style;

    return-object p1
.end method

.method public setPaddingBottom(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 260
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x2f

    .line 261
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 262
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setPaddingLeft(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 197
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x30

    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 199
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setPaddingRight(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 218
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x31

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 220
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setPaddingTop(F)Lcom/itextpdf/layout/Style;
    .locals 1

    .line 239
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    const/16 v0, 0x32

    .line 240
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 241
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setPaddings(FFFF)Lcom/itextpdf/layout/Style;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/Style;->setPaddingTop(F)Lcom/itextpdf/layout/Style;

    .line 286
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/Style;->setPaddingRight(F)Lcom/itextpdf/layout/Style;

    .line 287
    invoke-virtual {p0, p3}, Lcom/itextpdf/layout/Style;->setPaddingBottom(F)Lcom/itextpdf/layout/Style;

    .line 288
    invoke-virtual {p0, p4}, Lcom/itextpdf/layout/Style;->setPaddingLeft(F)Lcom/itextpdf/layout/Style;

    .line 289
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setRotationAngle(D)Lcom/itextpdf/layout/Style;
    .locals 0

    double-to-float p1, p1

    .line 360
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 p2, 0x37

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 361
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setRotationAngle(F)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x37

    .line 349
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 350
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setSpacingRatio(F)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x3d

    .line 316
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 317
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setVerticalAlignment(Lcom/itextpdf/layout/properties/VerticalAlignment;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x4b

    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 300
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setWidth(F)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x4d

    .line 371
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 372
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method

.method public setWidth(Lcom/itextpdf/layout/properties/UnitValue;)Lcom/itextpdf/layout/Style;
    .locals 1

    const/16 v0, 0x4d

    .line 382
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/Style;->setProperty(ILjava/lang/Object;)V

    .line 383
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/Style;

    return-object p0
.end method
