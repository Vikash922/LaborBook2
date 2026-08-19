.class public final Lcom/inmobi/media/t9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/inmobi/media/f5;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/f5;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/t9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/inmobi/media/t9;->b:Lcom/inmobi/media/f5;

    .line 3
    const-string p2, ""

    iput-object p2, p0, Lcom/inmobi/media/t9;->c:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 9
    const-string v1, "signals"

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 36
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 41
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getNovatiqConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/media/t9;->e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->isNovatiqEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 138
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 140
    :goto_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->getCarrierNames()Ljava/util/List;

    move-result-object p1

    .line 166
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 167
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 168
    invoke-static {p2, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/t9;->a:Landroid/content/Context;

    .line 170
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x5f

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_app"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    iput-boolean v2, p0, Lcom/inmobi/media/t9;->d:Z

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_7

    .line 266
    const-string v2, "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-ne v2, v3, :cond_6

    const/16 v2, 0x10

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 269
    invoke-static {v3, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    .line 270
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 272
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p2, p0, Lcom/inmobi/media/t9;->c:Ljava/lang/String;

    .line 279
    new-instance v0, Lcom/inmobi/media/u9;

    iget-object v1, p0, Lcom/inmobi/media/t9;->e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    invoke-direct {v0, p2, p1, v1}, Lcom/inmobi/media/u9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;)V

    .line 280
    new-instance p1, Lcom/inmobi/media/v9;

    iget-object p2, p0, Lcom/inmobi/media/t9;->b:Lcom/inmobi/media/f5;

    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/v9;-><init>(Lcom/inmobi/media/u9;Lcom/inmobi/media/f5;)V

    .line 281
    new-instance p2, Lcom/inmobi/media/s9;

    invoke-direct {p2, p0}, Lcom/inmobi/media/s9;-><init>(Lcom/inmobi/media/t9;)V

    invoke-virtual {p1, p2}, Lcom/inmobi/media/l9;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_5

    .line 282
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/inmobi/media/t9;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_9

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "NovatiqDataHandler"

    const-string v0, "Novatiq disabled.. skipping"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_9
    :goto_5
    return-void
.end method
