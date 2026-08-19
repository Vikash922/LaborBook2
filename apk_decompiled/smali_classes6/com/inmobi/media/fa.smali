.class public final Lcom/inmobi/media/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/inmobi/media/wa;

.field public static final c:Lcom/inmobi/commons/core/configs/SignalsConfig;

.field public static d:I

.field public static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 2
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v1, 0x0

    const-string v2, "signals"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    sput-object v0, Lcom/inmobi/media/fa;->c:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 114
    sget-object v0, Lcom/inmobi/media/ea;->a:Lcom/inmobi/media/ea;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/fa;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/inmobi/media/E3;->G()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/inmobi/media/fa;->e:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance p0, Lcom/inmobi/media/ia;

    const/16 v0, 0x8b6

    invoke-direct {p0, v0}, Lcom/inmobi/media/ia;-><init>(S)V

    invoke-static {p0}, Lcom/inmobi/media/ma;->a(Lcom/inmobi/media/la;)V

    return v2

    .line 4
    :cond_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 135
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "getApplicationInfo(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    const-string v0, "com.google.android.play.billingclient.version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 139
    :goto_0
    sget-object v0, Lcom/inmobi/media/fa;->c:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 140
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPurchases()Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;->getVersionList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    new-instance v1, Lcom/inmobi/media/ka;

    invoke-direct {v1, p0}, Lcom/inmobi/media/ka;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/inmobi/media/ma;->a(Lcom/inmobi/media/la;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v0, v2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    return v2

    .line 143
    :cond_4
    sget p0, Lcom/inmobi/media/fa;->d:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    return v1

    .line 144
    :cond_6
    :goto_2
    new-instance v3, Lcom/inmobi/media/ia;

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    const/16 p0, 0x8b8

    goto :goto_3

    :cond_8
    const/16 p0, 0x8b7

    :goto_3
    invoke-direct {v3, p0}, Lcom/inmobi/media/ia;-><init>(S)V

    invoke-static {v3}, Lcom/inmobi/media/ma;->a(Lcom/inmobi/media/la;)V

    return v2
.end method
