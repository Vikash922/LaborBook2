.class public Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;
.super Ljava/lang/Object;
.source "CssDeclarationValidationMaster.java"


# static fields
.field private static VALIDATOR:Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->VALIDATOR:Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 1

    .line 72
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->VALIDATOR:Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;

    invoke-interface {v0, p0}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;->isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static setValidator(Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;)V
    .locals 0

    .line 85
    sput-object p0, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->VALIDATOR:Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;

    return-void
.end method
