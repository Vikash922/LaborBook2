.class public Lcom/itextpdf/layout/renderer/LinkRenderer;
.super Lcom/itextpdf/layout/renderer/TextRenderer;
.source "LinkRenderer.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Link;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Link;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/renderer/LinkRenderer;-><init>(Lcom/itextpdf/layout/element/Link;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Link;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LinkRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    if-nez v0, :cond_0

    .line 79
    const-class p1, Lcom/itextpdf/layout/renderer/LinkRenderer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 80
    const-string v0, "Drawing won\'t be performed."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Occupied area has not been initialized. {0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->draw(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 86
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/LinkRenderer;->isRelativePosition()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/LinkRenderer;->applyRelativePositioningTranslation(Z)V

    :cond_1
    return-void
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 107
    const-class v0, Lcom/itextpdf/layout/renderer/LinkRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/LinkRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 108
    new-instance v0, Lcom/itextpdf/layout/renderer/LinkRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/LinkRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/Link;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/LinkRenderer;-><init>(Lcom/itextpdf/layout/element/Link;)V

    return-object v0
.end method
