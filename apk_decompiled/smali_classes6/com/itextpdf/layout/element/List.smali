.class public Lcom/itextpdf/layout/element/List;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/List;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIST_SYMBOL:Ljava/lang/String; = "- "


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/properties/ListNumberingType;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/List;->setListSymbol(Lcom/itextpdf/layout/properties/ListNumberingType;)Lcom/itextpdf/layout/element/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/ListItem;)Lcom/itextpdf/layout/element/List;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/itextpdf/layout/element/List;
    .locals 1

    .line 119
    new-instance v0, Lcom/itextpdf/layout/element/ListItem;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->add(Lcom/itextpdf/layout/element/ListItem;)Lcom/itextpdf/layout/element/List;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "L"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/List;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

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

    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    const/16 v0, 0x53

    if-eq p1, v0, :cond_2

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    const-string p1, ". "

    return-object p1

    .line 91
    :cond_1
    const-string p1, ""

    return-object p1

    .line 95
    :cond_2
    sget-object p1, Lcom/itextpdf/layout/properties/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    return-object p1

    .line 89
    :cond_3
    new-instance p1, Lcom/itextpdf/layout/element/Text;

    const-string v0, "- "

    invoke-direct {p1, v0}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getPostSymbolText()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2a

    .line 229
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreSymbolText()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x29

    .line 247
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolIndent()Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x27

    .line 209
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 269
    new-instance v0, Lcom/itextpdf/layout/renderer/ListRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ListRenderer;-><init>(Lcom/itextpdf/layout/element/List;)V

    return-object v0
.end method

.method public setItemStartIndex(I)Lcom/itextpdf/layout/element/List;
    .locals 1

    const/16 v0, 0x24

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/List;
    .locals 1

    const/16 v0, 0x25

    .line 164
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/List;
    .locals 1

    const/16 v0, 0x25

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Lcom/itextpdf/layout/properties/ListNumberingType;)Lcom/itextpdf/layout/element/List;
    .locals 1

    .line 177
    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-ne p1, v0, :cond_1

    .line 179
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->setPostSymbolText(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x25

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListSymbol(Ljava/lang/String;)Lcom/itextpdf/layout/element/List;
    .locals 1

    .line 141
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/List;->setListSymbol(Lcom/itextpdf/layout/element/Text;)Lcom/itextpdf/layout/element/List;

    move-result-object p1

    return-object p1
.end method

.method public setListSymbolAlignment(Lcom/itextpdf/layout/properties/ListSymbolAlignment;)Lcom/itextpdf/layout/element/List;
    .locals 1

    const/16 v0, 0x26

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setPostSymbolText(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2a

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setPreSymbolText(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x29

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setSymbolIndent(F)Lcom/itextpdf/layout/element/List;
    .locals 1

    const/16 v0, 0x27

    .line 219
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/List;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method
