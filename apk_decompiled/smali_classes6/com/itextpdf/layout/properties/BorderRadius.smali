.class public Lcom/itextpdf/layout/properties/BorderRadius;
.super Ljava/lang/Object;
.source "BorderRadius.java"


# instance fields
.field private horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

.field private verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    .line 74
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    .line 96
    invoke-static {p2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    .line 64
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/UnitValue;Lcom/itextpdf/layout/properties/UnitValue;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/itextpdf/layout/properties/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    .line 85
    iput-object p2, p0, Lcom/itextpdf/layout/properties/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-void
.end method


# virtual methods
.method public getHorizontalRadius()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BorderRadius;->horizontalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method

.method public getVerticalRadius()Lcom/itextpdf/layout/properties/UnitValue;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/layout/properties/BorderRadius;->verticalRadius:Lcom/itextpdf/layout/properties/UnitValue;

    return-object v0
.end method
