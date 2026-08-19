.class public final enum Lcom/itextpdf/layout/properties/ListNumberingType;
.super Ljava/lang/Enum;
.source "ListNumberingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/properties/ListNumberingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum DECIMAL:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum DECIMAL_LEADING_ZERO:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ENGLISH_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ENGLISH_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum GREEK_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum GREEK_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ROMAN_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ROMAN_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_1:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_2:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_3:Lcom/itextpdf/layout/properties/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_4:Lcom/itextpdf/layout/properties/ListNumberingType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 55
    new-instance v0, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->DECIMAL:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v2, "DECIMAL_LEADING_ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/properties/ListNumberingType;->DECIMAL_LEADING_ZERO:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 57
    new-instance v2, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v3, "ROMAN_LOWER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/layout/properties/ListNumberingType;->ROMAN_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 58
    new-instance v3, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v4, "ROMAN_UPPER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/properties/ListNumberingType;->ROMAN_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 59
    new-instance v4, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v5, "ENGLISH_LOWER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/layout/properties/ListNumberingType;->ENGLISH_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 60
    new-instance v5, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v6, "ENGLISH_UPPER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/properties/ListNumberingType;->ENGLISH_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 61
    new-instance v6, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v7, "GREEK_LOWER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 62
    new-instance v7, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v8, "GREEK_UPPER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 64
    new-instance v8, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v9, "ZAPF_DINGBATS_1"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 66
    new-instance v9, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v10, "ZAPF_DINGBATS_2"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 68
    new-instance v10, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v11, "ZAPF_DINGBATS_3"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 70
    new-instance v11, Lcom/itextpdf/layout/properties/ListNumberingType;

    const-string v12, "ZAPF_DINGBATS_4"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/layout/properties/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 54
    filled-new-array/range {v0 .. v11}, [Lcom/itextpdf/layout/properties/ListNumberingType;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->$VALUES:[Lcom/itextpdf/layout/properties/ListNumberingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/properties/ListNumberingType;
    .locals 1

    .line 54
    const-class v0, Lcom/itextpdf/layout/properties/ListNumberingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/properties/ListNumberingType;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/layout/properties/ListNumberingType;
    .locals 1

    .line 54
    sget-object v0, Lcom/itextpdf/layout/properties/ListNumberingType;->$VALUES:[Lcom/itextpdf/layout/properties/ListNumberingType;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/properties/ListNumberingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/properties/ListNumberingType;

    return-object v0
.end method
