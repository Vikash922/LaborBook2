.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;
.super Ljava/lang/Object;
.source "SingleTypeDeclarationValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;


# instance fields
.field private dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    return-void
.end method


# virtual methods
.method public isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
