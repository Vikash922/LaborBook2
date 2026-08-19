.class public Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;
.super Lcom/itextpdf/io/font/otf/ContextualPositionRule;
.source "PosTableLookup7Format2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PosRuleFormat2"
.end annotation


# instance fields
.field private classDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

.field private inputClassIds:[I

.field private posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;[I[Lcom/itextpdf/io/font/otf/PosLookupRecord;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/itextpdf/io/font/otf/ContextualPositionRule;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->inputClassIds:[I

    .line 71
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    .line 72
    invoke-static {p1}, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;->access$000(Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2;)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->classDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    return-void
.end method


# virtual methods
.method public getContextLength()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->inputClassIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPosLookupRecords()[Lcom/itextpdf/io/font/otf/PosLookupRecord;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->posLookupRecords:[Lcom/itextpdf/io/font/otf/PosLookupRecord;

    return-object v0
.end method

.method public isGlyphMatchesInput(II)Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->classDefinition:Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/lookuptype7/PosTableLookup7Format2$PosRuleFormat2;->inputClassIds:[I

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
