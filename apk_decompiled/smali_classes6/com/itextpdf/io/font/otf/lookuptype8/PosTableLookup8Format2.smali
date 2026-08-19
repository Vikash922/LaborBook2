.class public Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;
.super Lcom/itextpdf/io/font/otf/ChainingContextualTable;
.source "PosTableLookup8Format2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/io/font/otf/ChainingContextualTable<",
        "Lcom/itextpdf/io/font/otf/ContextualPositionRule;",
        ">;"
    }
.end annotation


# instance fields
.field private backtrackClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

.field private inputClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

.field private lookaheadClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

.field private posClassSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualPositionRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private posCoverageGlyphIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/io/font/otf/OtfClass;",
            "Lcom/itextpdf/io/font/otf/OtfClass;",
            "Lcom/itextpdf/io/font/otf/OtfClass;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/font/otf/ChainingContextualTable;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 49
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->posCoverageGlyphIds:Ljava/util/Set;

    .line 50
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->backtrackClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    .line 51
    iput-object p5, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->inputClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    .line 52
    iput-object p6, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->lookaheadClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->posClassSets:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->inputClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    return-object p0
.end method

.method static synthetic access$100(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->lookaheadClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    return-object p0
.end method

.method static synthetic access$200(Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->backtrackClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    return-object p0
.end method


# virtual methods
.method public addPosClassSet(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualPositionRule;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/ContextualPositionRule;

    .line 58
    check-cast v1, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2$PosRuleFormat2;->getPosTable()Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position class set is invalid. Position rule refers to another table"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->posClassSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getSetOfRulesForStartGlyph(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualPositionRule;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->posCoverageGlyphIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v1, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->lookupFlag:I

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->inputClassDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype8/PosTableLookup8Format2;->posClassSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
