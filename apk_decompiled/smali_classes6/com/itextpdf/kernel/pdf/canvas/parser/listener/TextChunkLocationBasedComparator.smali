.class Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;
.super Ljava/lang/Object;
.source "TextChunkLocationBasedComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private locationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;->locationComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;->locationComparator:Ljava/util/Comparator;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->location:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;->location:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/ITextChunkLocation;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    check-cast p2, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunkLocationBasedComparator;->compare(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;Lcom/itextpdf/kernel/pdf/canvas/parser/listener/TextChunk;)I

    move-result p1

    return p1
.end method
