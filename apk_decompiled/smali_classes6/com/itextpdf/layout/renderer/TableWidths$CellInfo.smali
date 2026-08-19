.class Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;
.super Ljava/lang/Object;
.source "TableWidths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/TableWidths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final BODY:B = 0x2t

.field static final FOOTER:B = 0x3t

.field static final HEADER:B = 0x1t


# instance fields
.field private final cell:Lcom/itextpdf/layout/renderer/CellRenderer;

.field private final col:I

.field final region:B

.field private final row:I


# direct methods
.method constructor <init>(Lcom/itextpdf/layout/renderer/CellRenderer;IIB)V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 920
    iput-byte p4, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    .line 922
    iput p2, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->row:I

    .line 923
    iput p3, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->col:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)I
    .locals 4

    .line 950
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result p1

    :goto_1
    sub-int/2addr v0, p1

    return v0

    .line 953
    :cond_2
    iget-byte v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    iget-byte v1, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 954
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result p1

    goto :goto_1

    .line 956
    :cond_3
    iget-byte v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    iget-byte v1, p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_2

    :cond_4
    sub-int/2addr v0, v1

    :goto_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 908
    check-cast p1, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->compareTo(Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;)I

    move-result p1

    return p1
.end method

.method getCell()Lcom/itextpdf/layout/renderer/CellRenderer;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    return-object v0
.end method

.method getCol()I
    .locals 1

    .line 931
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->col:I

    return v0
.end method

.method getColspan()I
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getRow()I
    .locals 1

    .line 940
    iget v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->row:I

    return v0
.end method

.method getRowspan()I
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setParent(Lcom/itextpdf/layout/renderer/TableRenderer;)V
    .locals 2

    .line 974
    iget-byte v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 975
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->headerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 977
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TableRenderer;->footerRenderer:Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->cell:Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 962
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRow()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getCol()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getRowspan()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->getColspan()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 961
    const-string v1, "row={0}, col={1}, rowspan={2}, colspan={3}, "

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 963
    iget-byte v1, p0, Lcom/itextpdf/layout/renderer/TableWidths$CellInfo;->region:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "footer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
