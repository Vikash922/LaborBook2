.class Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
.super Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIterator;
.source "XMPIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIteratorChildren"
.end annotation


# instance fields
.field private childrenIterator:Ljava/util/Iterator;

.field private index:I

.field private parentPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)V
    .locals 1

    .line 570
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;)V

    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 571
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 575
    invoke-virtual {p0, p2, p3, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    .line 577
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->getReturnProperty()Lcom/itextpdf/kernel/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;->skipSiblings:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 599
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 600
    iget v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    .line 603
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;->setBaseNS(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    iget v3, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->accumulatePath(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 614
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;->getOptions()Lcom/itextpdf/kernel/xmp/options/IteratorOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/IteratorOptions;->isJustLeafnodes()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 621
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->hasNext()Z

    move-result v0

    return v0

    .line 616
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;->getBaseNS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->createPropertyInfo(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->setReturnProperty(Lcom/itextpdf/kernel/xmp/properties/XMPPropertyInfo;)V

    return v1

    :cond_6
    return v2
.end method
