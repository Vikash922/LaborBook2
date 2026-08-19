.class public Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;
.super Ljava/lang/Object;
.source "GreekAlphabetNumbering.java"


# static fields
.field protected static final ALPHABET_LENGTH:I = 0x18

.field protected static final ALPHABET_LOWERCASE:[C

.field protected static final ALPHABET_UPPERCASE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x18

    .line 62
    new-array v1, v0, [C

    sput-object v1, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_LOWERCASE:[C

    .line 63
    new-array v1, v0, [C

    sput-object v1, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_UPPERCASE:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 65
    sget-object v3, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_LOWERCASE:[C

    add-int/lit16 v4, v2, 0x3b1

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-le v2, v5, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    add-int/2addr v4, v7

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 66
    sget-object v3, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_UPPERCASE:[C

    add-int/lit16 v4, v2, 0x391

    if-le v2, v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSymbolFontChar(C)C
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/16 p0, 0x20

    return p0

    :pswitch_0
    const/16 p0, 0x77

    return p0

    :pswitch_1
    const/16 p0, 0x79

    return p0

    :pswitch_2
    const/16 p0, 0x63

    return p0

    :pswitch_3
    const/16 p0, 0x66

    return p0

    :pswitch_4
    const/16 p0, 0x75

    return p0

    :pswitch_5
    const/16 p0, 0x74

    return p0

    :pswitch_6
    const/16 p0, 0x73

    return p0

    :pswitch_7
    const/16 p0, 0x56

    return p0

    :pswitch_8
    const/16 p0, 0x72

    return p0

    :pswitch_9
    const/16 p0, 0x70

    return p0

    :pswitch_a
    const/16 p0, 0x6f

    return p0

    :pswitch_b
    const/16 p0, 0x78

    return p0

    :pswitch_c
    const/16 p0, 0x6e

    return p0

    :pswitch_d
    const/16 p0, 0x6d

    return p0

    :pswitch_e
    const/16 p0, 0x6c

    return p0

    :pswitch_f
    const/16 p0, 0x6b

    return p0

    :pswitch_10
    const/16 p0, 0x69

    return p0

    :pswitch_11
    const/16 p0, 0x71

    return p0

    :pswitch_12
    const/16 p0, 0x68

    return p0

    :pswitch_13
    const/16 p0, 0x7a

    return p0

    :pswitch_14
    const/16 p0, 0x65

    return p0

    :pswitch_15
    const/16 p0, 0x64

    return p0

    :pswitch_16
    const/16 p0, 0x67

    return p0

    :pswitch_17
    const/16 p0, 0x62

    return p0

    :pswitch_18
    const/16 p0, 0x61

    return p0

    :pswitch_19
    const/16 p0, 0x57

    return p0

    :pswitch_1a
    const/16 p0, 0x59

    return p0

    :pswitch_1b
    const/16 p0, 0x43

    return p0

    :pswitch_1c
    const/16 p0, 0x46

    return p0

    :pswitch_1d
    const/16 p0, 0x55

    return p0

    :pswitch_1e
    const/16 p0, 0x54

    return p0

    :pswitch_1f
    const/16 p0, 0x53

    return p0

    :pswitch_20
    const/16 p0, 0x52

    return p0

    :pswitch_21
    const/16 p0, 0x50

    return p0

    :pswitch_22
    const/16 p0, 0x4f

    return p0

    :pswitch_23
    const/16 p0, 0x58

    return p0

    :pswitch_24
    const/16 p0, 0x4e

    return p0

    :pswitch_25
    const/16 p0, 0x4d

    return p0

    :pswitch_26
    const/16 p0, 0x4c

    return p0

    :pswitch_27
    const/16 p0, 0x4b

    return p0

    :pswitch_28
    const/16 p0, 0x49

    return p0

    :pswitch_29
    const/16 p0, 0x51

    return p0

    :pswitch_2a
    const/16 p0, 0x48

    return p0

    :pswitch_2b
    const/16 p0, 0x5a

    return p0

    :pswitch_2c
    const/16 p0, 0x45

    return p0

    :pswitch_2d
    const/16 p0, 0x44

    return p0

    :pswitch_2e
    const/16 p0, 0x47

    return p0

    :pswitch_2f
    const/16 p0, 0x42

    return p0

    :pswitch_30
    const/16 p0, 0x41

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x391
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a3
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toGreekAlphabetNumber(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumber(IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toGreekAlphabetNumber(IZZ)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumberUpperCase(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumberLowerCase(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    .line 131
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 132
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->getSymbolFontChar(C)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static toGreekAlphabetNumberLowerCase(I)Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_LOWERCASE:[C

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/numbering/AlphabetNumbering;->toAlphabetNumber(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toGreekAlphabetNumberUpperCase(I)Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->ALPHABET_UPPERCASE:[C

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/numbering/AlphabetNumbering;->toAlphabetNumber(I[C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
