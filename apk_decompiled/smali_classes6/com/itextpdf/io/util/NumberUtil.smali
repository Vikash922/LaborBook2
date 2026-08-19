.class public Lcom/itextpdf/io/util/NumberUtil;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 56
    check-cast p0, Ljava/lang/Number;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static asInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 61
    check-cast p0, Ljava/lang/Number;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
