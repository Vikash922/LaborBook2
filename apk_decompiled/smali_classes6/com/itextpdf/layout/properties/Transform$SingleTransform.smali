.class public Lcom/itextpdf/layout/properties/Transform$SingleTransform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/properties/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTransform"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private tx:Lcom/itextpdf/layout/properties/UnitValue;

.field private ty:Lcom/itextpdf/layout/properties/UnitValue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    iput v0, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->a:F

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->b:F

    .line 117
    iput v1, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->c:F

    .line 118
    iput v0, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->d:F

    .line 119
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/properties/UnitValue;

    .line 120
    new-instance v0, Lcom/itextpdf/layout/properties/UnitValue;

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/layout/properties/UnitValue;-><init>(IF)V

    iput-object v0, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method public constructor <init>(FFFFLcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->a:F

    .line 135
    iput p2, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->b:F

    .line 136
    iput p3, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->c:F

    .line 137
    iput p4, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->d:F

    .line 138
    iput-object p5, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/properties/UnitValue;

    .line 139
    iput-object p6, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method


# virtual methods
.method public getFloats()[F
    .locals 6

    .line 148
    iget v0, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->a:F

    iget v1, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->b:F

    iget v2, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->c:F

    iget v3, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->d:F

    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public getUnitValues()[Lcom/itextpdf/layout/properties/UnitValue;
    .locals 3

    const/4 v0, 0x2

    .line 157
    new-array v0, v0, [Lcom/itextpdf/layout/properties/UnitValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->tx:Lcom/itextpdf/layout/properties/UnitValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/itextpdf/layout/properties/Transform$SingleTransform;->ty:Lcom/itextpdf/layout/properties/UnitValue;

    aput-object v2, v0, v1

    return-object v0
.end method
