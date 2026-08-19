.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constants"
.end annotation


# static fields
.field static final AfterHeadBody:[Ljava/lang/String;

.field static final BeforeHtmlToHead:[Ljava/lang/String;

.field static final DdDt:[Ljava/lang/String;

.field static final Formatters:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndTableFosters:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartEmptyFormatters:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;

.field static final InCaptionIgnore:[Ljava/lang/String;

.field static final InCellBody:[Ljava/lang/String;

.field static final InCellCol:[Ljava/lang/String;

.field static final InCellNames:[Ljava/lang/String;

.field static final InCellTable:[Ljava/lang/String;

.field static final InHeadEmpty:[Ljava/lang/String;

.field static final InHeadEnd:[Ljava/lang/String;

.field static final InHeadNoScriptHead:[Ljava/lang/String;

.field static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field static final InHeadRaw:[Ljava/lang/String;

.field static final InRowIgnore:[Ljava/lang/String;

.field static final InRowMissing:[Ljava/lang/String;

.field static final InSelecTableEnd:[Ljava/lang/String;

.field static final InSelectEnd:[Ljava/lang/String;

.field static final InTableAddBody:[Ljava/lang/String;

.field static final InTableBodyEndIgnore:[Ljava/lang/String;

.field static final InTableBodyExit:[Ljava/lang/String;

.field static final InTableEndErr:[Ljava/lang/String;

.field static final InTableEndIgnore:[Ljava/lang/String;

.field static final InTableFoster:[Ljava/lang/String;

.field static final InTableToBody:[Ljava/lang/String;

.field static final InTableToHead:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x5

    .line 118
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "base"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "basefont"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "bgsound"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "command"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "link"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    .line 119
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "noframes"

    aput-object v2, v1, v3

    const-string v2, "style"

    aput-object v2, v1, v4

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 120
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "body"

    aput-object v2, v1, v3

    const-string v8, "br"

    aput-object v8, v1, v4

    const-string v8, "html"

    aput-object v8, v1, v5

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 121
    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v8, v1, v4

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 122
    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v9, "br"

    aput-object v9, v1, v4

    const-string v9, "head"

    aput-object v9, v1, v5

    aput-object v8, v1, v6

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    const/4 v1, 0x6

    .line 123
    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "basefont"

    aput-object v10, v9, v3

    const-string v10, "bgsound"

    aput-object v10, v9, v4

    const-string v10, "link"

    aput-object v10, v9, v5

    const-string v10, "meta"

    aput-object v10, v9, v6

    const-string v10, "noframes"

    aput-object v10, v9, v7

    const-string v10, "style"

    aput-object v10, v9, v0

    sput-object v9, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    const/16 v9, 0xa

    .line 124
    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "base"

    aput-object v11, v10, v3

    const-string v11, "basefont"

    aput-object v11, v10, v4

    const-string v11, "bgsound"

    aput-object v11, v10, v5

    const-string v11, "command"

    aput-object v11, v10, v6

    const-string v11, "link"

    aput-object v11, v10, v7

    const-string v11, "meta"

    aput-object v11, v10, v0

    const-string v11, "noframes"

    aput-object v11, v10, v1

    const-string v11, "script"

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const-string v11, "style"

    const/16 v13, 0x8

    aput-object v11, v10, v13

    const-string v11, "title"

    const/16 v14, 0x9

    aput-object v11, v10, v14

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    const/16 v10, 0x16

    .line 125
    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "address"

    aput-object v11, v10, v3

    const-string v11, "article"

    aput-object v11, v10, v4

    const-string v11, "aside"

    aput-object v11, v10, v5

    const-string v11, "blockquote"

    aput-object v11, v10, v6

    const-string v11, "center"

    aput-object v11, v10, v7

    const-string v11, "details"

    aput-object v11, v10, v0

    const-string v11, "dir"

    aput-object v11, v10, v1

    const-string v11, "div"

    aput-object v11, v10, v12

    const-string v11, "dl"

    aput-object v11, v10, v13

    const-string v11, "fieldset"

    aput-object v11, v10, v14

    const-string v11, "figcaption"

    aput-object v11, v10, v9

    const/16 v11, 0xb

    const-string v15, "figure"

    aput-object v15, v10, v11

    const/16 v11, 0xc

    const-string v15, "footer"

    aput-object v15, v10, v11

    const/16 v11, 0xd

    const-string v15, "header"

    aput-object v15, v10, v11

    const/16 v11, 0xe

    const-string v15, "hgroup"

    aput-object v15, v10, v11

    const/16 v11, 0xf

    const-string v15, "menu"

    aput-object v15, v10, v11

    const/16 v11, 0x10

    const-string v15, "nav"

    aput-object v15, v10, v11

    const/16 v11, 0x11

    const-string v15, "ol"

    aput-object v15, v10, v11

    const/16 v11, 0x12

    const-string v15, "p"

    aput-object v15, v10, v11

    const/16 v11, 0x13

    const-string v15, "section"

    aput-object v15, v10, v11

    const/16 v11, 0x14

    const-string v15, "summary"

    aput-object v15, v10, v11

    const/16 v11, 0x15

    const-string v15, "ul"

    aput-object v15, v10, v11

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 128
    new-array v10, v1, [Ljava/lang/String;

    const-string v11, "h1"

    aput-object v11, v10, v3

    const-string v11, "h2"

    aput-object v11, v10, v4

    const-string v11, "h3"

    aput-object v11, v10, v5

    const-string v11, "h4"

    aput-object v11, v10, v6

    const-string v11, "h5"

    aput-object v11, v10, v7

    const-string v11, "h6"

    aput-object v11, v10, v0

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 129
    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "address"

    aput-object v11, v10, v3

    const-string v11, "div"

    aput-object v11, v10, v4

    const-string v11, "p"

    aput-object v11, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 130
    new-array v10, v5, [Ljava/lang/String;

    const-string v11, "dd"

    aput-object v11, v10, v3

    const-string v11, "dt"

    aput-object v11, v10, v4

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    const/16 v10, 0xc

    .line 131
    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "b"

    aput-object v11, v10, v3

    const-string v11, "big"

    aput-object v11, v10, v4

    const-string v11, "code"

    aput-object v11, v10, v5

    const-string v11, "em"

    aput-object v11, v10, v6

    const-string v11, "font"

    aput-object v11, v10, v7

    const-string v11, "i"

    aput-object v11, v10, v0

    const-string v11, "s"

    aput-object v11, v10, v1

    const-string v11, "small"

    aput-object v11, v10, v12

    const-string v11, "strike"

    aput-object v11, v10, v13

    const-string v11, "strong"

    aput-object v11, v10, v14

    const-string v11, "tt"

    aput-object v11, v10, v9

    const/16 v11, 0xb

    const-string v15, "u"

    aput-object v15, v10, v11

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    .line 132
    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "applet"

    aput-object v11, v10, v3

    const-string v11, "marquee"

    aput-object v11, v10, v4

    const-string v11, "object"

    aput-object v11, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 133
    new-array v10, v1, [Ljava/lang/String;

    const-string v11, "area"

    aput-object v11, v10, v3

    const-string v11, "br"

    aput-object v11, v10, v4

    const-string v11, "embed"

    aput-object v11, v10, v5

    const-string v11, "img"

    aput-object v11, v10, v6

    const-string v11, "keygen"

    aput-object v11, v10, v7

    const-string v11, "wbr"

    aput-object v11, v10, v0

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    .line 134
    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "param"

    aput-object v11, v10, v3

    const-string v11, "source"

    aput-object v11, v10, v4

    const-string v11, "track"

    aput-object v11, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 135
    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "action"

    aput-object v11, v10, v3

    const-string v11, "name"

    aput-object v11, v10, v4

    const-string v11, "prompt"

    aput-object v11, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    const/16 v10, 0xb

    .line 136
    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "caption"

    aput-object v11, v10, v3

    const-string v15, "col"

    aput-object v15, v10, v4

    const-string v16, "colgroup"

    aput-object v16, v10, v5

    const-string v17, "frame"

    aput-object v17, v10, v6

    const-string v17, "head"

    aput-object v17, v10, v7

    const-string v17, "tbody"

    aput-object v17, v10, v0

    const-string v18, "td"

    aput-object v18, v10, v1

    const-string v19, "tfoot"

    aput-object v19, v10, v12

    const-string v20, "th"

    aput-object v20, v10, v13

    const-string v21, "thead"

    aput-object v21, v10, v14

    const-string v22, "tr"

    aput-object v22, v10, v9

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    const/16 v10, 0x18

    .line 137
    new-array v10, v10, [Ljava/lang/String;

    const-string v23, "address"

    aput-object v23, v10, v3

    const-string v23, "article"

    aput-object v23, v10, v4

    const-string v23, "aside"

    aput-object v23, v10, v5

    const-string v23, "blockquote"

    aput-object v23, v10, v6

    const-string v23, "button"

    aput-object v23, v10, v7

    const-string v23, "center"

    aput-object v23, v10, v0

    const-string v23, "details"

    aput-object v23, v10, v1

    const-string v23, "dir"

    aput-object v23, v10, v12

    const-string v23, "div"

    aput-object v23, v10, v13

    const-string v23, "dl"

    aput-object v23, v10, v14

    const-string v23, "fieldset"

    aput-object v23, v10, v9

    const/16 v23, 0xb

    const-string v24, "figcaption"

    aput-object v24, v10, v23

    const/16 v23, 0xc

    const-string v24, "figure"

    aput-object v24, v10, v23

    const/16 v23, 0xd

    const-string v24, "footer"

    aput-object v24, v10, v23

    const/16 v23, 0xe

    const-string v24, "header"

    aput-object v24, v10, v23

    const/16 v23, 0xf

    const-string v24, "hgroup"

    aput-object v24, v10, v23

    const/16 v23, 0x10

    const-string v24, "listing"

    aput-object v24, v10, v23

    const/16 v23, 0x11

    const-string v24, "menu"

    aput-object v24, v10, v23

    const/16 v23, 0x12

    const-string v24, "nav"

    aput-object v24, v10, v23

    const/16 v23, 0x13

    const-string v24, "ol"

    aput-object v24, v10, v23

    const/16 v23, 0x14

    const-string v24, "pre"

    aput-object v24, v10, v23

    const/16 v23, 0x15

    const-string v24, "section"

    aput-object v24, v10, v23

    const/16 v23, 0x16

    const-string v24, "summary"

    aput-object v24, v10, v23

    const/16 v23, 0x17

    const-string v24, "ul"

    aput-object v24, v10, v23

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    const/16 v10, 0xe

    .line 140
    new-array v10, v10, [Ljava/lang/String;

    const-string v23, "a"

    aput-object v23, v10, v3

    const-string v23, "b"

    aput-object v23, v10, v4

    const-string v23, "big"

    aput-object v23, v10, v5

    const-string v23, "code"

    aput-object v23, v10, v6

    const-string v23, "em"

    aput-object v23, v10, v7

    const-string v23, "font"

    aput-object v23, v10, v0

    const-string v23, "i"

    aput-object v23, v10, v1

    const-string v23, "nobr"

    aput-object v23, v10, v12

    const-string v23, "s"

    aput-object v23, v10, v13

    const-string v23, "small"

    aput-object v23, v10, v14

    const-string v23, "strike"

    aput-object v23, v10, v9

    const/16 v23, 0xb

    const-string v24, "strong"

    aput-object v24, v10, v23

    const/16 v23, 0xc

    const-string v24, "tt"

    aput-object v24, v10, v23

    const/16 v23, 0xd

    const-string v24, "u"

    aput-object v24, v10, v23

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 141
    new-array v10, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v10, v3

    aput-object v17, v10, v4

    aput-object v19, v10, v5

    aput-object v21, v10, v6

    aput-object v22, v10, v7

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    .line 142
    new-array v10, v6, [Ljava/lang/String;

    aput-object v17, v10, v3

    aput-object v19, v10, v4

    aput-object v21, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 143
    new-array v10, v6, [Ljava/lang/String;

    aput-object v18, v10, v3

    aput-object v20, v10, v4

    aput-object v22, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 144
    new-array v10, v5, [Ljava/lang/String;

    const-string v23, "script"

    aput-object v23, v10, v3

    const-string v23, "style"

    aput-object v23, v10, v4

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 145
    new-array v10, v5, [Ljava/lang/String;

    aput-object v18, v10, v3

    aput-object v20, v10, v4

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 146
    new-array v10, v0, [Ljava/lang/String;

    aput-object v2, v10, v3

    aput-object v11, v10, v4

    aput-object v15, v10, v5

    aput-object v16, v10, v6

    aput-object v8, v10, v7

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 147
    new-array v10, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v10, v3

    aput-object v17, v10, v4

    aput-object v19, v10, v5

    aput-object v21, v10, v6

    aput-object v22, v10, v7

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 148
    new-array v10, v14, [Ljava/lang/String;

    aput-object v11, v10, v3

    aput-object v15, v10, v4

    aput-object v16, v10, v5

    aput-object v17, v10, v6

    aput-object v18, v10, v7

    aput-object v19, v10, v0

    aput-object v20, v10, v1

    aput-object v21, v10, v12

    aput-object v22, v10, v13

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    const/16 v10, 0xb

    .line 149
    new-array v10, v10, [Ljava/lang/String;

    aput-object v2, v10, v3

    aput-object v11, v10, v4

    aput-object v15, v10, v5

    aput-object v16, v10, v6

    aput-object v8, v10, v7

    aput-object v17, v10, v0

    aput-object v18, v10, v1

    aput-object v19, v10, v12

    aput-object v20, v10, v13

    aput-object v21, v10, v14

    aput-object v22, v10, v9

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 150
    new-array v10, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v10, v3

    aput-object v17, v10, v4

    aput-object v19, v10, v5

    aput-object v21, v10, v6

    aput-object v22, v10, v7

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 151
    new-array v10, v1, [Ljava/lang/String;

    aput-object v11, v10, v3

    aput-object v15, v10, v4

    aput-object v16, v10, v5

    aput-object v17, v10, v6

    aput-object v19, v10, v7

    aput-object v21, v10, v0

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 152
    new-array v10, v13, [Ljava/lang/String;

    aput-object v2, v10, v3

    aput-object v11, v10, v4

    aput-object v15, v10, v5

    aput-object v16, v10, v6

    aput-object v8, v10, v7

    aput-object v18, v10, v0

    aput-object v20, v10, v1

    aput-object v22, v10, v12

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 153
    new-array v10, v12, [Ljava/lang/String;

    aput-object v11, v10, v3

    aput-object v15, v10, v4

    aput-object v16, v10, v5

    aput-object v17, v10, v6

    aput-object v19, v10, v7

    aput-object v21, v10, v0

    aput-object v22, v10, v1

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 154
    new-array v10, v12, [Ljava/lang/String;

    aput-object v2, v10, v3

    aput-object v11, v10, v4

    aput-object v15, v10, v5

    aput-object v16, v10, v6

    aput-object v8, v10, v7

    aput-object v18, v10, v0

    aput-object v20, v10, v1

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 155
    new-array v10, v6, [Ljava/lang/String;

    const-string v23, "input"

    aput-object v23, v10, v3

    const-string v23, "keygen"

    aput-object v23, v10, v4

    const-string v23, "textarea"

    aput-object v23, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 156
    new-array v10, v13, [Ljava/lang/String;

    aput-object v11, v10, v3

    const-string v11, "table"

    aput-object v11, v10, v4

    aput-object v17, v10, v5

    aput-object v18, v10, v6

    aput-object v19, v10, v7

    aput-object v20, v10, v0

    aput-object v21, v10, v1

    aput-object v22, v10, v12

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelecTableEnd:[Ljava/lang/String;

    .line 157
    new-array v10, v6, [Ljava/lang/String;

    aput-object v17, v10, v3

    aput-object v19, v10, v4

    aput-object v21, v10, v5

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 158
    new-array v10, v5, [Ljava/lang/String;

    const-string v11, "head"

    aput-object v11, v10, v3

    const-string v11, "noscript"

    aput-object v11, v10, v4

    sput-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 159
    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v8, v9, v6

    aput-object v17, v9, v7

    aput-object v18, v9, v0

    aput-object v19, v9, v1

    aput-object v20, v9, v12

    aput-object v21, v9, v13

    aput-object v22, v9, v14

    sput-object v9, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
