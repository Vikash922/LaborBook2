.class Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;
.super Ljava/lang/Object;
.source "CollapsedTableBorders.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/CollapsedTableBorders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BorderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/layout/borders/Border;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/layout/renderer/CollapsedTableBorders$1;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 737
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/layout/borders/Border;->getWidth()F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 721
    check-cast p1, Lcom/itextpdf/layout/borders/Border;

    check-cast p2, Lcom/itextpdf/layout/borders/Border;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/renderer/CollapsedTableBorders$BorderComparator;->compare(Lcom/itextpdf/layout/borders/Border;Lcom/itextpdf/layout/borders/Border;)I

    move-result p1

    return p1
.end method
