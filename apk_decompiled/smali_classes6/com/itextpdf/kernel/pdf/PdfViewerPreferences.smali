.class public Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfViewerPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private setPageBoundary(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 419
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 430
    :pswitch_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->PrintClip:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 427
    :pswitch_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->PrintArea:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 424
    :pswitch_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->ViewClip:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_0

    .line 421
    :pswitch_3
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->ViewArea:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_0
    if-eqz p1, :cond_0

    .line 435
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 449
    :pswitch_4
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_1

    .line 446
    :pswitch_5
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_1

    .line 443
    :pswitch_6
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->BleedBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_1

    .line 440
    :pswitch_7
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_1

    .line 437
    :pswitch_8
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    :cond_0
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getEnforce()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Enforce:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 408
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public setCenterWindow(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 190
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CenterWindow:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setDirection(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 236
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Direction:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R2L:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 238
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Direction:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->L2R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    :goto_0
    return-object p0
.end method

.method public setDisplayDocTitle(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 200
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DisplayDocTitle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setDuplex(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 325
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Duplex:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DuplexFlipLongEdge:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 330
    :pswitch_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Duplex:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DuplexFlipShortEdge:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 327
    :pswitch_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Duplex:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Simplex:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnforce(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 3

    const/4 v0, 0x0

    .line 379
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 380
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 383
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PrintScaling:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PrintScaling:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AppDefault:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "/PrintScaling shall may appear in the Enforce array only if the corresponding entry in the viewer preferences dictionary specifies a valid value other than AppDefault"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enforce array shall contain PdfName entries"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Enforce:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setFitWindow(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 180
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FitWindow:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setHideMenubar(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 160
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HideMenubar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setHideToolbar(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 150
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HideToolbar:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setHideWindowUI(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 170
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->HideWindowUI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setNonFullScreenPageMode(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 211
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NonFullScreenPageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UseOC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 219
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NonFullScreenPageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UseThumbs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 216
    :cond_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NonFullScreenPageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UseOutlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 213
    :cond_3
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NonFullScreenPageMode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UseNone:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    :goto_0
    return-object p0
.end method

.method public setNumCopies(I)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 2

    .line 367
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NumCopies:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setPickTrayByPDFSize(Z)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 347
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PickTrayByPDFSize:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setPrintArea(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 281
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->PRINT_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->setPageBoundary(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setPrintClip(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 293
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->PRINT_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->setPageBoundary(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setPrintPageRange([I)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 2

    .line 357
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PrintPageRange:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setPrintScaling(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 304
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$1;->$SwitchMap$com$itextpdf$kernel$pdf$PdfViewerPreferences$PdfViewerPreferencesConstants:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->PrintScaling:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AppDefault:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    goto :goto_0

    .line 306
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->PrintScaling:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    :goto_0
    return-object p0
.end method

.method public setViewArea(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 257
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->VIEW_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->setPageBoundary(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method

.method public setViewClip(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
    .locals 1

    .line 269
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->VIEW_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;->setPageBoundary(Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;

    move-result-object p1

    return-object p1
.end method
