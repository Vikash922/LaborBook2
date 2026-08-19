.class public Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;
.super Lcom/itextpdf/styledxmlparser/css/CssAtRule;
.source "CssSemicolonAtRule.java"


# instance fields
.field private ruleParams:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRuleFactory;->extractRuleNameFromDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/CssAtRule;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssSemicolonAtRule;->ruleParams:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@{0} {1};"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
