.class public Lcom/itextpdf/layout/hyphenation/Hyphenation;
.super Ljava/lang/Object;
.source "Hyphenation.java"


# instance fields
.field private hyphenPoints:[I

.field private len:I

.field private word:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->word:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    .line 42
    array-length p1, p2

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->len:I

    return-void
.end method


# virtual methods
.method public getHyphenationPoints()[I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    return-object v0
.end method

.method public getPostHyphenText(I)Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->word:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreHyphenText(I)Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->word:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    aget p1, v1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->len:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 79
    :goto_0
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->len:I

    if-ge v1, v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->word:Ljava/lang/String;

    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v5, v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->hyphenPoints:[I

    aget v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/Hyphenation;->word:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
