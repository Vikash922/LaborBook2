.class Lcom/itextpdf/forms/xfa/Xml2SomDatasets;
.super Lcom/itextpdf/forms/xfa/Xml2Som;
.source "Xml2SomDatasets.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/Xml2Som;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->anform:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearch:Ljava/util/Map;

    .line 69
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method private static hasChildren(Lorg/w3c/dom/Node;)Z
    .locals 4

    .line 118
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v2, "dataNode"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v3, "dataGroup"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 123
    :cond_0
    const-string v3, "dataValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 128
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 130
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 133
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_4
    return v2
.end method

.method private processDatasetsInternal(Lorg/w3c/dom/Node;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 143
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 144
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->hasChildren(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->printStack()Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchAdd(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 161
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 12

    .line 80
    invoke-static {p2}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object v0

    .line 81
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 83
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 84
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 85
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v4

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 87
    invoke-virtual {v0, v5}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x5b

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 89
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v3

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 92
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    const/4 v9, -0x1

    :goto_2
    if-eqz v7, :cond_2

    .line 93
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v3, :cond_1

    .line 94
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_1

    goto :goto_3

    .line 92
    :cond_1
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v9, v6, :cond_3

    .line 103
    invoke-interface {v1, v4, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 104
    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 105
    const-string v10, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v11, "dataNode"

    invoke-interface {v1, v10, v11}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    .line 106
    const-string v11, "dataGroup"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 107
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object p1, v7

    move-object v6, p1

    goto :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearch:Ljava/util/Map;

    invoke-static {p1, v0, p2}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchAdd(Ljava/util/Map;Ljava/util/Stack;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->name2Node:Ljava/util/Map;

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->order:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method
