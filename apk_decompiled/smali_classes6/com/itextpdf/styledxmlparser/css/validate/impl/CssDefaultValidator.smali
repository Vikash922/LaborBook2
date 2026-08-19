.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;
.super Ljava/lang/Object;
.source "CssDefaultValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;


# instance fields
.field protected final defaultValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 27

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "transparent"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v8, "initial"

    aput-object v8, v5, v6

    const-string v9, "inherit"

    aput-object v9, v5, v1

    const-string v10, "currentcolor"

    const/4 v11, 0x3

    aput-object v10, v5, v11

    invoke-direct {v3, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssColorValidator;

    invoke-direct {v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssColorValidator;-><init>()V

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 60
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "normal"

    aput-object v5, v3, v7

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 61
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v1, [Ljava/lang/String;

    const-string v10, "larger"

    aput-object v10, v5, v7

    const-string v10, "smaller"

    aput-object v10, v5, v6

    invoke-direct {v3, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 63
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v10, v7, [Ljava/lang/String;

    invoke-direct {v5, v10}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 64
    sget-object v10, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->FONT_ABSOLUTE_SIZE_KEYWORDS_VALUES:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;->addAllowedValues(Ljava/util/Collection;)V

    .line 65
    new-instance v10, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v12, v11, [Ljava/lang/String;

    aput-object v9, v12, v7

    aput-object v8, v12, v6

    const-string v13, "unset"

    aput-object v13, v12, v1

    invoke-direct {v10, v12}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 68
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v13, p0

    iput-object v12, v13, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;->defaultValidators:Ljava/util/Map;

    .line 69
    const-string v14, "background-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v14, "color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v14, "border-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v14, "border-bottom-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v14, "border-top-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v14, "border-left-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v14, "border-right-color"

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v14, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v15, 0x5

    new-array v4, v15, [Ljava/lang/String;

    const-string v17, "left"

    aput-object v17, v4, v7

    const-string v18, "right"

    aput-object v18, v4, v6

    const-string v19, "none"

    aput-object v19, v4, v1

    aput-object v9, v4, v11

    const-string v19, "center"

    const/16 v16, 0x4

    aput-object v19, v4, v16

    invoke-direct {v14, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v14}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "float"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v14, v15, [Ljava/lang/String;

    const-string v20, "auto"

    aput-object v20, v14, v7

    const-string v21, "always"

    aput-object v21, v14, v6

    const-string v21, "avoid"

    aput-object v21, v14, v1

    aput-object v17, v14, v11

    const/16 v16, 0x4

    aput-object v18, v14, v16

    invoke-direct {v4, v14}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "page-break-before"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v14, v15, [Ljava/lang/String;

    aput-object v20, v14, v7

    const-string v21, "always"

    aput-object v21, v14, v6

    const-string v21, "avoid"

    aput-object v21, v14, v1

    aput-object v17, v14, v11

    const/16 v16, 0x4

    aput-object v18, v14, v16

    invoke-direct {v4, v14}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "page-break-after"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v14, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v15, v11, [Ljava/lang/String;

    aput-object v8, v15, v7

    aput-object v9, v15, v6

    const-string v8, "none"

    aput-object v8, v15, v1

    invoke-direct {v14, v15}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v14, v4, v7

    new-instance v8, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;

    invoke-direct {v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;-><init>()V

    aput-object v8, v4, v6

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "quotes"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssTransformValidator;-><init>()V

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "transform"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v4, 0x4

    new-array v8, v4, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v4, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v4, v8, v7

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v4, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v4, v8, v6

    aput-object v3, v8, v1

    aput-object v5, v8, v11

    invoke-direct {v0, v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "font-size"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v4, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "word-spacing"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v4, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "letter-spacing"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v11, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v4, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v4, v6}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v11, [Ljava/lang/String;

    const-string v8, "each-line"

    aput-object v8, v5, v7

    const-string v8, "hanging"

    aput-object v8, v5, v6

    const-string v8, "hanging each-line"

    aput-object v8, v5, v1

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "text-indent"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v3, 0x5

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v3, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v3, v4, v6

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v3, v4, v1

    aput-object v2, v4, v11

    const/4 v3, 0x4

    aput-object v10, v4, v3

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v4, "line-height"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v3, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v3, v4, v6

    aput-object v2, v4, v1

    aput-object v10, v4, v11

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "column-gap"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v3, 0x4

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v3, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v3, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v3, v4, v6

    aput-object v2, v4, v1

    aput-object v10, v4, v11

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "row-gap"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    invoke-direct {v4, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v4, v3, v7

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "flex-grow"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;

    invoke-direct {v4, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssNumberValueValidator;-><init>(Z)V

    aput-object v4, v3, v7

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "flex-shrink"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    aput-object v20, v4, v7

    const-string v3, "content"

    aput-object v3, v4, v6

    const-string v3, "min-content"

    aput-object v3, v4, v1

    const-string v3, "max-content"

    aput-object v3, v4, v11

    const-string v3, "fit-content"

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    .line 124
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v11, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;

    invoke-direct {v5, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssLengthValueValidator;-><init>(Z)V

    aput-object v5, v4, v7

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;

    invoke-direct {v5, v7}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssPercentageValueValidator;-><init>(Z)V

    aput-object v5, v4, v6

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v0, "flex-basis"

    invoke-interface {v12, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-repeat"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-repeat"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-image"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-image"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-position-x"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-position-x"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-position-y"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-position-y"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-size"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-size"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-clip"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-clip"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;

    const-string v4, "background-origin"

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBackgroundValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-origin"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBlendModeValidator;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssBlendModeValidator;-><init>()V

    invoke-direct {v3, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/ArrayDataTypeValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/SingleTypeDeclarationValidator;-><init>(Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "background-blend-mode"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v11, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v1, [Ljava/lang/String;

    const-string v8, "anywhere"

    aput-object v8, v5, v7

    const-string v8, "break-word"

    aput-object v8, v5, v6

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    aput-object v10, v3, v1

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "overflow-wrap"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v11, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v11, [Ljava/lang/String;

    const-string v8, "break-all"

    aput-object v8, v5, v7

    const-string v8, "keep-all"

    aput-object v8, v5, v6

    const-string v8, "break-word"

    aput-object v8, v5, v1

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v7

    aput-object v2, v3, v6

    aput-object v10, v3, v1

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "word-break"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/String;

    const-string v5, "row"

    aput-object v5, v8, v7

    const-string v5, "row-reverse"

    aput-object v5, v8, v6

    const-string v5, "column"

    aput-object v5, v8, v1

    const-string v5, "column-reverse"

    aput-object v5, v8, v11

    invoke-direct {v4, v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v7

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "flex-direction"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v3, v1, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v11, [Ljava/lang/String;

    const-string v8, "nowrap"

    aput-object v8, v5, v7

    const-string v8, "wrap"

    aput-object v8, v5, v6

    const-string v8, "wrap-reverse"

    aput-object v8, v5, v1

    invoke-direct {v4, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v7

    aput-object v10, v3, v6

    invoke-direct {v0, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    const-string v3, "flex-wrap"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v3, 0x4

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    aput-object v2, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v5, v6, [Ljava/lang/String;

    const-string v8, "baseline"

    aput-object v8, v5, v7

    .line 160
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/String;

    const-string v9, "first"

    aput-object v9, v8, v7

    const-string v9, "last"

    aput-object v9, v8, v6

    .line 161
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v3, v4, v6

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "stretch"

    aput-object v8, v5, v7

    aput-object v19, v5, v6

    const-string v9, "start"

    aput-object v9, v5, v1

    const-string v14, "end"

    aput-object v14, v5, v11

    const-string v15, "flex-start"

    const/16 v16, 0x4

    aput-object v15, v5, v16

    const-string v20, "flex-end"

    const/16 v21, 0x5

    aput-object v20, v5, v21

    const/16 v22, 0x6

    const-string v23, "self-start"

    aput-object v23, v5, v22

    const/4 v11, 0x7

    const-string v24, "self-end"

    aput-object v24, v5, v11

    .line 163
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v11, v1, [Ljava/lang/String;

    const-string v25, "safe"

    aput-object v25, v11, v7

    const-string v26, "unsafe"

    aput-object v26, v11, v6

    .line 166
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v5, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v3, v4, v1

    const/4 v3, 0x3

    aput-object v10, v4, v3

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 158
    const-string v4, "align-items"

    invoke-interface {v12, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v11, 0x7

    new-array v3, v11, [Ljava/lang/String;

    const-string v11, "space-around"

    aput-object v11, v3, v7

    const-string v11, "space-between"

    aput-object v11, v3, v6

    const-string v11, "space-evenly"

    aput-object v11, v3, v1

    const/4 v11, 0x3

    aput-object v8, v3, v11

    const-string v11, "normal"

    const/16 v16, 0x4

    aput-object v11, v3, v16

    const/4 v11, 0x5

    aput-object v17, v3, v11

    aput-object v18, v3, v22

    .line 169
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;)V

    aput-object v5, v4, v7

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v5, 0x7

    new-array v11, v5, [Ljava/lang/String;

    aput-object v19, v11, v7

    aput-object v9, v11, v6

    aput-object v15, v11, v1

    const/4 v5, 0x3

    aput-object v23, v11, v5

    const/4 v5, 0x4

    aput-object v14, v11, v5

    const/4 v5, 0x5

    aput-object v20, v11, v5

    aput-object v24, v11, v22

    .line 173
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v11, v1, [Ljava/lang/String;

    aput-object v25, v11, v7

    const-string v26, "unsafe"

    aput-object v26, v11, v6

    .line 177
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v5, v11}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v3, v4, v6

    aput-object v10, v4, v1

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 168
    const-string v3, "justify-content"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;

    const/4 v3, 0x5

    new-array v4, v3, [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    aput-object v2, v4, v7

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "baseline"

    aput-object v5, v3, v7

    .line 182
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/String;

    const-string v11, "first"

    aput-object v11, v5, v7

    const-string v11, "last"

    aput-object v11, v5, v6

    .line 183
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v2, v4, v6

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    aput-object v8, v3, v7

    aput-object v19, v3, v6

    aput-object v9, v3, v1

    const/4 v5, 0x3

    aput-object v14, v3, v5

    const/4 v5, 0x4

    aput-object v15, v3, v5

    const/4 v5, 0x5

    aput-object v20, v3, v5

    aput-object v23, v3, v22

    const/4 v5, 0x7

    aput-object v24, v3, v5

    const/16 v5, 0x8

    aput-object v17, v3, v5

    const/16 v5, 0x9

    aput-object v18, v3, v5

    .line 185
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/String;

    aput-object v25, v5, v7

    const-string v8, "unsafe"

    aput-object v8, v5, v6

    .line 189
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    aput-object v2, v4, v1

    new-instance v2, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const-string v8, "legacy"

    aput-object v8, v5, v7

    const-string v7, "legacy left"

    aput-object v7, v5, v6

    const-string v6, "legacy right"

    aput-object v6, v5, v1

    const-string v1, "legacy center"

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-direct {v2, v5}, Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssEnumValidator;-><init>([Ljava/lang/String;)V

    aput-object v2, v4, v6

    aput-object v10, v4, v3

    invoke-direct {v0, v4}, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;-><init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V

    .line 180
    const-string v1, "justify-items"

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/CssDefaultValidator;->defaultValidators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;->isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
