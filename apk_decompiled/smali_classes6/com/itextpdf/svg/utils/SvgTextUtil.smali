.class public final Lcom/itextpdf/svg/utils/SvgTextUtil;
.super Ljava/lang/Object;
.source "SvgTextUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterReferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 211
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "url("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isOnlyWhiteSpace(Ljava/lang/String;)Z
    .locals 2

    .line 170
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 175
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V
    .locals 6

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 137
    instance-of v1, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v1, :cond_1

    .line 139
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->containsAbsolutePositionChange()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/svg/utils/SvgTextUtil;->processWhiteSpace(Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;Z)V

    .line 140
    invoke-virtual {v1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->markWhiteSpaceProcessed()V

    .line 142
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    .line 146
    const-string v1, "text_content"

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/util/WhiteSpaceUtil;->collapseConsecutiveSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 151
    invoke-static {v2}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {v2}, Lcom/itextpdf/svg/utils/SvgTextUtil;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    .line 158
    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static resolveFontSize(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;F)F
    .locals 1

    .line 188
    const-string v0, "font-size"

    invoke-interface {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "larger"

    .line 191
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smaller"

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string v0, "px"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeFontSize(Ljava/lang/String;F)F

    move-result p0

    goto :goto_1

    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 198
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move p1, p0

    :cond_4
    :goto_2
    return p1
.end method

.method public static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 73
    const-string p0, ""

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 96
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
