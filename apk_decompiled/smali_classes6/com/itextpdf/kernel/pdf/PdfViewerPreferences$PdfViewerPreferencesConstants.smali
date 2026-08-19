.class public final enum Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;
.super Ljava/lang/Enum;
.source "PdfViewerPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfViewerPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PdfViewerPreferencesConstants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum APP_DEFAULT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum ART_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum BLEED_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum CROP_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum DUPLEX_FLIP_LONG_EDGE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum DUPLEX_FLIP_SHORT_EDGE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum MEDIA_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum NONE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum PRINT_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum PRINT_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum SIMPLEX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum TRIM_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum USE_NONE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum USE_OC:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum USE_OUTLINES:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum USE_THUMBS:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum VIEW_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

.field public static final enum VIEW_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 56
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v0, v1

    const-string v2, "USE_NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->USE_NONE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 60
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v1, v2

    const-string v3, "USE_OUTLINES"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->USE_OUTLINES:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 64
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v2, v3

    const-string v4, "USE_THUMBS"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->USE_THUMBS:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 68
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v3, v4

    const-string v5, "USE_OC"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->USE_OC:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 72
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v4, v5

    const-string v6, "LEFT_TO_RIGHT"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 76
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v5, v6

    const-string v7, "RIGHT_TO_LEFT"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 80
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v6, v7

    const-string v8, "MEDIA_BOX"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->MEDIA_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 84
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v7, v8

    const-string v9, "CROP_BOX"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->CROP_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 88
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v8, v9

    const-string v10, "BLEED_BOX"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->BLEED_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 92
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v9, v10

    const-string v11, "TRIM_BOX"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->TRIM_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 96
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v10, v11

    const-string v12, "ART_BOX"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->ART_BOX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 100
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v11, v12

    const-string v13, "VIEW_AREA"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->VIEW_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 104
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v12, v13

    const-string v14, "VIEW_CLIP"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->VIEW_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 108
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v13, v14

    const-string v15, "PRINT_AREA"

    move-object/from16 v20, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->PRINT_AREA:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 112
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v14, v0

    const-string v15, "PRINT_CLIP"

    move-object/from16 v21, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->PRINT_CLIP:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 116
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object v15, v0

    const-string v1, "NONE"

    move-object/from16 v22, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->NONE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 120
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object/from16 v16, v0

    const-string v1, "APP_DEFAULT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->APP_DEFAULT:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 124
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object/from16 v17, v0

    const-string v1, "SIMPLEX"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->SIMPLEX:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object/from16 v18, v0

    const-string v1, "DUPLEX_FLIP_SHORT_EDGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->DUPLEX_FLIP_SHORT_EDGE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    .line 132
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object/from16 v19, v0

    const-string v1, "DUPLEX_FLIP_LONG_EDGE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->DUPLEX_FLIP_LONG_EDGE:Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    .line 52
    filled-new-array/range {v0 .. v19}, [Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;
    .locals 1

    .line 52
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;
    .locals 1

    .line 52
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/PdfViewerPreferences$PdfViewerPreferencesConstants;

    return-object v0
.end method
