.class public final Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;
.super Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;
.source "TrailerPath.java"


# static fields
.field private static final INITIAL_LINE:Ljava/lang/String; = "Base cmp object: trailer. Base out object: trailer"


# instance fields
.field private final cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private final outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 62
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 76
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 77
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->getOutDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->getCmpDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 69
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->getLocalPath()Ljava/util/Stack;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;

    iget-object v3, v2, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v2, v2, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    check-cast p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    iget-object p1, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 162
    invoke-virtual {v1, p1}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getCmpDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getOutDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->outDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->cmpDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Base cmp object: trailer. Base out object: trailer"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    const/16 v3, 0xa

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 4

    .line 106
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 107
    const-string v1, "base"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 108
    const-string v2, "cmp"

    const-string v3, "trailer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "out"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 111
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    .line 112
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;->toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method
