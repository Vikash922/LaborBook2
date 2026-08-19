.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;
.super Ljava/lang/Object;
.source "MetaDo.java"


# static fields
.field public static final META_ANIMATEPALETTE:I = 0x436

.field public static final META_ARC:I = 0x817

.field public static final META_BITBLT:I = 0x922

.field public static final META_CHORD:I = 0x830

.field public static final META_CREATEBRUSHINDIRECT:I = 0x2fc

.field public static final META_CREATEFONTINDIRECT:I = 0x2fb

.field public static final META_CREATEPALETTE:I = 0xf7

.field public static final META_CREATEPATTERNBRUSH:I = 0x1f9

.field public static final META_CREATEPENINDIRECT:I = 0x2fa

.field public static final META_CREATEREGION:I = 0x6ff

.field public static final META_DELETEOBJECT:I = 0x1f0

.field public static final META_DIBBITBLT:I = 0x940

.field public static final META_DIBCREATEPATTERNBRUSH:I = 0x142

.field public static final META_DIBSTRETCHBLT:I = 0xb41

.field public static final META_ELLIPSE:I = 0x418

.field public static final META_ESCAPE:I = 0x626

.field public static final META_EXCLUDECLIPRECT:I = 0x415

.field public static final META_EXTFLOODFILL:I = 0x548

.field public static final META_EXTTEXTOUT:I = 0xa32

.field public static final META_FILLREGION:I = 0x228

.field public static final META_FLOODFILL:I = 0x419

.field public static final META_FRAMEREGION:I = 0x429

.field public static final META_INTERSECTCLIPRECT:I = 0x416

.field public static final META_INVERTREGION:I = 0x12a

.field public static final META_LINETO:I = 0x213

.field public static final META_MOVETO:I = 0x214

.field public static final META_OFFSETCLIPRGN:I = 0x220

.field public static final META_OFFSETVIEWPORTORG:I = 0x211

.field public static final META_OFFSETWINDOWORG:I = 0x20f

.field public static final META_PAINTREGION:I = 0x12b

.field public static final META_PATBLT:I = 0x61d

.field public static final META_PIE:I = 0x81a

.field public static final META_POLYGON:I = 0x324

.field public static final META_POLYLINE:I = 0x325

.field public static final META_POLYPOLYGON:I = 0x538

.field public static final META_REALIZEPALETTE:I = 0x35

.field public static final META_RECTANGLE:I = 0x41b

.field public static final META_RESIZEPALETTE:I = 0x139

.field public static final META_RESTOREDC:I = 0x127

.field public static final META_ROUNDRECT:I = 0x61c

.field public static final META_SAVEDC:I = 0x1e

.field public static final META_SCALEVIEWPORTEXT:I = 0x412

.field public static final META_SCALEWINDOWEXT:I = 0x410

.field public static final META_SELECTCLIPREGION:I = 0x12c

.field public static final META_SELECTOBJECT:I = 0x12d

.field public static final META_SELECTPALETTE:I = 0x234

.field public static final META_SETBKCOLOR:I = 0x201

.field public static final META_SETBKMODE:I = 0x102

.field public static final META_SETDIBTODEV:I = 0xd33

.field public static final META_SETMAPMODE:I = 0x103

.field public static final META_SETMAPPERFLAGS:I = 0x231

.field public static final META_SETPALENTRIES:I = 0x37

.field public static final META_SETPIXEL:I = 0x41f

.field public static final META_SETPOLYFILLMODE:I = 0x106

.field public static final META_SETRELABS:I = 0x105

.field public static final META_SETROP2:I = 0x104

.field public static final META_SETSTRETCHBLTMODE:I = 0x107

.field public static final META_SETTEXTALIGN:I = 0x12e

.field public static final META_SETTEXTCHAREXTRA:I = 0x108

.field public static final META_SETTEXTCOLOR:I = 0x209

.field public static final META_SETTEXTJUSTIFICATION:I = 0x20a

