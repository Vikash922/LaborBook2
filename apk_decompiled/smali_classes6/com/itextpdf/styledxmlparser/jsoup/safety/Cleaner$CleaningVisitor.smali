.class final Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field numDiscarded:I

.field private final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 137
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 138
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 2

    .line 142
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_1

    .line 143
    move-object p2, p1

    check-cast p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 145
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;

    move-result-object p1

    .line 147
    iget-object p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->el:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 148
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 150
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iget p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 151
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eq p1, p2, :cond_4

    .line 153
    iget p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    goto :goto_0

    .line 155
    :cond_1
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz p2, :cond_2

    .line 156
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 157
    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 159
    :cond_2
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 160
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 161
    new-instance p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 164
    :cond_3
    iget p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    :cond_4
    :goto_0
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0

    .line 169
    instance-of p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_0
    return-void
.end method
