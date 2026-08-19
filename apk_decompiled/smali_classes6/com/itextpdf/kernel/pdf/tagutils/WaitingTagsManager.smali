.class public Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;
.super Ljava/lang/Object;
.source "WaitingTagsManager.java"


# instance fields
.field private associatedObjToWaitingTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;",
            ">;"
        }
    .end annotation
.end field

.field private waitingTagToAssociatedObj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    return-void
.end method

.method private flushStructElementAndItKids(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 193
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v2, :cond_1

    .line 194
    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->flushStructElementAndItKids(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->flush()V

    return-void
.end method

.method private removeWaitingStateAndFlushIfParentFlushed(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    .line 204
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->flushStructElementAndItKids(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public assignWaitingState(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->saveAssociatedObjectForWaitingTag(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Passed associated object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method flushTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    .line 183
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->flushStructElementAndItKids(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    return-object v0
.end method

.method getObjForStructDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/Object;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getStructForObj(Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object p1
.end method

.method public isObjectAssociatedWithWaitingTag(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed associated object can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAllWaitingStates()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 155
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingStateAndFlushIfParentFlushed(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeWaitingState(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 141
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingStateAndFlushIfParentFlushed(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method saveAssociatedObjectForWaitingTag(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->waitingTagToAssociatedObj:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->associatedObjToWaitingTag:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
