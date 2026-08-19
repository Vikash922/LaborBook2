.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;
.super Ljava/lang/Object;
.source "ArrayDataTypeValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# instance fields
.field private final dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->splitStringWithComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;->dataTypeValidator:Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
