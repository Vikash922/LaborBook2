.class final enum Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
.super Ljava/lang/Enum;
.source "BackgroundPositionShorthandResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BackgroundPositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

.field public static final enum CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

.field public static final enum HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

.field public static final enum NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

.field public static final enum VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 254
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const-string v1, "NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->NUMERIC:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    .line 255
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const-string v2, "HORIZONTAL_POSITION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->HORIZONTAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    .line 256
    new-instance v2, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const-string v3, "VERTICAL_POSITION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->VERTICAL_POSITION:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    .line 257
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    const-string v4, "CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->CENTER:Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    .line 253
    filled-new-array {v0, v1, v2, v3}, [Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->$VALUES:[Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    .locals 1

    .line 253
    const-class v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;
    .locals 1

    .line 253
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->$VALUES:[Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    invoke-virtual {v0}, [Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BackgroundPositionShorthandResolver$BackgroundPositionType;

    return-object v0
.end method
