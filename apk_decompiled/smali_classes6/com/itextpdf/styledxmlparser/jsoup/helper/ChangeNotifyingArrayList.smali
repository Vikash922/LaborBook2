.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;
.super Ljava/util/ArrayList;
.source "ChangeNotifyingArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 53
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 47
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 83
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 77
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 71
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract onContentsChanged()V
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 59
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 65
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 95
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected removeRange(II)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 89
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 101
    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    .line 41
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
