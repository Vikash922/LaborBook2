.class Lcom/itextpdf/layout/font/Range$SubRange;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/font/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/layout/font/Range$SubRange;",
        ">;"
    }
.end annotation


# instance fields
.field high:I

.field low:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    .line 152
    iput p2, p0, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    return-void
.end method


# virtual methods
.method public compareTo(I)I
    .locals 1

    .line 161
    iget v0, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 162
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    if-le p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public compareTo(Lcom/itextpdf/layout/font/Range$SubRange;)I
    .locals 1

    .line 157
    iget v0, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    iget p1, p1, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 146
    check-cast p1, Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/Range$SubRange;->compareTo(Lcom/itextpdf/layout/font/Range$SubRange;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/font/Range$SubRange;

    .line 171
    iget v2, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    iget v3, p1, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    iget p1, p1, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
