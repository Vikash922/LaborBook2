.class public Lcom/itextpdf/layout/element/ListItem;
.super Lcom/itextpdf/layout/element/Div;
.source "ListItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Div;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Image;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/itextpdf/layout/element/ListItem;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/ListItem;->add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Div;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/layout/element/ListItem;-><init>()V

    .line 75
    new-instance v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setMarginTop(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Paragraph;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setMarginBottom(F)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/element/IBlockElement;

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/ListItem;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;

    return-void
.end method


# virtual methods
.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/itextpdf/layout/element/ListItem;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "LBody"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/ListItem;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/ListItem;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x53

    if-eq p1, v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/Div;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    sget-object p1, Lcom/itextpdf/layout/properties/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    return-object p1
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 167
    new-instance v0, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ListItemRenderer;-><init>(Lcom/itextpdf/layout/element/ListItem;)V

    return-object v0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/ListItem;
    .locals 1

    const/16 v0, 0x25

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/ListItem;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/ListItem;
    .locals 1

    const/16 v0, 0x25

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/ListItem;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/properties/ListNumberingType;)Lcom/itextpdf/layout/element/ListItem;
    .locals 2

    .line 149
    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    .line 151
    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/ListItem;->setProperty(ILjava/lang/Object;)V

    :cond_1
    const/16 v0, 0x25

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/ListItem;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Ljava/lang/String;)Lcom/itextpdf/layout/element/ListItem;
    .locals 1

    .line 116
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/ListItem;->setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/ListItem;

    move-result-object p1

    return-object p1
.end method

.method public setListSymbolOrdinalValue(I)Lcom/itextpdf/layout/element/ListItem;
    .locals 1

    const/16 v0, 0x78

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/ListItem;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method