.field public static final META_SETVIEWPORTEXT:I = 0x20e

.field public static final META_SETVIEWPORTORG:I = 0x20d

.field public static final META_SETWINDOWEXT:I = 0x20c

.field public static final META_SETWINDOWORG:I = 0x20b

.field public static final META_STRETCHBLT:I = 0xb23

.field public static final META_STRETCHDIB:I = 0xf43

.field public static final META_TEXTOUT:I = 0x521


# instance fields
.field bottom:I

.field public cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

.field public in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

.field inch:I

.field left:I

.field right:I

.field state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

.field top:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    .line 167
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 168
    new-instance p2, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    return-void
.end method

.method static getArc(FFFF)F
    .locals 2

    sub-float/2addr p3, p1

    float-to-double v0, p3

    sub-float/2addr p2, p0

    float-to-double p0, p2

    .line 734
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpg-double p2, p0, p2

    if-gez p2, :cond_0

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr p0, p2

    :cond_0
    const-wide p2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p2

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    double-to-float p0, p0

    return p0
.end method

.method public static wrapBMP(Lcom/itextpdf/io/image/ImageData;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_3

    .line 753
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    .line 755
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 757
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 758
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 760
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    .line 764
    :goto_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    .line 765
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 767
    invoke-static {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const/16 v4, 0x9

    .line 768
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const/16 v4, 0x300

    .line 769
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    add-int/lit8 v4, v1, 0x27

    .line 771
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 772
    invoke-static {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    add-int/lit8 v4, v1, 0xe

    .line 774
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    const/4 v4, 0x0

    .line 775
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const/4 v5, 0x4

    .line 777
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    const/16 v5, 0x103

    .line 778
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const/16 v5, 0x8

    .line 779
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const/4 v5, 0x5

    .line 781
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    const/16 v6, 0x20b

    .line 782
    invoke-static {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 783
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 784
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 786
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    const/16 v5, 0x20c

    .line 787
    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 788
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 789
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    add-int/lit8 v1, v1, 0xd

    .line 791
    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    const/16 v1, 0xb41

    .line 792
    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    const v1, 0xcc0020

    .line 793
    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 794
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 795
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 796
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 797
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 798
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 799
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result p0

    float-to-int p0, p0

    invoke-static {v3, p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 800
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 801
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 802
    array-length p0, v0

    const/16 v1, 0xe

    sub-int/2addr p0, v1

    invoke-virtual {v3, v0, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 803
    array-length p0, v0

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_2

    .line 804
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    const/4 p0, 0x3

    .line 806
    invoke-static {v3, p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 807
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 808
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 809
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 749
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Only BMP can be wrapped in WMF."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeDWord(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffff

    and-int v1, p1, v0

    .line 832
    invoke-static {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    ushr-int/lit8 p1, p1, 0x10

    and-int/2addr p1, v0

    .line 833
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static writeWord(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 820
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 821
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public isNullStrokeFill(Z)Z
    .locals 5

    .line 687
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    move-result-object v1

    .line 689
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getStyle()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 690
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getStyle()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 691
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 695
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinRectangle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    goto :goto_4

    .line 697
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    :cond_5
    :goto_4
    return v3
.end method

.method public outputText(IIIIIIILjava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    .line 620
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentFont()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    move-result-object v2

    .line 621
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 622
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 623
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getAngle()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformAngle(F)F

    move-result v5

    float-to-double v5, v5

    .line 624
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 625
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 626
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFontSize(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)F

    move-result v6

    .line 627
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFont()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v8

    .line 628
    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getTextAlign()I

    move-result v9

    .line 631
    iget-object v10, v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v10, v1}, Lcom/itextpdf/io/font/FontEncoding;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 632
    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v12, v11, :cond_0

    aget-byte v14, v10, v12

    and-int/lit16 v14, v14, 0xff

    .line 633
    invoke-virtual {v8, v14}, Lcom/itextpdf/io/font/FontProgram;->getWidth(I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v10, v6, v10

    int-to-float v11, v13

    mul-float/2addr v10, v11

    .line 638
    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v11

    int-to-float v11, v11

    .line 639
    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v8

    const/4 v12, 0x3

    aget v8, v8, v12

    int-to-float v8, v8

    .line 640
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 641
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v14, v5

    move-object/from16 p3, v2

    float-to-double v1, v7

    neg-float v5, v7

    move/from16 p1, v6

    float-to-double v5, v5

    move v12, v8

    float-to-double v7, v3

    float-to-double v3, v4

    move-wide/from16 v20, v14

    move-wide/from16 v16, v1

    move-wide/from16 v18, v5

    move-wide/from16 v22, v7

    move-wide/from16 v24, v3

    invoke-virtual/range {v13 .. v25}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    and-int/lit8 v1, v9, 0x6

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    neg-float v1, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v9, 0x2

    if-ne v1, v4, :cond_2

    neg-float v1, v10

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    and-int/lit8 v2, v9, 0x18

    const/16 v5, 0x18

    if-ne v2, v5, :cond_3

    :goto_2
    move v2, v12

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    and-int/lit8 v3, v9, 0x8

    if-ne v3, v2, :cond_4

    neg-float v3, v11

    goto :goto_2

    :cond_4
    move v2, v12

    neg-float v3, v2

    .line 654
    :goto_3
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 655
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBackgroundColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v4

    .line 656
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 657
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v13, v1

    add-float v4, v3, v11

    float-to-double v4, v4

    float-to-double v6, v10

    sub-float v8, v2, v11

    float-to-double v8, v8

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    invoke-virtual/range {v12 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 658
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 660
    :cond_5
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentTextColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    .line 661
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 662
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 663
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentFont()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFont()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v4

    const-string v5, "Cp1252"

    sget-object v6, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {v4, v5, v6}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v4

    move/from16 v5, p1

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 665
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 666
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-object/from16 v4, p8

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 667
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 668
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->isUnderline()Z

    move-result v2

    const/high16 v4, 0x41700000    # 15.0f

    if-eqz v2, :cond_6

    .line 669
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v12, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v6, v5, v2

    sub-float v2, v3, v6

    float-to-double v14, v2

    float-to-double v6, v10

    div-float v2, v5, v4

    float-to-double v8, v2

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 670
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 672
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->isStrikeout()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 673
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v12, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float v6, v5, v1

    add-float/2addr v3, v6

    float-to-double v14, v3

    float-to-double v1, v10

    div-float v6, v5, v4

    float-to-double v3, v6

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 674
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 676
    :cond_7
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public readAll()V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 177
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v0

    const v1, -0x65393229

    if-ne v0, v1, :cond_1c

    .line 180
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 181
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    .line 182
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    .line 183
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    .line 184
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    .line 185
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    iput v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->inch:I

    .line 186
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    iget v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setScalingX(F)V

    .line 187
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    iget v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->inch:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setScalingY(F)V

    .line 188
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWx(I)V

    .line 189
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWy(I)V

    .line 190
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    iget v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWx(I)V

    .line 191
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    iget v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWy(I)V

    .line 192
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    .line 193
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 194
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 198
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 199
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 201
    :goto_0
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v11

    .line 202
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v12

    const/4 v0, 0x3

    if-ge v12, v0, :cond_0

    .line 602
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->cleanup(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    return-void

    .line 205
    :cond_0
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 206
    const-string v5, "Cp1252"

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    sparse-switch v1, :sswitch_data_0

    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    goto/16 :goto_13

    .line 564
    :sswitch_0
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    const/16 v0, 0xf43

    if-ne v1, v0, :cond_1

    .line 566
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 568
    :cond_1
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 569
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 570
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 571
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 572
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 573
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 574
    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 575
    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    mul-int/lit8 v8, v12, 0x2

    .line 576
    iget-object v13, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v13

    sub-int/2addr v13, v11

    sub-int/2addr v8, v13

    new-array v13, v8, [B

    :goto_1
    if-ge v15, v8, :cond_2

    .line 578
    iget-object v14, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 580
    :cond_2
    :try_start_0
    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 581
    iget-object v14, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v23, v11

    float-to-double v10, v7

    move/from16 v24, v7

    float-to-double v7, v6

    move/from16 v25, v2

    move/from16 v26, v3

    float-to-double v2, v5

    move/from16 v27, v0

    move/from16 v28, v1

    float-to-double v0, v4

    move-wide v15, v10

    move-wide/from16 v17, v7

    move-wide/from16 v19, v2

    move-wide/from16 v21, v0

    :try_start_1
    invoke-virtual/range {v14 .. v22}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 582
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 583
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v0, 0x1

    .line 584
    invoke-static {v13, v0}, Lcom/itextpdf/io/image/ImageDataFactory;->createBmp([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object v1

    .line 585
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 587
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v2

    mul-float/2addr v2, v5

    move/from16 v3, v28

    int-to-float v3, v3

    div-float/2addr v2, v3

    neg-float v7, v4

    .line 588
    invoke-virtual {v1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v1

    mul-float/2addr v7, v1

    move/from16 v1, v27

    int-to-float v1, v1

    div-float/2addr v7, v1

    move/from16 v8, v26

    int-to-float v8, v8

    mul-float/2addr v5, v8

    div-float/2addr v5, v3

    sub-float v3, v24, v5

    move/from16 v5, v25

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    add-float/2addr v6, v4

    sub-float/2addr v6, v7

    .line 591
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v4, v3, v6, v2, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-virtual {v1, v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 592
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_7

    :catch_0
    move/from16 v23, v11

    goto/16 :goto_7

    :sswitch_1
    move/from16 v23, v11

    .line 478
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 479
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 480
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 481
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-eqz v4, :cond_3

    .line 487
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 488
    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    .line 489
    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    .line 490
    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    goto :goto_2

    :cond_3
    move v4, v15

    move v6, v4

    move v7, v6

    move v8, v7

    .line 492
    :goto_2
    new-array v10, v0, [B

    move v11, v15

    :goto_3
    if-ge v11, v0, :cond_5

    .line 495
    iget-object v13, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v13

    int-to-byte v13, v13

    if-nez v13, :cond_4

    goto :goto_4

    .line 498
    :cond_4
    aput-byte v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 502
    :cond_5
    :goto_4
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10, v15, v11, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 505
    :catch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10, v15, v11}, Ljava/lang/String;-><init>([BII)V

    :goto_5
    move-object v10, v0

    move-object/from16 v0, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    .line 507
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_2
    move/from16 v23, v11

    .line 407
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_7

    .line 409
    :cond_6
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    .line 410
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 411
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v10

    .line 412
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 413
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 414
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 415
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 416
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v0

    add-float v11, v3, v0

    div-float/2addr v11, v14

    add-float v21, v4, v8

    div-float v14, v21, v14

    .line 419
    invoke-static {v11, v14, v2, v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v2

    .line 420
    invoke-static {v11, v14, v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v5, v1, v7

    if-gtz v5, :cond_7

    add-float/2addr v1, v6

    :cond_7
    float-to-double v5, v0

    float-to-double v7, v8

    float-to-double v10, v3

    float-to-double v3, v4

    float-to-double v13, v2

    float-to-double v1, v1

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v10

    move-wide/from16 v30, v3

    move-wide/from16 v32, v13

    move-wide/from16 v34, v1

    .line 424
    invoke-static/range {v24 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_7

    .line 427
    :cond_8
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 428
    aget-wide v3, v2, v15

    double-to-float v3, v3

    const/4 v4, 0x1

    .line 429
    aget-wide v5, v2, v4

    double-to-float v2, v5

    .line 430
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v5, v3

    float-to-double v2, v2

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 431
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_9

    .line 432
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 433
    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v0, 0x2

    aget-wide v25, v4, v0

    const/4 v8, 0x3

    aget-wide v27, v4, v8

    const/4 v8, 0x4

    aget-wide v29, v4, v8

    const/4 v8, 0x5

    aget-wide v31, v4, v8

    const/4 v8, 0x6

    aget-wide v33, v4, v8

    const/4 v8, 0x7

    aget-wide v35, v4, v8

    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v36}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 435
    :cond_9
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto :goto_7

    :sswitch_3
    move/from16 v23, v11

    .line 374
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    :catch_2
    :goto_7
    move/from16 v21, v12

    goto/16 :goto_10

    .line 376
    :cond_a
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    .line 377
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 378
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    .line 379
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    .line 380
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v5

    .line 381
    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v8

    .line 382
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v10

    .line 383
    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v13, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v11

    add-float v13, v8, v11

    div-float/2addr v13, v14

    add-float v21, v10, v5

    div-float v14, v21, v14

    .line 386
    invoke-static {v13, v14, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v3

    .line 387
    invoke-static {v13, v14, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v1

    sub-float/2addr v1, v3

    cmpg-float v2, v1, v7

    if-gtz v2, :cond_b

    add-float/2addr v1, v6

    :cond_b
    float-to-double v6, v11

    float-to-double v4, v5

    move v11, v1

    float-to-double v0, v8

    move/from16 v21, v12

    move v8, v13

    float-to-double v12, v10

    float-to-double v2, v3

    float-to-double v10, v11

    move-wide/from16 v24, v6

    move-wide/from16 v26, v4

    move-wide/from16 v28, v0

    move-wide/from16 v30, v12

    move-wide/from16 v32, v2

    move-wide/from16 v34, v10

    .line 391
    invoke-static/range {v24 .. v35}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_9

    .line 394
    :cond_c
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 395
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v3, v8

    float-to-double v5, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 396
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    aget-wide v7, v1, v15

    const/4 v10, 0x1

    aget-wide v11, v1, v10

    invoke-virtual {v2, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 397
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_d

    .line 398
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 399
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v7, 0x2

    aget-wide v25, v1, v7

    const/4 v8, 0x3

    aget-wide v27, v1, v8

    const/4 v10, 0x4

    aget-wide v29, v1, v10

    const/4 v11, 0x5

    aget-wide v31, v1, v11

    const/4 v12, 0x6

    aget-wide v33, v1, v12

    const/4 v13, 0x7

    aget-wide v35, v1, v13

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v36}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 401
    :cond_d
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_10

    :sswitch_4
    move/from16 v23, v11

    move/from16 v21, v12

    .line 351
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_9

    .line 353
    :cond_e
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    .line 354
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    .line 355
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 356
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 357
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 358
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 359
    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 360
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v10

    add-float v11, v5, v10

    div-float/2addr v11, v14

    add-float v12, v8, v4

    div-float/2addr v12, v14

    .line 363
    invoke-static {v11, v12, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v2

    .line 364
    invoke-static {v11, v12, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v0

    sub-float/2addr v0, v2

    cmpg-float v1, v0, v7

    if-gtz v1, :cond_f

    add-float/2addr v0, v6

    .line 368
    :cond_f
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v6, v10

    float-to-double v3, v4

    float-to-double v10, v5

    float-to-double v12, v8

    float-to-double v14, v2

    float-to-double v8, v0

    move-object/from16 v24, v1

    move-wide/from16 v25, v6

    move-wide/from16 v27, v3

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    move-wide/from16 v33, v14

    move-wide/from16 v35, v8

    invoke-virtual/range {v24 .. v36}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-object/from16 v9, p0

    .line 369
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_10

    :sswitch_5
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 453
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_9

    .line 455
    :cond_10
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 456
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 457
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 458
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 459
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 460
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 461
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v11, v5

    float-to-double v13, v2

    sub-float/2addr v3, v5

    float-to-double v5, v3

    sub-float/2addr v4, v2

    float-to-double v2, v4

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    move-wide v15, v5

    move-wide/from16 v17, v2

    move-wide/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_10

    :sswitch_6
    move/from16 v23, v11

    move/from16 v21, v12

    .line 316
    invoke-virtual {v9, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_9
    goto/16 :goto_10

    .line 318
    :cond_11
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 319
    new-array v1, v0, [I

    move v2, v15

    :goto_a
    if-ge v2, v0, :cond_12

    .line 321
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    if-ge v15, v0, :cond_14

    .line 323
    aget v2, v1, v15

    .line 324
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 325
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 326
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v8, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    float-to-double v10, v8

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v5, 0x1

    :goto_c
    if-ge v5, v2, :cond_13

    .line 328
    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    .line 329
    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    .line 330
    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v6

    float-to-double v10, v6

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v8, v10, v11, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 332
    :cond_13
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    float-to-double v5, v3

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 334
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_10

    :sswitch_7
    move/from16 v23, v11

    move/from16 v21, v12

    .line 512
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 513
    new-array v1, v0, [B

    move v2, v15

    :goto_d
    if-ge v2, v0, :cond_16

    .line 516
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v3

    int-to-byte v3, v3

    if-nez v3, :cond_15

    goto :goto_e

    .line 519
    :cond_15
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 523
    :cond_16
    :goto_e
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v15, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    .line 526
    :catch_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v15, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_f
    move-object v8, v3

    add-int/lit8 v0, v0, 0x1

    const v1, 0xfffe

    and-int/2addr v0, v1

    .line 529
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 530
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 531
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 532
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    goto :goto_10

    :sswitch_8
    move/from16 v23, v11

    move/from16 v21, v12

    .line 552
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 553
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 554
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 555
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 556
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 557
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v0

    float-to-double v11, v0

    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    float-to-double v13, v0

    const-wide v15, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide v17, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 558
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 559
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_13

    :sswitch_9
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 441
    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_13

    .line 443
    :cond_17
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    .line 444
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 445
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    .line 446
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    .line 447
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v11, v4

    float-to-double v13, v1

    sub-float/2addr v2, v4

    float-to-double v4, v2

    sub-float/2addr v3, v1

    float-to-double v1, v3

    move-wide v15, v4

    move-wide/from16 v17, v1

    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_13

    :sswitch_a
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 339
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_13

    .line 341
    :cond_18
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 342
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 343
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 344
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 345
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    float-to-double v6, v4

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    float-to-double v10, v1

    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    float-to-double v1, v1

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v33, 0x0

    const-wide v35, 0x4076800000000000L    # 360.0

    move-object/from16 v24, v5

    move-wide/from16 v25, v6

    move-wide/from16 v27, v10

    move-wide/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-virtual/range {v24 .. v36}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_13

    :sswitch_b
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 467
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    .line 468
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 469
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    .line 470
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    .line 471
    iget-object v10, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v11, v4

    float-to-double v13, v1

    sub-float/2addr v2, v4

    float-to-double v4, v2

    sub-float/2addr v3, v1

    float-to-double v1, v3

    move-wide v15, v4

    move-wide/from16 v17, v1

    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 472
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 473
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_13

    :sswitch_c
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 284
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 285
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 286
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 287
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 288
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    float-to-double v5, v2

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v2, v0

    :goto_11
    if-ge v2, v1, :cond_19

    .line 290
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 291
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 292
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    float-to-double v6, v3

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 294
    :cond_19
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto/16 :goto_13

    :sswitch_d
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 299
    invoke-virtual {v9, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_13

    .line 301
    :cond_1a
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 302
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 303
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 304
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v4, v0

    :goto_12
    if-ge v4, v1, :cond_1b

    .line 306
    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 307
    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    .line 308
    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v8, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v10, v5

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v7, v10, v11, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 310
    :cond_1b
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    float-to-double v4, v2

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_13

    :sswitch_e
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 223
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;-><init>()V

    .line 224
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 225
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    goto/16 :goto_13

    :sswitch_f
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 230
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;-><init>()V

    .line 231
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 232
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    goto/16 :goto_13

    :sswitch_10
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 216
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;-><init>()V

    .line 217
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 218
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    goto/16 :goto_13

    :sswitch_11
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 266
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 267
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    .line 268
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/kernel/geom/Point;)V

    goto/16 :goto_13

    :sswitch_12
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 273
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 274
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 275
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 276
    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v10

    double-to-int v3, v10

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    float-to-double v7, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 277
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v4, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    float-to-double v4, v4

    iget-object v6, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 278
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 279
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    new-instance v4, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v4, v2, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/kernel/geom/Point;)V

    goto/16 :goto_13

    :sswitch_13
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 261
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWy(I)V

    .line 262
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWx(I)V

    goto/16 :goto_13

    :sswitch_14
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 257
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWy(I)V

    .line 258
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWx(I)V

    goto/16 :goto_13

    :sswitch_15
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 539
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentTextColor(Lcom/itextpdf/kernel/colors/Color;)V

    goto/16 :goto_13

    :sswitch_16
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 536
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)V

    goto/16 :goto_13

    :sswitch_17
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 243
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 244
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->deleteMetaObject(I)V

    goto/16 :goto_13

    :sswitch_18
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 542
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setTextAlign(I)V

    goto/16 :goto_13

    :sswitch_19
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 237
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 238
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->selectMetaObject(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    goto :goto_13

    :sswitch_1a
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 252
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 253
    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->restoreState(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    goto :goto_13

    :sswitch_1b
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 548
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setPolyFillMode(I)V

    goto :goto_13

    :sswitch_1c
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 545
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setBackgroundMode(I)V

    goto :goto_13

    :sswitch_1d
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 212
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;-><init>()V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    goto :goto_13

    :sswitch_1e
    move v0, v10

    move/from16 v23, v11

    move/from16 v21, v12

    .line 248
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->saveState(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 600
    :goto_13
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    mul-int/lit8 v12, v21, 0x2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v2

    sub-int v2, v2, v23

    sub-int/2addr v12, v2

    invoke-virtual {v1, v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    move v10, v0

    goto/16 :goto_0

    .line 178
    :cond_1c
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Not a placeable windows metafile."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1e
        0xf7 -> :sswitch_1d
        0x102 -> :sswitch_1c
        0x106 -> :sswitch_1b
        0x127 -> :sswitch_1a
        0x12d -> :sswitch_19
        0x12e -> :sswitch_18
        0x142 -> :sswitch_1d
        0x1f0 -> :sswitch_17
        0x201 -> :sswitch_16
        0x209 -> :sswitch_15
        0x20b -> :sswitch_14
        0x20c -> :sswitch_13
        0x213 -> :sswitch_12
        0x214 -> :sswitch_11
        0x2fa -> :sswitch_10
        0x2fb -> :sswitch_f
        0x2fc -> :sswitch_e
        0x324 -> :sswitch_d
        0x325 -> :sswitch_c
        0x416 -> :sswitch_b
        0x418 -> :sswitch_a
        0x41b -> :sswitch_9
        0x41f -> :sswitch_8
        0x521 -> :sswitch_7
        0x538 -> :sswitch_6
        0x61c -> :sswitch_5
        0x6ff -> :sswitch_1d
        0x817 -> :sswitch_4
        0x81a -> :sswitch_3
        0x830 -> :sswitch_2
        0xa32 -> :sswitch_1
        0xb41 -> :sswitch_0
        0xf43 -> :sswitch_0
    .end sparse-switch
.end method

.method public strokeAndFill()V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    move-result-object v1

    .line 708
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getStyle()I

    move-result v0

    .line 709
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getStyle()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 711
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 712
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getPolyFillMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 713
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 720
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 722
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getPolyFillMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 723
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathEoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_1
    return-void
.end method
