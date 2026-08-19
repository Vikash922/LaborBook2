.class public Lcom/itextpdf/layout/layout/LayoutArea;
.super Ljava/lang/Object;
.source "LayoutArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected bBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field protected pageNumber:I


# direct methods
.method public constructor <init>(ILcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    .line 72
    iput-object p2, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method


# virtual methods
.method public clone()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 111
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 113
    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 129
    :cond_0
    check-cast p1, Lcom/itextpdf/layout/layout/LayoutArea;

    .line 130
    iget v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    iget v1, p1, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object p1, p1, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/geom/Rectangle;->equalsWithEpsilon(Lcom/itextpdf/kernel/geom/Rectangle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getBBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 138
    new-instance v0, Lcom/itextpdf/io/util/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/io/util/HashCode;-><init>()V

    .line 139
    iget v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/util/HashCode;->append(I)Lcom/itextpdf/io/util/HashCode;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/util/HashCode;->append(I)Lcom/itextpdf/io/util/HashCode;

    .line 141
    invoke-virtual {v0}, Lcom/itextpdf/io/util/HashCode;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBBox(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutArea;->bBox:Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/layout/LayoutArea;->pageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0}, page {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
