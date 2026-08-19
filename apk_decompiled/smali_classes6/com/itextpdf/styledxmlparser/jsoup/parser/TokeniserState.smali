.class abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.super Ljava/lang/Object;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CDataSectionTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusDocTypeTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemIdentifierTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierSingleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierDoubleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeSystemIdentifierTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemKeywordTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BetweenDocTypePublicAndSystemIdentifiersTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicIdentifierTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierSingleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierDoubleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypePublicIdentifierTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicKeywordTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndBangTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$MarkupDeclarationOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusCommentTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$SelfClosingStartTagTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeValueQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueUnquotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueSingleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueDoubleQuotedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeValueTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeEndTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedLessThanSignTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedLessThanSignTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartDashTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataLessThanSignTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataLessThanSignTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagNameTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$EndTagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagOpenTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$PlainTextTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInDataTS;,
        Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DataTS;
    }
.end annotation


# static fields
.field static AfterAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterAttributeValue_quoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterDoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterDoctypePublicIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterDoctypePublicKeyword:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterDoctypeSystemIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AfterDoctypeSystemKeyword:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AttributeValue_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AttributeValue_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static AttributeValue_unquoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BeforeAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BeforeAttributeValue:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BeforeDoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BeforeDoctypePublicIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BeforeDoctypeSystemIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BetweenDoctypePublicAndSystemIdentifiers:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BogusComment:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static BogusDoctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CdataSection:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CharacterReferenceInData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CharacterReferenceInRcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CommentEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CommentEndBang:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CommentEndDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CommentStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static CommentStartDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static DoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static DoctypePublicIdentifier_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static DoctypePublicIdentifier_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static DoctypeSystemIdentifier_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static DoctypeSystemIdentifier_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static EndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static MarkupDeclarationOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static PLAINTEXT:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RCDATAEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RCDATAEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RawtextEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RawtextEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RawtextLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static RcdataLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscapeEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscapeStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscapedDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscapedDashDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataDoubleEscapedLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapeStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapeStartDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapedDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapedDashDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapedEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapedEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataEscapedLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static ScriptDataLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static SelfClosingStartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static TagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static TagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState; = null

.field static final attributeNameCharsSorted:[C

.field static final attributeValueUnquoted:[C

.field private static final eof:C = '\uffff'

.field static final nullChar:C = '\u0000'

.field private static final replacementChar:C = '\ufffd'

.field private static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DataTS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DataTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 33
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInDataTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInDataTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 35
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 37
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 39
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 41
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptData:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 43
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$PlainTextTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$PlainTextTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->PLAINTEXT:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 45
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->TagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 47
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$EndTagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$EndTagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->EndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 49
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$TagNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->TagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 51
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataLessThanSignTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataLessThanSignTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 53
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 55
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RcDataEndTagNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 57
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 59
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 61
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextEndTagNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->RawtextEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 63
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataLessThanSignTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataLessThanSignTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 65
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 67
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEndTagNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 69
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 71
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapeStartDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 73
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 75
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 77
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedDashDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 79
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedLessThanSignTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedLessThanSignTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 81
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 83
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataEscapedEndTagNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 85
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 87
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 89
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 91
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedDashDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 93
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedLessThanSignTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapedLessThanSignTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 95
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeEndTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeEndTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 97
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 99
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 101
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 103
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeValueTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeValueTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 105
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueDoubleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueDoubleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 107
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueSingleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueSingleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 109
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueUnquotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeValueUnquotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 111
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeValueQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterAttributeValueQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 113
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$SelfClosingStartTagTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$SelfClosingStartTagTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 115
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusCommentTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusCommentTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BogusComment:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 117
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$MarkupDeclarationOpenTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$MarkupDeclarationOpenTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 119
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CommentStart:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 121
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentStartDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CommentStartDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 123
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 125
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndDashTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndDashTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CommentEndDash:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 127
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CommentEnd:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 129
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndBangTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CommentEndBangTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CommentEndBang:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 131
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 133
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 135
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->DoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 137
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeNameTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeNameTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterDoctypeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 139
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicKeywordTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicKeywordTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 141
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypePublicIdentifierTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypePublicIdentifierTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 143
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierDoubleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierDoubleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 145
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierSingleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypePublicIdentifierSingleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 147
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicIdentifierTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypePublicIdentifierTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 149
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BetweenDocTypePublicAndSystemIdentifiersTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BetweenDocTypePublicAndSystemIdentifiersTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 151
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemKeywordTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemKeywordTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 153
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeSystemIdentifierTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeDocTypeSystemIdentifierTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 155
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierDoubleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierDoubleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 157
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierSingleQuotedTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$DocTypeSystemIdentifierSingleQuotedTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 159
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemIdentifierTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AfterDocTypeSystemIdentifierTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 161
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusDocTypeTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BogusDocTypeTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BogusDoctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    .line 163
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CDataSectionTS;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CDataSectionTS;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->CdataSection:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    const/16 v0, 0xc

    .line 170
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    const/16 v0, 0xd

    .line 171
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    const v0, 0xfffd

    .line 174
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x27s
        0x2fs
        0x3cs
        0x3ds
        0x3es
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x26s
        0x27s
        0x3cs
        0x3ds
        0x3es
        0x60s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$6700(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->readCharRef(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->readRawData(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$6900()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->readEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->handleDataEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->handleDataDoubleEscapeTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method private static handleDataDoubleEscapeTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 262
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unconsume()V

    .line 286
    invoke-virtual {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "script"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 279
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 282
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(C)V

    :goto_1
    return-void
.end method

.method private static handleDataEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 182
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 205
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 201
    :cond_2
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 198
    :cond_3
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->BeforeAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 216
    :cond_4
    :goto_0
    const-string p1, "</"

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/StringBuilder;)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    :goto_1
    return-void
.end method

.method private static readCharRef(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    .line 245
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit([I)V

    .line 248
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method private static readEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 252
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->createTagPending(Z)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    .line 254
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 256
    :cond_0
    const-string p1, "</"

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method

.method private static readRawData(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 223
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x3c

    if-eq v0, p2, :cond_1

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeRawData()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EOF;

    invoke-direct {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, p3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->advanceTransition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 229
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    const p1, 0xfffd

    .line 230
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(C)V

    :goto_0
    return-void
.end method


# virtual methods
.method abstract read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
.end method
