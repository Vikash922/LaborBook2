.class public Lcom/itextpdf/kernel/pdf/action/PdfAction;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field public static final RESET_EXCLUDE:I = 0x1

.field public static final SUBMIT_CANONICAL_FORMAT:I = 0x200

.field public static final SUBMIT_COORDINATES:I = 0x10

.field public static final SUBMIT_EMBED_FORM:I = 0x2004

.field public static final SUBMIT_EXCLUDE:I = 0x1

.field public static final SUBMIT_EXCL_F_KEY:I = 0x800

.field public static final SUBMIT_EXCL_NON_USER_ANNOTS:I = 0x400

.field public static final SUBMIT_HTML_FORMAT:I = 0x4

.field public static final SUBMIT_HTML_GET:I = 0x8

.field public static final SUBMIT_INCLUDE_ANNOTATIONS:I = 0x80

.field public static final SUBMIT_INCLUDE_APPEND_SAVES:I = 0x40

.field public static final SUBMIT_INCLUDE_NO_VALUE_FIELDS:I = 0x2

.field public static final SUBMIT_PDF:I = 0x100

.field public static final SUBMIT_XFDF:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 139
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 150
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private static buildArray([Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5

    .line 668
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 669
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 670
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 671
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 672
    :cond_0
    instance-of v4, v3, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    if-eqz v4, :cond_1

    .line 673
    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The array must contain string or PDFAnnotation"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static createGoTo(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 160
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->validateNotRemoteDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 161
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoTo(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 171
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoTo(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToE(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;ZLcom/itextpdf/kernel/pdf/action/PdfTarget;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 273
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GoToE:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NewWindow:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p2

    if-eqz p0, :cond_0

    .line 275
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    :cond_0
    if-eqz p1, :cond_1

    .line 278
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->validateRemoteDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 279
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    goto :goto_0

    .line 281
    :cond_1
    const-class p0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    const-string p1, "No destination in the target was specified for action. Destination entry is mandatory for embedded go-to actions."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    .line 284
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/action/PdfTarget;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    :cond_2
    return-object p2
.end method

.method public static createGoToE(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;ZLcom/itextpdf/kernel/pdf/action/PdfTarget;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-static {v0, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToE(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;ZLcom/itextpdf/kernel/pdf/action/PdfTarget;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 194
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->validateRemoteDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 195
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->GoToR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 196
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 0

    .line 183
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToR(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->NewWindow:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToR(Ljava/lang/String;IZ)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Ljava/lang/String;IZ)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 219
    new-instance v0, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;-><init>(Ljava/lang/String;)V

    const p0, 0x461c4000    # 10000.0f

    invoke-static {p1, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->createFitH(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToR(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToR(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createGoToR(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 231
    new-instance v0, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfStringFS;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfStringDestination;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createGoToR(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createHide(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 426
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 427
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createHide(Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 451
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 452
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createHide([Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 438
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfArrayFromAnnotationsList([Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 439
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createHide([Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 464
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getArrayFromStringList([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->H:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 465
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createJavaScript(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 526
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->JavaScript:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->JS:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createLaunch(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 307
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 309
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    :cond_0
    return-object v0
.end method

.method public static createLaunch(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createLaunch(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NewWindow:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createMovie(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 410
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Operation:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 411
    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 413
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Annotation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    :cond_0
    return-object p1
.end method

.method public static createNamed(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 476
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Named:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createRendition(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 4

    .line 514
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Rendition:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OP:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    .line 515
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AN:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p3

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/action/PdfRendition;

    invoke-direct {v1, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfRendition;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/action/PdfRendition;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createResetForm([Ljava/lang/Object;I)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 566
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    .line 567
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ResetForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    if-eqz p0, :cond_0

    .line 569
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->buildArray([Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 571
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    return-object v0
.end method

.method public static createSetOcgState(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/action/PdfAction;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 486
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createSetOcgState(Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createSetOcgState(Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;",
            ">;Z)",
            "Lcom/itextpdf/kernel/pdf/action/PdfAction;"
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 499
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;

    .line 500
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/action/PdfActionOcgState;->getObjectList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 501
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SetOCGState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->State:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PreserveRB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createSound(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 374
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createSound(Lcom/itextpdf/kernel/pdf/PdfStream;FZZZ)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 395
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Volume:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Synchronous:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Repeat:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 397
    invoke-static {p3}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Mix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p4}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0

    .line 393
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "volume"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSubmitForm(Ljava/lang/String;[Ljava/lang/Object;I)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 4

    .line 541
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    .line 542
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SubmitForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 544
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 545
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 546
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->FS:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->URL:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 547
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    if-eqz p1, :cond_0

    .line 550
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->buildArray([Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    .line 552
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    return-object v0
.end method

.method public static createThread(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-static {p0, v0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createThread(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createThread(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 326
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 328
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    :cond_0
    return-object p1
.end method

.method public static createURI(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->createURI(Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method public static createURI(Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 3

    .line 364
    new-instance v0, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;-><init>()V

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->IsMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    move-result-object p0

    return-object p0
.end method

.method private static getArrayFromStringList([Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5

    .line 660
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 661
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 662
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getPdfArrayFromAnnotationsList([Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 4

    .line 652
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 653
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 654
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/action/PdfAction;",
            ")V"
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 587
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_1

    .line 589
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 591
    :goto_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 592
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 593
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v1, :cond_2

    .line 594
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result p1

    if-nez p1, :cond_3

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    return-void
.end method

.method private static validateNotRemoteDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 3

    .line 719
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    const-string v1, "When destination\'s not associated with a Remote or Embedded Go-To action, it shall specify page dictionary instead of page number. Otherwise destination might be considered invalid"

    const-class v2, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    if-eqz v0, :cond_0

    .line 720
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_0
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    .line 725
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 726
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateRemoteDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 4

    .line 686
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitDestination;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Explicit destinations shall specify page number in remote go-to actions instead of page dictionary"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 691
    :cond_1
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    if-eqz v0, :cond_3

    .line 696
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 698
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 699
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 703
    const-class v2, Lcom/itextpdf/kernel/pdf/action/PdfAction;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Structure destinations shall specify structure element ID in remote go-to actions. Structure element has been replaced with its ID in the structure destination"

    .line 704
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 706
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 701
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Structure destinations shall specify structure element ID in remote go-to actions. Structure element that has no ID is specified instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 640
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 2

    .line 605
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 607
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 610
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 611
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;

    goto :goto_0

    .line 613
    :cond_1
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_0
    return-void
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/action/PdfAction;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 627
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method
