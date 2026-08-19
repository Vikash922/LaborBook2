.class public Lcom/itextpdf/layout/hyphenation/Hyphen;
.super Ljava/lang/Object;
.source "Hyphen.java"


# instance fields
.field public noBreak:Ljava/lang/String;

.field public postBreak:Ljava/lang/String;

.field public preBreak:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->preBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "}{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->postBreak:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
