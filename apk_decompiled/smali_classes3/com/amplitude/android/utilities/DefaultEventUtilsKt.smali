.class public final Lcom/amplitude/android/utilities/DefaultEventUtilsKt;
.super Ljava/lang/Object;
.source "DefaultEventUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getVersionCode",
        "",
        "Landroid/content/pm/PackageInfo;",
        "android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/Number;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amplitude/android/utilities/DefaultEventUtilsKt;->getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private static final getVersionCode(Landroid/content/pm/PackageInfo;)Ljava/lang/Number;
    .locals 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    goto :goto_0

    .line 158
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    :goto_0
    return-object p0
.end method
