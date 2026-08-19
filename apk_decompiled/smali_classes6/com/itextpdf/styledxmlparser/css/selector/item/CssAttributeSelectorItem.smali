.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;
.super Ljava/lang/Object;
.source "CssAttributeSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private matchSymbol:C

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    const/16 v1, 0x3d

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 77
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    add-int/lit8 v4, v1, 0x2

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    :goto_1
    add-int/lit8 v4, v1, -0x1

    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    .line 83
    const-string v6, "~^$*|"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 84
    iput-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    .line 85
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 5

    .line 105
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_e

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 109
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 116
    :cond_2
    iget-char v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    if-eqz v3, :cond_d

    const/16 v4, 0x24

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_9

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_7

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_4

    const/16 v2, 0x7e

    if-eq v3, v2, :cond_3

    return v1

    .line 126
    :cond_3
    const-string v1, "(^{0}\\s+)|(\\s+{1}\\s+)|(\\s+{2}$)"

    filled-new-array {v0, v0, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    .line 120
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 122
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 129
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    return v1

    .line 124
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    return v1

    .line 118
    :cond_d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_e
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[{0}]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->property:Ljava/lang/String;

    iget-char v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->matchSymbol:C

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssAttributeSelectorItem;->value:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[{0}{1}=\"{2}\"]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
