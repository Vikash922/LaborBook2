.class public Lcom/itextpdf/svg/css/impl/SvgStyleResolver;
.super Ljava/lang/Object;
.source "SvgStyleResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/ICssResolver;


# static fields
.field private static final DEFAULT_CSS_PATH:Ljava/lang/String; = "com/itextpdf/svg/default.css"

.field private static final DEFAULT_FONT_SIZE:F

.field private static final ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

.field public static final INHERITANCE_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

.field private deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstSvgElement:Z

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;

    invoke-direct {v3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;

    invoke-direct {v3}, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 101
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    const/4 v0, 0x4

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "marker"

    aput-object v2, v0, v4

    const-string v2, "linearGradient"

    aput-object v2, v0, v5

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pattern"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

    .line 108
    const-string v0, "font-size"

    .line 109
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    .line 111
    const-class v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 168
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 169
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;)V

    .line 171
    invoke-direct {p0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 150
    :try_start_0
    const-string v0, "com/itextpdf/svg/default.css"

    invoke-static {v0}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 152
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 150
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 152
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Error loading the default CSS. Initializing an empty style sheet."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 156
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 140
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 141
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-void
.end method

.method private collectCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;)V
    .locals 4

    .line 335
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 336
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 341
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 342
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v1, :cond_6

    .line 343
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 344
    const-string v2, "style"

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    if-nez v1, :cond_1

    .line 347
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    if-eqz v1, :cond_6

    .line 349
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    if-eqz v1, :cond_2

    .line 350
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/IDataNode;->getWholeData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 352
    :cond_2
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/ITextNode;->wholeText()Ljava/lang/String;

    move-result-object v1

    .line 354
    :goto_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v1

    .line 357
    iget-object v2, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V

    goto :goto_3

    .line 360
    :cond_3
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 361
    const-string v2, "href"

    invoke-interface {v1, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :try_start_0
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveResourceAsInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    .line 365
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v2, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v1

    .line 366
    iget-object v3, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v3, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 362
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_4

    .line 368
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 369
    sget-object v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to process external css file"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    :cond_6
    :goto_3
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 374
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_7

    .line 375
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-void
.end method

.method private collectFonts()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 395
    invoke-direct {p0, v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 1

    .line 405
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    check-cast p1, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 408
    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->matchMediaDevice(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 410
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z
    .locals 2

    .line 205
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-nez p0, :cond_1

    return v1

    .line 212
    :cond_1
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_2
    invoke-static {p0, p1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isStartedWithHash(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 331
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static onlyNativeStylesShouldBeResolved(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 6

    .line 254
    sget-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 255
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    invoke-static {p0, v4}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 260
    :cond_2
    const-string v0, "defs"

    invoke-static {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private parseStylesFromStyleAttribute(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 436
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private processAttribute(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/IAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xlink:href"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 425
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->processXLink(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V

    goto :goto_1

    .line 419
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->parseStylesFromStyleAttribute(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 420
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private processXLink(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/IAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isStartedWithHash(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isDataSrc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 318
    sget-object v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to resolve image path with given base URI ({0}) and image source path ({1})"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/svg/css/SvgCssContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 175
    const-string v0, "font-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNegativeValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 181
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "0.####"

    if-nez v2, :cond_3

    const-string v2, "larger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "smaller"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 197
    sget p1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    float-to-double p1, p1

    invoke-static {p1, p2, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 199
    :cond_2
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 184
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRemValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_4

    .line 185
    sget p1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result p1

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 188
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result p1

    goto :goto_1

    .line 190
    :cond_6
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result p1

    .line 193
    :goto_1
    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeFontSize(Ljava/lang/String;F)F

    move-result p1

    float-to-double p1, p1

    .line 195
    invoke-static {p1, p2, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "pt"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/css/SvgCssContext;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/svg/css/SvgCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveNativeStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object v0

    .line 266
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-static {v2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->onlyNativeStylesShouldBeResolved(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 272
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;

    const-string v3, "font-size"

    if-eqz v2, :cond_2

    .line 273
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;

    .line 274
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;->getStyles()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    .line 276
    instance-of v2, v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-nez v2, :cond_1

    .line 277
    sget-object v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Element parent styles are not resolved. Styles for current element might be incorrect."

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 281
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    invoke-static {v0, v6, v5, v2, v7}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 289
    :cond_3
    invoke-static {v0, p2, v2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 292
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 293
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "svg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    .line 294
    :goto_1
    iget-boolean v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 295
    iput-boolean v2, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 296
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 298
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itextpdf/svg/css/SvgCssContext;->setRootFontSize(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getFonts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public resolveNativeStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 238
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->createDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v1

    .line 237
    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 240
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_1

    .line 245
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 246
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;

    move-result-object p1

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IAttribute;

    .line 247
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->processAttribute(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    instance-of v0, p2, Lcom/itextpdf/svg/css/SvgCssContext;

    if-eqz v0, :cond_0

    .line 222
    check-cast p2, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/css/SvgCssContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "Custom AbstractCssContext implementations are not supported yet"

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
