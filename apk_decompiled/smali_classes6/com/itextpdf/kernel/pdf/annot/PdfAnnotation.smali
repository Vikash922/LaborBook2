.class public abstract Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation$PdfUnknownAnnotation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field public static final Accepted:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final Canceled:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final Completed:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final HIDDEN:I = 0x2

.field public static final HIGHLIGHT_INVERT:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final HIGHLIGHT_NONE:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final HIGHLIGHT_OUTLINE:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final HIGHLIGHT_PUSH:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final HIGHLIGHT_TOGGLE:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final INVISIBLE:I = 0x1

.field public static final LOCKED:I = 0x80

.field public static final LOCKED_CONTENTS:I = 0x200

.field public static final Marked:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final MarkedModel:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final NO_ROTATE:I = 0x10

.field public static final NO_VIEW:I = 0x20

.field public static final NO_ZOOM:I = 0x8

.field public static final None:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final PRINT:I = 0x4

.field public static final READ_ONLY:I = 0x40

.field public static final Rejected:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final ReviewModel:Lcom/itextpdf/kernel/pdf/PdfString;

.field public static final STYLE_BEVELED:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final STYLE_DASHED:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final STYLE_INSET:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final STYLE_SOLID:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final STYLE_UNDERLINE:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final TOGGLE_NO_VIEW:I = 0x100

.field public static final Unmarked:Lcom/itextpdf/kernel/pdf/PdfString;


# instance fields
.field protected page:Lcom/itextpdf/kernel/pdf/PdfPage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 142
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->HIGHLIGHT_NONE:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 148
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 154
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->HIGHLIGHT_OUTLINE:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 160
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->HIGHLIGHT_PUSH:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 166
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->HIGHLIGHT_TOGGLE:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 172
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->STYLE_SOLID:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 177
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->STYLE_DASHED:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 182
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->STYLE_BEVELED:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 187
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->STYLE_INSET:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 192
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->STYLE_UNDERLINE:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 199
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "Marked"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Marked:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 205
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "Unmarked"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Unmarked:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 211
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "Accepted"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Accepted:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 217
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "Rejected"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Rejected:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 223
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "Cancelled"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Canceled:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 229
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "Completed"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->Completed:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 235
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "None"

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->None:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 242
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->MarkedModel:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 248
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "Review"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->ReviewModel:Lcom/itextpdf/kernel/pdf/PdfString;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 2

    .line 320
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 321
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 322
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 327
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public static makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 266
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 267
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 270
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 272
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 274
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Screen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfScreenAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfScreenAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 276
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->_3D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/Pdf3DAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/Pdf3DAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 278
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Highlight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Squiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StrikeOut:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 280
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Caret:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfCaretAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfCaretAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 282
    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 283
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 284
    :cond_8
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 285
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfSoundAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfSoundAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 286
    :cond_9
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Stamp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 287
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 288
    :cond_a
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FileAttachment:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 289
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFileAttachmentAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 290
    :cond_b
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ink:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 291
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfInkAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfInkAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 292
    :cond_c
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PrinterMark:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 293
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfPrinterMarkAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPrinterMarkAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 294
    :cond_d
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrapNet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 295
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTrapNetworkAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 296
    :cond_e
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FreeText:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 297
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto/16 :goto_1

    .line 298
    :cond_f
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Square:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 299
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 300
    :cond_10
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Circle:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 301
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 302
    :cond_11
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Line:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 303
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 304
    :cond_12
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Polygon:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 305
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfPolygonAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolygonAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 306
    :cond_13
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PolyLine:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 307
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfPolylineAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolylineAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 308
    :cond_14
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Redact:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 309
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfRedactAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfRedactAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 310
    :cond_15
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Watermark:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 311
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWatermarkAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfWatermarkAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 313
    :cond_16
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation$PdfUnknownAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation$PdfUnknownAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    .line 279
    :cond_17
    :goto_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_1

    :cond_18
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public addAssociatedFile(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 2

    .line 1081
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1082
    const-class v0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1083
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1087
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1088
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1090
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 1118
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 617
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 618
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppearanceState()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 769
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedFiles(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1100
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1103
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    :cond_0
    return-object v0
.end method

.method public getBlendMode()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 976
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 796
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Border:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getColorObject()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getContents()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->M:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getDownAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 656
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public getNonStrokingOpacity()F
    .locals 2

    .line 999
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ca:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getNormalAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 632
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 6

    .line 396
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 403
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 404
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 406
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 407
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object v0
.end method

.method public getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getRectangle()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 943
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getRolloverAppearanceObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 644
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getStrokingOpacity()F
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getStructParentIndex()I
    .locals 2

    .line 883
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 887
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
.end method

.method public getTitle()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 2

    .line 922
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0
.end method

.method public hasFlag(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-nez v1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getFlags()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 585
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one flag must be checked at once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1054
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method public remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public resetFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getFlags()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 568
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 3

    .line 669
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 672
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 674
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 0

    .line 722
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setAppearanceState(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 781
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setBlendMode(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 986
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setBorder(Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 807
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Border:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setBorder(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 818
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Border:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 873
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setColor(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setColor(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 850
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setColor([F)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 861
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setColor(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 365
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setContents(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 2

    .line 376
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "UnicodeBig"

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setDate(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 476
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->M:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setDownAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 708
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setDownAppearance(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 758
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setFlag(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getFlags()I

    move-result v0

    or-int/2addr p1, v0

    .line 556
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 2

    .line 503
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setLang(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 3

    .line 967
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public setName(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 455
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setNonStrokingOpacity(F)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 4

    .line 1014
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ca:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setNormalAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 686
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setNormalAppearance(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 734
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 431
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->page:Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 433
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setRectangle(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 933
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setRolloverAppearance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 697
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setRolloverAppearance(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 746
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setAppearance(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotationAppearance;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setStrokingOpacity(F)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 4

    .line 1040
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setStructParentIndex(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 2

    .line 901
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .locals 1

    .line 911
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    return-object p1
.end method
