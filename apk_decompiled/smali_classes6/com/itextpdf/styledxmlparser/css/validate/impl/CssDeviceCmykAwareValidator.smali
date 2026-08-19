.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;
.super Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;
.source "CssDeviceCmykAwareValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 37
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;-><init>()V

    .line 38
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "transparent"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "initial"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "inherit"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "currentcolor"

    aput-object v5, v4, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v1, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssCmykAwareColorValidator;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssCmykAwareColorValidator;-><init>()V

    aput-object v1, v2, v7

    invoke-direct {v0, v2}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 42
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "background-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "border-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "border-bottom-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "border-top-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "border-left-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDeviceCmykAwareValidator;->defaultValidators:Ljava/util/Map;

    const-string v2, "border-right-color"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
