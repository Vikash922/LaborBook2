.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterReferenceInRcdataTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 0

    .line 374
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$CharacterReferenceInRcdataTS;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->access$6700(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 370
    const-string v0, "CharacterReferenceInRcdata"

    return-object v0
.end method
