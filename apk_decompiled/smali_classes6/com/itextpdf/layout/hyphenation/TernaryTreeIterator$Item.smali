.class Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;
.super Ljava/lang/Object;
.source "TernaryTreeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field child:C

.field parent:C

.field final synthetic this$0:Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->this$0:Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 80
    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    .line 81
    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;CC)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->this$0:Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-char p2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    .line 92
    iput-char p3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->this$0:Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-char p1, p2, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    .line 102
    iget-char p1, p2, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    return-void
.end method
