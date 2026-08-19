.class public Lcom/itextpdf/layout/font/FontSelector;
.super Ljava/lang/Object;
.source "FontSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;
    }
.end annotation


# static fields
.field private static final EXPECTED_FONT_IS_BOLD_AWARD:I = 0x5

.field private static final EXPECTED_FONT_IS_ITALIC_AWARD:I = 0x5

.field private static final EXPECTED_FONT_IS_MONOSPACED_AWARD:I = 0x5

.field private static final EXPECTED_FONT_IS_NOT_BOLD_AWARD:I = 0x3

.field private static final EXPECTED_FONT_IS_NOT_ITALIC_AWARD:I = 0x3

.field private static final EXPECTED_FONT_IS_NOT_MONOSPACED_AWARD:I = 0x1

.field private static final EXPECTED_FONT_WEIGHT_IS_EQUALS_AWARD:I = 0x1

.field private static final EXPECTED_FONT_WEIGHT_IS_FAR_AWARD:I = 0x1

.field private static final FONT_FAMILY_EQUALS_AWARD:I = 0xd


# instance fields
.field protected fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelector;->fonts:Ljava/util/List;

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/layout/font/FontSelector;->getComparator(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final bestMatch()Lcom/itextpdf/layout/font/FontInfo;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelector;->fonts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/font/FontInfo;

    return-object v0
.end method

.method protected getComparator(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSelector$PdfFontComparator;-><init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    return-object v0
.end method

.method public final getFonts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelector;->fonts:Ljava/util/List;

    return-object v0
.end method
