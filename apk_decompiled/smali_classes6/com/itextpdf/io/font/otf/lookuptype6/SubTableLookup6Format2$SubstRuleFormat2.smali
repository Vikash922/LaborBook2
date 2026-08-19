.class public Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;
.super Lcom/itextpdf/io/font/otf/ContextualSubstRule;
.source "SubTableLookup6Format2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubstRuleFormat2"
.end annotation


# instance fields
.field private backtrackClassIds:[I

.field private inputClassIds:[I

.field private lookAheadClassIds:[I

.field private subTable:Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

.field private substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;[I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->subTable:Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    .line 102
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->backtrackClassIds:[I

    .line 103
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->inputClassIds:[I

    .line 104
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->lookAheadClassIds:[I

    .line 105
    iput-object p5, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    return-void
.end method


# virtual methods
.method public getBacktrackContextLength()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->backtrackClassIds:[I

    array-length v0, v0

    return v0
.end method

.method public getContextLength()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->inputClassIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLookaheadContextLength()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->lookAheadClassIds:[I

    array-length v0, v0

    return v0
.end method

.method public getSubstLookupRecords()[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->substLookupRecords:[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    return-object v0
.end method

.method public isGlyphMatchesBacktrack(II)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->subTable:Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;->access$200(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->backtrackClassIds:[I

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

    .line 128
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->subTable:Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;->access$000(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->inputClassIds:[I

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

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->subTable:Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;->access$100(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;->lookAheadClassIds:[I

    aget p2, v0, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
