.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;
.super Ljava/lang/Object;
.source "MultiTypeDeclarationValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;


# instance fields
.field private allowedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;->allowedTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;->allowedTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
