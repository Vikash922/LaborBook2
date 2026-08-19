.class abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$ForeignContentBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterFrameSetBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterBodyBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterFrameSetBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InFrameSetBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterBodyBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectInTableBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCellBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InRowBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBodyBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InColumnGroupBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCaptionBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$TextBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterHeadBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadNoScriptBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHeadBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHtmlBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InitialBS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;
    }
.end annotation


# static fields
.field public static AfterAfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static AfterAfterFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static AfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static AfterFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static AfterHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static BeforeHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static BeforeHtml:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static ForeignContent:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InColumnGroup:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InHeadNoscript:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InSelectInTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static InTableText:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field public static Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

.field private static final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InitialBS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InitialBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Initial:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 42
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHtmlBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHtmlBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 44
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHeadBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$BeforeHeadBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 46
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 48
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadNoScriptBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InHeadNoScriptBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 50
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterHeadBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterHeadBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 52
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 54
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$TextBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$TextBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 56
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 58
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableTextBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 60
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCaptionBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCaptionBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 62
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InColumnGroupBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InColumnGroupBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 64
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBodyBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InTableBodyBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 66
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InRowBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InRowBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 68
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCellBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InCellBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 70
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 72
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectInTableBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InSelectInTableBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 74
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterBodyBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterBodyBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 76
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InFrameSetBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InFrameSetBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 78
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterFrameSetBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterFrameSetBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 80
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterBodyBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterBodyBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 82
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterFrameSetBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$AfterAfterFrameSetBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    .line 84
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$ForeignContentBS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$ForeignContentBS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->handleRcData(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static handleRawtext(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    .line 110
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 112
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 113
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method private static handleRcData(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    .line 103
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 105
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 106
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method

.method private static isWhitespace(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method abstract process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
.end method
