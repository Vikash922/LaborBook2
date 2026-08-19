.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.source "FormElement.java"


# instance fields
.field private final elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 37
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    return-object v0
.end method

.method public elements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    return-object v0
.end method

.method public formData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 84
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isFormSubmittable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    const-string v3, "disabled"

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 88
    :cond_3
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    const-string v5, "button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 92
    :cond_4
    const-string v5, "select"

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 93
    const-string v4, "option[selected]"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 96
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    if-nez v5, :cond_0

    .line 100
    const-string v4, "option"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_6
    const-string v5, "checkbox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "radio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :cond_8
    :goto_2
    const-string v4, "checked"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const-string v2, "on"

    .line 108
    :goto_3
    invoke-static {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method protected removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 71
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->remove(Ljava/lang/Object;)Z

    return-void
.end method
