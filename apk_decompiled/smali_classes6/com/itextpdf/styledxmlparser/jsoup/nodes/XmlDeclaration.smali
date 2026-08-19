.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;
.source "XmlDeclaration.java"


# instance fields
.field private final isProcessingInstruction:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->value:Ljava/lang/Object;

    .line 45
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    return-void
.end method

.method private getWholeDeclaration(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 76
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x20

    .line 77
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 78
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    return-object v0
.end method

.method public getWholeDeclaration()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    :try_start_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->getWholeDeclaration(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "#declaration"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-string p2, "<"

    .line 85
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    const-string v1, "!"

    const-string v2, "?"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 86
    :goto_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 88
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->getWholeDeclaration(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 89
    iget-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 90
    :goto_1
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    .line 91
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
