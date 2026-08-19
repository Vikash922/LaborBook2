.class public final Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils;
.super Ljava/lang/Object;
.source "CssBackgroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundPropertyNameFromType(Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$1;->$SwitchMap$com$itextpdf$styledxmlparser$css$util$CssBackgroundUtils$BackgroundPropertyType:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 88
    const-string p0, "undefined"

    return-object p0

    .line 86
    :pswitch_0
    const-string p0, "background-attachment"

    return-object p0

    .line 84
    :pswitch_1
    const-string p0, "background-clip"

    return-object p0

    .line 82
    :pswitch_2
    const-string p0, "background-origin"

    return-object p0

    .line 80
    :pswitch_3
    const-string p0, "background-repeat"

    return-object p0

    .line 78
    :pswitch_4
    const-string p0, "background-size"

    return-object p0

    .line 76
    :pswitch_5
    const-string p0, "background-position-y"

    return-object p0

    .line 74
    :pswitch_6
    const-string p0, "background-position-x"

    return-object p0

    .line 72
    :pswitch_7
    const-string p0, "background-position"

    return-object p0

    .line 70
    :pswitch_8
    const-string p0, "background-image"

    return-object p0

    .line 68
    :pswitch_9
    const-string p0, "background-color"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseBackgroundRepeat(Ljava/lang/String;)Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;
    .locals 3

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "space"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "round"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "no-repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "repeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    .line 55
    sget-object p0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object p0

    .line 52
    :cond_1
    sget-object p0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->SPACE:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object p0

    .line 50
    :cond_2
    sget-object p0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object p0

    .line 48
    :cond_3
    sget-object p0, Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/properties/BackgroundRepeat$BackgroundRepeatValue;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3d265 -> :sswitch_3
        -0x2b3140d9 -> :sswitch_2
        0x67ab18e -> :sswitch_1
        0x688f106 -> :sswitch_0
    .end sparse-switch
.end method

.method public static resolveBackgroundPropertyType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;
    .locals 2

    .line 100
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x29

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssGradientUtil;->isCssLinearGradientValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 107
    :cond_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_REPEAT_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_REPEAT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 110
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_ATTACHMENT_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ATTACHMENT:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 113
    :cond_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_X_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "center"

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_X:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 117
    :cond_4
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_POSITION_Y_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 119
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_Y:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 121
    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    :cond_6
    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 125
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isMetricValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 128
    :cond_7
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_SIZE_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 131
    :cond_8
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isColorProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 132
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_COLOR:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 134
    :cond_9
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/CommonCssConstants;->BACKGROUND_ORIGIN_OR_CLIP_VALUES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 135
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_ORIGIN_OR_CLIP:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 137
    :cond_a
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->UNDEFINED:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 126
    :cond_b
    :goto_0
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_POSITION_OR_SIZE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0

    .line 105
    :cond_c
    :goto_1
    sget-object p0, Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;->BACKGROUND_IMAGE:Lcom/itextpdf/styledxmlparser/css/util/CssBackgroundUtils$BackgroundPropertyType;

    return-object p0
.end method
