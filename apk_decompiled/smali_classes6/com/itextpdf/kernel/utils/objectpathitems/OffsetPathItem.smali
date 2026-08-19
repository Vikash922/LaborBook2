.class public final Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;
.super Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;
.source "OffsetPathItem.java"


# instance fields
.field private final offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;-><init>()V

    .line 65
    iput p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    check-cast p1, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;

    iget p1, p1, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 2

    .line 95
    const-string v0, "offset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;->offset:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method
