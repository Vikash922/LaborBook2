.class public Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
.super Ljava/lang/Object;
.source "CssDeclaration.java"


# instance fields
.field private expression:Ljava/lang/String;

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->resolveAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->normalizeCssProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    return-object v0
.end method

.method resolveAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "word-wrap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string p1, "overflow-wrap"

    :cond_0
    return-object p1
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->property:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->expression:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{0}: {1}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
