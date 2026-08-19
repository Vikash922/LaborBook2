.class public Lcom/itextpdf/layout/element/TabStop;
.super Ljava/lang/Object;
.source "TabStop.java"


# instance fields
.field private tabAlignment:Lcom/itextpdf/layout/properties/TabAlignment;

.field private tabAnchor:Ljava/lang/Character;

.field private tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

.field private tabPosition:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 70
    sget-object v0, Lcom/itextpdf/layout/properties/TabAlignment;->LEFT:Lcom/itextpdf/layout/properties/TabAlignment;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/TabStop;-><init>(FLcom/itextpdf/layout/properties/TabAlignment;)V

    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/layout/properties/TabAlignment;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/element/TabStop;-><init>(FLcom/itextpdf/layout/properties/TabAlignment;Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V

    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/layout/properties/TabAlignment;Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabPosition:F

    .line 98
    iput-object p2, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/properties/TabAlignment;

    .line 99
    iput-object p3, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    const/16 p1, 0x2e

    .line 100
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public getTabAlignment()Lcom/itextpdf/layout/properties/TabAlignment;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/properties/TabAlignment;

    return-object v0
.end method

.method public getTabAnchor()Ljava/lang/Character;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    return-object v0
.end method

.method public getTabLeader()Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    return-object v0
.end method

.method public getTabPosition()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/layout/element/TabStop;->tabPosition:F

    return v0
.end method

.method public setTabAlignment(Lcom/itextpdf/layout/properties/TabAlignment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabAlignment:Lcom/itextpdf/layout/properties/TabAlignment;

    return-void
.end method

.method public setTabAnchor(Ljava/lang/Character;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabAnchor:Ljava/lang/Character;

    return-void
.end method

.method public setTabLeader(Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/itextpdf/layout/element/TabStop;->tabLeader:Lcom/itextpdf/kernel/pdf/canvas/draw/ILineDrawer;

    return-void
.end method
