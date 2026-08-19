.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
.source "HtmlTreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MaxScopeSearchDepth:I = 0x64

.field static final TagSearchButton:[Ljava/lang/String;

.field static final TagSearchEndTags:[Ljava/lang/String;

.field static final TagSearchList:[Ljava/lang/String;

.field static final TagSearchSelectScope:[Ljava/lang/String;

.field static final TagSearchSpecial:[Ljava/lang/String;

.field static final TagSearchTableScope:[Ljava/lang/String;

.field static final TagsSearchInScope:[Ljava/lang/String;

.field private static final maxQueueDepth:I = 0x100


# instance fields
.field private baseUriSetFromDoc:Z

.field private contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field private formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

.field private formattingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private fosterInserts:Z

.field private fragmentParsing:Z

.field private framesetOk:Z

.field private headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field private pendingTableCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private specificScopeTarget:[Ljava/lang/String;

.field private state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0x8

    .line 47
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "applet"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "caption"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "html"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "marquee"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "object"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "table"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "td"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "th"

    aput-object v17, v1, v16

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    .line 48
    new-array v1, v6, [Ljava/lang/String;

    const-string v18, "ol"

    aput-object v18, v1, v2

    const-string v19, "ul"

    aput-object v19, v1, v4

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    .line 49
    new-array v1, v4, [Ljava/lang/String;

    const-string v20, "button"

    aput-object v20, v1, v2

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    .line 50
    new-array v1, v6, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v13, v1, v4

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    .line 51
    new-array v1, v6, [Ljava/lang/String;

    const-string v21, "optgroup"

    aput-object v21, v1, v2

    const-string v22, "option"

    aput-object v22, v1, v4

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    .line 52
    new-array v1, v0, [Ljava/lang/String;

    const-string v23, "dd"

    aput-object v23, v1, v2

    const-string v23, "dt"

    aput-object v23, v1, v4

    const-string v23, "li"

    aput-object v23, v1, v6

    aput-object v21, v1, v8

    aput-object v22, v1, v10

    const-string v21, "p"

    aput-object v21, v1, v12

    const-string v21, "rp"

    aput-object v21, v1, v14

    const-string v21, "rt"

    aput-object v21, v1, v16

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    const/16 v1, 0x4f

    .line 53
    new-array v1, v1, [Ljava/lang/String;

    const-string v21, "address"

    aput-object v21, v1, v2

    aput-object v3, v1, v4

    const-string v2, "area"

    aput-object v2, v1, v6

    const-string v2, "article"

    aput-object v2, v1, v8

    const-string v2, "aside"

    aput-object v2, v1, v10

    const-string v2, "base"

    aput-object v2, v1, v12

    const-string v2, "basefont"

    aput-object v2, v1, v14

    const-string v2, "bgsound"

    aput-object v2, v1, v16

    const-string v2, "blockquote"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "body"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "br"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v20, v1, v0

    const/16 v0, 0xc

    aput-object v5, v1, v0

    const/16 v0, 0xd

    const-string v2, "center"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "col"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "colgroup"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "command"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "dd"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "details"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "dir"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "div"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "dl"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "dt"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "embed"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "fieldset"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "figcaption"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "figure"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "footer"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "form"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "frame"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "frameset"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "h1"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "h2"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "h3"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "h4"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "h5"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "h6"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "head"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "header"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "hgroup"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "hr"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    aput-object v7, v1, v0

    const/16 v0, 0x2a

    const-string v2, "iframe"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "img"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "input"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "isindex"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "li"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "link"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "listing"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    aput-object v9, v1, v0

    const/16 v0, 0x32

    const-string v2, "menu"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "meta"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "nav"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "noembed"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "noframes"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "noscript"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    aput-object v11, v1, v0

    const/16 v0, 0x39

    aput-object v18, v1, v0

    const/16 v0, 0x3a

    const-string v2, "p"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string v2, "param"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string v2, "plaintext"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string v2, "pre"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string v2, "script"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string v2, "section"

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-string v2, "select"

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-string v2, "style"

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-string v2, "summary"

    aput-object v2, v1, v0

    const/16 v0, 0x43

    aput-object v13, v1, v0

    const/16 v0, 0x44

    const-string v2, "tbody"

    aput-object v2, v1, v0

    const/16 v0, 0x45

    aput-object v15, v1, v0

    const/16 v0, 0x46

    const-string v2, "textarea"

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-string v2, "tfoot"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    aput-object v17, v1, v0

    const/16 v0, 0x49

    const-string v2, "thead"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "title"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "tr"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    aput-object v19, v1, v0

    const/16 v0, 0x4d

    const-string v2, "wbr"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "xmp"

    aput-object v2, v1, v0

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;-><init>()V

    const/4 v0, 0x1

    .line 506
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    return-void
.end method

.method private varargs clearStackToContext([Ljava/lang/String;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 423
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 510
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x65

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_4

    .line 520
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    .line 523
    :cond_1
    invoke-static {v2, p2}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 525
    invoke-static {v2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isFosterInserts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 320
    :goto_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isFormListed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->addElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    :cond_2
    return-void
.end method

.method private isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ")Z"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_2

    .line 348
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-ne v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private isSameFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2

    .line 676
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ")V"
        }
    .end annotation

    .line 452
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 453
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 454
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 433
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method checkActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 660
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v2, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSameFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 668
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method clearFormattingElementsToLastMarker()V
    .locals 1

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeLastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method clearStackToTableBodyContext()V
    .locals 3

    const/4 v0, 0x4

    .line 413
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method clearStackToTableContext()V
    .locals 3

    const/4 v0, 0x1

    .line 409
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method clearStackToTableRowContext()V
    .locals 3

    const/4 v0, 0x2

    .line 417
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method defaultSettings()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;
    .locals 1

    .line 80
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->htmlDefault:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->getErrors()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->parser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->getErrors()Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->tokenType()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Unexpected token [{0}] when in state [{1}]"

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method framesetOk(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return-void
.end method

.method framesetOk()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v0
.end method

.method generateImpliedEndTags()V
    .locals 1

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    return-void
.end method

.method generateImpliedEndTags(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    return-void
.end method

.method getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 742
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v1, :cond_0

    goto :goto_1

    .line 745
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method getDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0
.end method

.method getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    return-object v0
.end method

.method getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 359
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getHeadElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method getPendingTableCharacters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    return-object v0
.end method

.method getStack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method inButtonScope(Ljava/lang/String;)Z
    .locals 1

    .line 549
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inListItemScope(Ljava/lang/String;)Z
    .locals 1

    .line 545
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 541
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope([Ljava/lang/String;)Z
    .locals 2

    .line 533
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inSelectScope(Ljava/lang/String;)Z
    .locals 5

    .line 557
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 558
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 559
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 562
    :cond_0
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 565
    :cond_2
    const-string p1, "Should not be reachable"

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    return v2
.end method

.method inTableScope(Ljava/lang/String;)Z
    .locals 2

    .line 553
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    .line 93
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 96
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 97
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    .line 98
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 101
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 103
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    .line 104
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 230
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->deduplicate(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    const-string v0, "Duplicate attribute"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 243
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    return-object p1

    .line 247
    :cond_1
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeAttributes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return-object v0
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 259
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 260
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 298
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->isCData()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isContentForTagData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 307
    :goto_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    return-void
.end method

.method insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 4

    .line 264
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeAttributes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 266
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 267
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isKnownTag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->setSelfClosing()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    :cond_1
    :goto_0
    return-object v1
.end method

.method insertForm(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 3

    .line 279
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->normalizeAttributes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 281
    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V

    .line 282
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertNode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    if-eqz p2, :cond_0

    .line 284
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 4

    .line 761
    const-string v0, "table"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v3

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    goto :goto_0

    .line 770
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    if-eqz v1, :cond_2

    .line 774
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 775
    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->before(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_1

    .line 778
    :cond_2
    invoke-virtual {v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_1
    return-void
.end method

.method insertMarkerToFormattingElements()V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method insertOnStackAfter(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 444
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method insertStartTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 253
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return-object v0
.end method

.method protected isContentForTagData(Ljava/lang/String;)Z
    .locals 1

    .line 791
    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method isFosterInserts()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    return v0
.end method

.method isFragmentParsing()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    return v0
.end method

.method isInActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 622
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    .line 623
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method lastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method markInsertionMode()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method maybeSetBaseUri(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 215
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->setBaseUri(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method newInstance()Lcom/itextpdf/styledxmlparser/jsoup/parser/TreeBuilder;
    .locals 1

    .line 85
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;-><init>()V

    return-object v0
.end method

.method newPendingTableCharacters()V
    .locals 1

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    return-void
.end method

.method onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isElementInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method originalState()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->originalState:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method parseFragment(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 110
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)V

    .line 111
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    if-eqz p2, :cond_7

    .line 116
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 117
    iget-object p4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->ownerDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    .line 121
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "textarea"

    aput-object v2, v1, p1

    invoke-static {p4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 123
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "iframe"

    aput-object v2, v1, v3

    const-string v2, "noembed"

    aput-object v2, v1, p1

    const-string p1, "noframes"

    aput-object p1, v1, v0

    const/4 p1, 0x3

    const-string v0, "style"

    aput-object v0, v1, p1

    const/4 p1, 0x4

    const-string v0, "xmp"

    aput-object v0, v1, p1

    invoke-static {p4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string p1, "script"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string p1, "noscript"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 129
    :cond_4
    const-string p1, "plaintext"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 130
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 132
    :cond_5
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 134
    :goto_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->settings:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {p4, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 135
    iget-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 136
    iget-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    .line 141
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p3

    .line 142
    invoke-virtual {p3, v3, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(ILjava/lang/Object;)V

    .line 143
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 144
    instance-of v0, p4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v0, :cond_6

    .line 145
    check-cast p4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    iput-object p4, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 151
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->runParser()V

    if-eqz p2, :cond_a

    .line 155
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->siblingNodes()Ljava/util/List;

    move-result-object p2

    .line 156
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    const/4 p3, -0x1

    .line 157
    invoke-virtual {p1, p3, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 158
    :cond_9
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 161
    :cond_a
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->doc:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0
.end method

.method popStackToBefore(Ljava/lang/String;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 399
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 400
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 380
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs popStackToClose([Ljava/lang/String;)V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 390
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 391
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method positionOfElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
    .locals 2

    const/4 v0, 0x0

    .line 631
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 167
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1
.end method

.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 172
    invoke-virtual {p2, p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1
.end method

.method push(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 648
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 649
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method pushWithBookmark(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V
    .locals 1

    .line 653
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 654
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method reconstructFormattingElements()V
    .locals 7

    .line 682
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->lastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 683
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    .line 696
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    move v2, v4

    :goto_0
    if-nez v2, :cond_4

    .line 701
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 702
    :cond_4
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 706
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertStartTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 710
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v1, :cond_3

    :cond_5
    :goto_1
    return-void
.end method

.method removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 728
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    .line 730
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 368
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-ne v2, p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method removeLastFormattingElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method replaceActiveFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return-void
.end method

.method replaceOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return-void
.end method

.method resetInsertionMode()V
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_10

    .line 460
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-nez v0, :cond_0

    .line 463
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->contextElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move v2, v1

    :cond_0
    if-eqz v3, :cond_1

    .line 465
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 466
    :goto_1
    const-string v4, "select"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_4

    .line 469
    :cond_2
    const-string v4, "td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 472
    :cond_3
    const-string v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_4

    .line 475
    :cond_4
    const-string v4, "tbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 478
    :cond_5
    const-string v4, "caption"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 479
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_4

    .line 481
    :cond_6
    const-string v4, "colgroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 482
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 484
    :cond_7
    const-string v4, "table"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 485
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 487
    :cond_8
    const-string v4, "head"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 488
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 490
    :cond_9
    const-string v4, "body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 491
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 493
    :cond_a
    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 494
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 496
    :cond_b
    const-string v4, "html"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 497
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    .line 500
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 476
    :cond_e
    :goto_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_4

    .line 470
    :cond_f
    :goto_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_10
    :goto_4
    return-void
.end method

.method setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->formElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    return-void
.end method

.method setFosterInserts(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    return-void
.end method

.method setHeadElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->headElement:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method state()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentToken:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method
