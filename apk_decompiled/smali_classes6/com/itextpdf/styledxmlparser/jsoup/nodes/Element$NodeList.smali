.class final Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;
.super Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private final owner:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V
    .locals 0

    .line 1703
    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;-><init>(I)V

    .line 1704
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;->owner:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public onContentsChanged()V
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element$NodeList;->owner:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodelistChanged()V

    return-void
.end method
