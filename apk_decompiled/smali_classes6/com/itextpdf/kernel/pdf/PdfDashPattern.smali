.class public Lcom/itextpdf/kernel/pdf/PdfDashPattern;
.super Ljava/lang/Object;
.source "PdfDashPattern.java"


# instance fields
.field private dash:F

.field private gap:F

.field private phase:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->dash:F

    .line 57
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->gap:F

    .line 60
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->phase:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 57
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->gap:F

    .line 60
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->phase:F

    .line 74
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->dash:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 60
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->phase:F

    .line 84
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->dash:F

    .line 85
    iput p2, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->gap:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;-><init>(FF)V

    .line 97
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->phase:F

    return-void
.end method


# virtual methods
.method public getDash()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->dash:F

    return v0
.end method

.method public getGap()F
    .locals 1

    .line 115
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->gap:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->phase:F

    return v0
.end method
