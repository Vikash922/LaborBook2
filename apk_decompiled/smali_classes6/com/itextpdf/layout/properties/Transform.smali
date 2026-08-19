.class public Lcom/itextpdf/layout/properties/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/properties/Transform$SingleTransform;
    }
.end annotation


# instance fields
.field private multipleTransform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/properties/Transform$SingleTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/Transform;->multipleTransform:Ljava/util/List;

    return-void
.end method

.method public static getAffineTransform(Lcom/itextpdf/layout/properties/Transform;FF)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 10

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/layout/properties/Transform;->getMultipleTransform()Ljava/util/List;

    move-result-object p0

    .line 90
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 91
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    .line 92
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/properties/Transform$SingleTransform;

    const/4 v4, 0x6

    .line 93
    new-array v5, v4, [F

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->getFloats()[F

    move-result-object v7

    aget v7, v7, v6

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_2
    if-ge v6, v4, :cond_3

    .line 97
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->getUnitValues()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    add-int/lit8 v9, v6, -0x4

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->getUnitType()I

    move-result v8

    if-ne v8, v2, :cond_1

    .line 98
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->getUnitValues()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    goto :goto_4

    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->getUnitValues()[Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    if-ne v6, v7, :cond_2

    move v9, p1

    goto :goto_3

    :cond_2
    move v9, p2

    :goto_3
    mul-float/2addr v8, v9

    :goto_4
    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 99
    :cond_3
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>([F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->preConcatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getMultipleTransform()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/properties/Transform$SingleTransform;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/itextpdf/layout/properties/Transform;->multipleTransform:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addSingleTransform(Lcom/itextpdf/layout/properties/Transform$SingleTransform;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/layout/properties/Transform;->multipleTransform:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
