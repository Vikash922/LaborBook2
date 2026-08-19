.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
.super Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;
.source "MetaFont.java"


# static fields
.field static final BOLDTHRESHOLD:I = 0x258

.field static final DEFAULT_PITCH:I = 0x0

.field static final ETO_CLIPPED:I = 0x4

.field static final ETO_OPAQUE:I = 0x2

.field static final FF_DECORATIVE:I = 0x5

.field static final FF_DONTCARE:I = 0x0

.field static final FF_MODERN:I = 0x3

.field static final FF_ROMAN:I = 0x1

.field static final FF_SCRIPT:I = 0x4

.field static final FF_SWISS:I = 0x2

.field static final FIXED_PITCH:I = 0x1

.field static final MARKER_BOLD:I = 0x1

.field static final MARKER_COURIER:I = 0x0

.field static final MARKER_HELVETICA:I = 0x4

.field static final MARKER_ITALIC:I = 0x2

.field static final MARKER_SYMBOL:I = 0xc

.field static final MARKER_TIMES:I = 0x8

.field static final NAME_SIZE:I = 0x20

.field static final VARIABLE_PITCH:I = 0x2

.field static final fontNames:[Ljava/lang/String;


# instance fields
.field angle:F

.field bold:I

.field charset:I

.field encoding:Lcom/itextpdf/io/font/FontEncoding;

.field faceName:Ljava/lang/String;

.field font:Lcom/itextpdf/io/font/FontProgram;

.field height:I

.field italic:I

.field pitchAndFamily:I

.field strikeout:Z

.field underline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Courier"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Courier-Bold"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Courier-Oblique"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Courier-BoldOblique"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Helvetica"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Helvetica-Bold"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Helvetica-Oblique"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Helvetica-BoldOblique"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Times-Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Times-Bold"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Times-Italic"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Times-BoldItalic"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ZapfDingbats"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 102
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;-><init>(I)V

    .line 94
    const-string v0, "arial"

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->font:Lcom/itextpdf/io/font/FontProgram;

    .line 96
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .line 227
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->angle:F

    return v0
.end method

.method public getEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;

    return-object v0
.end method

.method public getFont()Lcom/itextpdf/io/font/FontProgram;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->font:Lcom/itextpdf/io/font/FontProgram;

    if-eqz v0, :cond_0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v3, v5

    :cond_2
    or-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createRegisteredFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 150
    const-string v1, "Cp1252"

    invoke-static {v1}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 151
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->font:Lcom/itextpdf/io/font/FontProgram;

    if-eqz v0, :cond_3

    return-object v0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v3, "courier"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v3, "terminal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v3, "fixedsys"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v3, "ms sans serif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x4

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v4, "arial"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v4, "system"

    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_2

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v4, "arial black"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x5

    if-eqz v0, :cond_6

    .line 164
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/2addr v2, v4

    aget-object v0, v0, v2

    goto/16 :goto_4

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "times"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "ms serif"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "roman"

    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    const-string v6, "symbol"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 171
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    goto/16 :goto_4

    .line 174
    :cond_8
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->pitchAndFamily:I

    and-int/lit8 v6, v0, 0x3

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v5, :cond_c

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    if-eq v0, v3, :cond_b

    if-eq v0, v4, :cond_b

    if-eq v6, v5, :cond_9

    .line 195
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 192
    :cond_9
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 178
    :cond_a
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 186
    :cond_b
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 181
    :cond_c
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 168
    :cond_d
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 161
    :cond_e
    :goto_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    goto :goto_4

    .line 157
    :cond_f
    :goto_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->fontNames:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    iget v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    add-int/2addr v2, v3

    aget-object v0, v0, v2

    .line 202
    :goto_4
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->font:Lcom/itextpdf/io/font/FontProgram;

    .line 203
    invoke-static {v1}, Lcom/itextpdf/io/font/FontEncoding;->createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->font:Lcom/itextpdf/io/font/FontProgram;

    return-object v0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFontSize(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)F
    .locals 2

    .line 255
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->height:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmfFontCorrection:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->height:I

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x409c200000000000L    # 1800.0

    div-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->angle:F

    .line 115
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 116
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    const/16 v2, 0x258

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->bold:I

    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->italic:I

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->underline:Z

    .line 119
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->strikeout:Z

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->charset:I

    const/4 v0, 0x3

    .line 121
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 122
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->pitchAndFamily:I

    const/16 v0, 0x20

    .line 123
    new-array v1, v0, [B

    move v2, v4

    :goto_4
    if-ge v2, v0, :cond_5

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    int-to-byte v3, v3

    .line 130
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 133
    :cond_5
    :goto_5
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "Cp1252"

    invoke-direct {p1, v1, v4, v2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 135
    :catch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    .line 137
    :goto_6
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->faceName:Ljava/lang/String;

    return-void
.end method

.method public isStrikeout()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->strikeout:Z

    return v0
.end method

.method public isUnderline()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->underline:Z

    return v0
.end method
