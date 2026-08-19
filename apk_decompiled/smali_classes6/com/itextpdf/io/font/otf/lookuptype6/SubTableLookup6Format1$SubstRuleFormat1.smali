.class public Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;
.super Lcom/itextpdf/io/font/otf/ContextualSubstRule;
.source "SubTableLookup6Format1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubstRuleFormat1"
.end annotation


# instance fields
.field private backtrackGlyphIds:[I

.field private inputGlyphIds:[I

.field private lookAheadGlyphIds:[I

.field private substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;


# direct methods
.method public constructor <init>([I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->backtrackGlyphIds:[I

    .line 84
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->inputGlyphIds:[I

    .line 85
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->lookAheadGlyphIds:[I

    .line 86
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    return-void
.end method


# virtual methods
.method public getBacktrackContextLength()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->backtrackGlyphIds:[I

    array-length v0, v0

    return v0
.end method

.method public getContextLength()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->inputGlyphIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLookaheadContextLength()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->lookAheadGlyphIds:[I

    array-length v0, v0

    return v0
.end method

.method public getSubstLookupRecords()[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    return-object v0
.end method

.method public isGlyphMatchesBacktrack(II)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->backtrackGlyphIds:[I

    aget p2, v0, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isGlyphMatchesInput(II)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->inputGlyphIds:[I

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    aget p2, v0, p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGlyphMatchesLookahead(II)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;->lookAheadGlyphIds:[I

    aget p2, v0, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
