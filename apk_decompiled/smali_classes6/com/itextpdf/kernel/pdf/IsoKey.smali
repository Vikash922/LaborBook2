.class public final enum Lcom/itextpdf/kernel/pdf/IsoKey;
.super Ljava/lang/Enum;
.source "IsoKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/IsoKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum SIGNATURE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 50
    new-instance v0, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v1, "CANVAS_STACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 51
    new-instance v1, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v2, "FILL_COLOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 52
    new-instance v2, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v3, "EXTENDED_GRAPHICS_STATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 53
    new-instance v3, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v4, "INLINE_IMAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/IsoKey;->INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 54
    new-instance v4, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v5, "PAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/kernel/pdf/IsoKey;->PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 55
    new-instance v5, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v6, "PDF_OBJECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/IsoKey;->PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 56
    new-instance v6, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v7, "RENDERING_INTENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/kernel/pdf/IsoKey;->RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 57
    new-instance v7, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v8, "STROKE_COLOR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 58
    new-instance v8, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v9, "TAG_STRUCTURE_ELEMENT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/kernel/pdf/IsoKey;->TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 59
    new-instance v9, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v10, "FONT_GLYPHS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 60
    new-instance v10, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v11, "XREF_TABLE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/itextpdf/kernel/pdf/IsoKey;->XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 61
    new-instance v11, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v12, "SIGNATURE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/kernel/pdf/IsoKey;->SIGNATURE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 49
    filled-new-array/range {v0 .. v11}, [Lcom/itextpdf/kernel/pdf/IsoKey;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->$VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/IsoKey;
    .locals 1

    .line 49
    const-class v0, Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/IsoKey;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/IsoKey;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->$VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/IsoKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/IsoKey;

    return-object v0
.end method
