.class public Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAnnotationAdditionalActions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final Events:[Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 63
    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->E:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->X:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fo:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Bl:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PO:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PC:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PV:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PI:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->Events:[Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method


# virtual methods
.method public getAllKnownActions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/action/PdfAction;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    sget-object v1, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->Events:[Lcom/itextpdf/kernel/pdf/PdfName;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 260
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 262
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getOnEnter()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 77
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->E:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnExit()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->X:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnFocus()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 149
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Fo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnLostFocus()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 167
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Bl:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnMouseDown()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 113
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnMouseUp()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 131
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnPageClosed()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 203
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnPageLostView()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 239
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnPageOpened()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 185
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getOnPageVisible()Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 221
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    return-object v0
.end method

.method public getPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 277
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnEnter(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->E:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnExit(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 104
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->X:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnFocus(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Fo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnLostFocus(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Bl:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnMouseDown(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnMouseUp(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnPageClosed(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 212
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnPageLostView(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 248
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnPageOpened(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 194
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PO:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setOnPageVisible(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    .line 230
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-void
.end method

.method public setPdfActionForEvent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 1

    if-nez p2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 295
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAnnotationAdditionalActions;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method
