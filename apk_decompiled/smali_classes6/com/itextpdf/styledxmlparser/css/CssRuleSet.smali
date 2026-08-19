.class public Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
.super Lcom/itextpdf/styledxmlparser/css/CssStatement;
.source "CssRuleSet.java"


# static fields
.field private static final IMPORTANT_MATCHER:Ljava/util/regex/Pattern;


# instance fields
.field private importantDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private normalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, ".*!\\s*important$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->IMPORTANT_MATCHER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/CssStatement;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-static {p2, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->splitDeclarationsIntoNormalAndImportant(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/CssStatement;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 89
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    .line 90
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    return-void
.end method

.method private static splitDeclarationsIntoNormalAndImportant(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 165
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->IMPORTANT_MATCHER:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getImportantDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getNormalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getSelector()Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ";\n"

    const-string v5, "    "

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 118
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-gtz v1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 122
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !important"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_4
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
