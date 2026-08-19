.class public Lcom/itextpdf/io/font/otf/Glyph;
.super Ljava/lang/Object;
.source "Glyph.java"


# static fields
.field private static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field private static final REPLACEMENT_CHARACTERS:[C

.field private static final REPLACEMENT_CHARACTER_STRING:Ljava/lang/String;


# instance fields
.field anchorDelta:S

.field private bbox:[I

.field private chars:[C

.field private final code:I

.field private final isMark:Z

.field private unicode:I

.field private final width:I

.field xAdvance:S

.field xPlacement:S

.field yAdvance:S

.field yPlacement:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 53
    new-array v0, v0, [C

    const/4 v1, 0x0

    const v2, 0xfffd

    aput-char v2, v0, v1

    sput-object v0, Lcom/itextpdf/io/font/otf/Glyph;->REPLACEMENT_CHARACTERS:[C

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/otf/Glyph;->REPLACEMENT_CHARACTER_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .line 121
    invoke-static {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars(I)[C

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[CZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[CZ)V

    return-void
.end method

.method public constructor <init>(III[CZ)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    const/4 v0, 0x0

    .line 70
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    .line 71
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    .line 73
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    .line 74
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    .line 77
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    .line 135
    iput p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    .line 136
    iput p2, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    .line 137
    iput p3, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    .line 138
    iput-boolean p5, p0, Lcom/itextpdf/io/font/otf/Glyph;->isMark:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p3}, Lcom/itextpdf/io/font/otf/Glyph;->getChars(I)[C

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[CZ)V

    .line 111
    iput-object p4, p0, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    return-void
.end method

.method public constructor <init>(II[C)V
    .locals 6

    .line 98
    invoke-static {p3}, Lcom/itextpdf/io/font/otf/Glyph;->codePoint([C)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[CZ)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/Glyph;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    const/4 v0, 0x0

    .line 70
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    .line 71
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    .line 73
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    .line 74
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    .line 77
    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    .line 148
    iget v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    .line 149
    iget v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    .line 150
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    .line 151
    iget v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    .line 152
    iget-boolean v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->isMark:Z

    iput-boolean v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->isMark:Z

    .line 153
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    .line 155
    iget-short v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    .line 156
    iget-short v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    .line 157
    iget-short v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    .line 158
    iget-short v0, p1, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    iput-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    .line 159
    iget-short p1, p1, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/Glyph;I)V
    .locals 6

    .line 188
    iget v1, p1, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    iget v2, p1, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    invoke-static {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars(I)[C

    move-result-object v4

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->isMark()Z

    move-result v5

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[CZ)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    int-to-short p1, p2

    .line 174
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    int-to-short p1, p3

    .line 175
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    int-to-short p1, p4

    .line 176
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    int-to-short p1, p5

    .line 177
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    int-to-short p1, p6

    .line 178
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    return-void
.end method

.method private static codePoint([C)I
    .locals 4

    if-eqz p0, :cond_1

    .line 347
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    aget-char p0, p0, v2

    return p0

    .line 349
    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-char v0, p0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    aget-char v0, p0, v2

    aget-char p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getChars(I)[C
    .locals 1

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    .line 357
    invoke-static {p0}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static toHex(I)Ljava/lang/String;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    .line 304
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    iget-object v3, p1, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    iget v3, p1, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    iget p1, p1, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnchorDelta()S
    .locals 1

    .line 261
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    return v0
.end method

.method public getBbox()[I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->bbox:[I

    return-object v0
.end method

.method public getChars()[C
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    return v0
.end method

.method public getUnicode()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    return v0
.end method

.method public getUnicodeChars()[C
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    if-eqz v0, :cond_0

    return-object v0

    .line 331
    :cond_0
    sget-object v0, Lcom/itextpdf/io/font/otf/Glyph;->REPLACEMENT_CHARACTERS:[C

    return-object v0
.end method

.method public getUnicodeString()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    if-eqz v0, :cond_0

    .line 315
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    sget-object v0, Lcom/itextpdf/io/font/otf/Glyph;->REPLACEMENT_CHARACTER_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    return v0
.end method

.method public getXAdvance()S
    .locals 1

    .line 245
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    return v0
.end method

.method public getXPlacement()S
    .locals 1

    .line 229
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    return v0
.end method

.method public getYAdvance()S
    .locals 1

    .line 253
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    return v0
.end method

.method public getYPlacement()S
    .locals 1

    .line 237
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    return v0
.end method

.method public hasAdvance()Z
    .locals 1

    .line 278
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasOffsets()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->hasAdvance()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasPlacement()Z
    .locals 1

    .line 274
    iget-short v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidUnicode()Z
    .locals 2

    .line 204
    iget v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 285
    iget v2, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 286
    iget v1, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isMark()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->isMark:Z

    return v0
.end method

.method public setAnchorDelta(S)V
    .locals 0

    .line 265
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->anchorDelta:S

    return-void
.end method

.method public setChars([C)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    return-void
.end method

.method public setUnicode(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    .line 213
    invoke-static {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getChars(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    return-void
.end method

.method public setXAdvance(S)V
    .locals 0

    .line 249
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->xAdvance:S

    return-void
.end method

.method public setXPlacement(S)V
    .locals 0

    .line 233
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->xPlacement:S

    return-void
.end method

.method public setYAdvance(S)V
    .locals 0

    .line 257
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->yAdvance:S

    return-void
.end method

.method public setYPlacement(S)V
    .locals 0

    .line 241
    iput-short p1, p0, Lcom/itextpdf/io/font/otf/Glyph;->yPlacement:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 336
    iget v0, p0, Lcom/itextpdf/io/font/otf/Glyph;->code:I

    .line 337
    invoke-static {v0}, Lcom/itextpdf/io/font/otf/Glyph;->toHex(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/Glyph;->chars:[C

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/otf/Glyph;->unicode:I

    invoke-static {v2}, Lcom/itextpdf/io/font/otf/Glyph;->toHex(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/io/font/otf/Glyph;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 336
    const-string v1, "[id={0}, chars={1}, uni={2}, width={3}]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
