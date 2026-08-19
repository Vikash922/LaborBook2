.class public final enum Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
.super Ljava/lang/Enum;
.source "CssFontFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum EOT:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum None:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum OpenType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum SVG:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum TrueType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum WOFF:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field public static final enum WOFF2:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 182
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->None:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 184
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v2, "TrueType"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->TrueType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 186
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v3, "OpenType"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->OpenType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 188
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v4, "WOFF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->WOFF:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 190
    new-instance v4, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v5, "WOFF2"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->WOFF2:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 192
    new-instance v5, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v6, "EOT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->EOT:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 194
    new-instance v6, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    const-string v7, "SVG"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->SVG:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 181
    filled-new-array/range {v0 .. v6}, [Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->$VALUES:[Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    .locals 1

    .line 181
    const-class v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    .locals 1

    .line 181
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->$VALUES:[Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    invoke-virtual {v0}, [Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0
.end method
