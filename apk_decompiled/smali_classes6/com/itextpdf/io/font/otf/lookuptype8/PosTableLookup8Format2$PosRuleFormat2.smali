.class public Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;
.super Lcom/itextpdf/io/font/otf/ContextualPositionRule;
.source "PosTableLookup8Format2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PosRuleFormat2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x771fa28dc7ceed5fL


# instance fields
.field private backtrackClassIds:[I

.field private inputClassIds:[I

.field private lookAheadClassIds:[I

.field private posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;

.field private posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;[I[I[I[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/itextpdf/io/font/otf/ContextualPositionRule;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    .line 89
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->backtrackClassIds:[I

    .line 90
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->inputClassIds:[I

    .line 91
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->lookAheadClassIds:[I

    .line 92
    iput-object p5, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    return-void
.end method


# virtual methods
.method public getBacktrackContextLength()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->backtrackClassIds:[I

    array-length v0, v0

    return v0
.end method

.method public getContextLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->inputClassIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLookaheadContextLength()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->lookAheadClassIds:[I

    array-length v0, v0

    return v0
.end method

.method public getPosLookupRecords()[Lcom/itextpdf/io/font/otf/PosLookupRecord;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    return-object v0
.end method

.method public getPosTable()Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    return-object v0
.end method

.method public isGlyphMatchesBacktrack(II)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->access$200(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->backtrackClassIds:[I

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

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->access$000(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->inputClassIds:[I

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

    .line 122
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->posTable:Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    invoke-static {v0}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->access$100(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->lookAheadClassIds:[I

    aget p2, v0, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
