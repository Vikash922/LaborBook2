.class public Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;
.super Ljava/lang/Object;
.source "DefaultSvgProcessor.java"

# interfaces
.implements Lcom/itextpdf/svg/processors/ISvgProcessor;


# instance fields
.field private context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

.field private cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

.field private namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

.field private rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createResultAndClean()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->pop()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    return-object v0
.end method

.method private processAsText(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 0

    .line 242
    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    return p1
.end method

.method private processText(Lcom/itextpdf/styledxmlparser/node/ITextNode;)V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->top()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    .line 253
    instance-of v1, v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/ITextNode;->wholeText()Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/itextpdf/svg/utils/SvgTextUtil;->isOnlyWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    new-instance v2, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;

    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const-string v4, ":text-leaf"

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 257
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    .line 258
    invoke-interface {v1, v2, v0}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    .line 259
    invoke-interface {v1, v0}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 260
    const-string v2, "text_content"

    invoke-interface {v1, v2, p1}, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    check-cast v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    :cond_0
    return-void
.end method

.method private visit(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 5

    .line 184
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_6

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 187
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    invoke-interface {v1, v0}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 188
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->top()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    invoke-interface {v2, v0, v1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 191
    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    iget-object v4, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v4}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/itextpdf/styledxmlparser/css/ICssResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object p1

    .line 193
    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->setStyles(Ljava/util/Map;)V

    .line 195
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 197
    const-string p1, "id"

    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    instance-of p1, v2, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    if-eqz p1, :cond_1

    .line 203
    instance-of p1, v1, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    if-eqz p1, :cond_3

    .line 206
    check-cast v1, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-virtual {v1, v2}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    goto :goto_0

    .line 210
    :cond_1
    instance-of p1, v2, Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;

    if-nez p1, :cond_3

    instance-of p1, v1, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    if-nez p1, :cond_3

    .line 211
    instance-of p1, v1, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;

    if-eqz p1, :cond_2

    .line 212
    check-cast v1, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;

    invoke-interface {v1, v2}, Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    goto :goto_0

    .line 213
    :cond_2
    instance-of p1, v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    if-eqz p1, :cond_3

    instance-of p1, v2, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    if-eqz p1, :cond_3

    .line 215
    check-cast v1, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    move-object p1, v2

    check-cast p1, Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;

    invoke-virtual {v1, p1}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;->addChild(Lcom/itextpdf/svg/renderers/impl/ISvgTextNodeRenderer;)V

    .line 219
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->push(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 222
    :cond_4
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 223
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->visit(Lcom/itextpdf/styledxmlparser/node/INode;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    .line 227
    iget-object p1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {p1}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->pop()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    goto :goto_2

    .line 230
    :cond_6
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processAsText(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    invoke-direct {p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processText(Lcom/itextpdf/styledxmlparser/node/ITextNode;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method executeDepthFirstTraversal(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 4

    .line 147
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v0, v1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;->createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    iget-object v3, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/itextpdf/styledxmlparser/css/ICssResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object v2

    .line 153
    invoke-interface {v1, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->setStyles(Ljava/util/Map;)V

    .line 154
    invoke-interface {v0, v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 155
    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;->push(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 156
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 157
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->visit(Lcom/itextpdf/styledxmlparser/node/INode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method findFirstElement(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .locals 3

    .line 274
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 275
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 278
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 279
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object v1

    .line 285
    :cond_1
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 289
    :cond_2
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 290
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_3

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method performSetup(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/itextpdf/svg/processors/impl/ProcessorState;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/ProcessorState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->processorState:Lcom/itextpdf/svg/processors/impl/ProcessorState;

    .line 128
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->rendererFactory:Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    .line 133
    :goto_0
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {v0, p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;-><init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 134
    new-instance p2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {p2, p1, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    iput-object p2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    .line 135
    new-instance p1, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;

    iget-object p2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;-><init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    iget-object p2, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->cssResolver:Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    invoke-virtual {p1, p2}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->addFontFaceFonts(Lcom/itextpdf/styledxmlparser/css/ICssResolver;)V

    .line 137
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    return-void
.end method

.method public process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/svg/exceptions/SvgProcessingException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 103
    new-instance p2, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {p2}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->performSetup(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 109
    const-string p2, "svg"

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->findFirstElement(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IElementNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->executeDepthFirstTraversal(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 114
    invoke-direct {p0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->createResultAndClean()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->namedObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-direct {p2, v0, p1, v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;-><init>(Ljava/util/Map;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    return-object p2

    .line 117
    :cond_1
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "No root found"

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "Input root value is null"

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
