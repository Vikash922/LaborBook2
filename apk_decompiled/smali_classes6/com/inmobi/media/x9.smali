.class public final Lcom/inmobi/media/x9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Q0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;)V
    .locals 1

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/x9;->a:Lcom/inmobi/media/Q0;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/x9;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->h0()Lcom/inmobi/media/S;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/inmobi/media/Kb;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h-user-agent"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 4
    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v3, v0, Lcom/inmobi/media/l9;->k:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/media/S;->f()V

    .line 9
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/Kb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "root"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/I2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    instance-of v3, v1, Lcom/inmobi/commons/core/configs/RootConfig;

    if-eqz v3, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/inmobi/commons/core/configs/RootConfig;

    :cond_2
    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/RootConfig;->isMonetizationDisabled()Z

    move-result v1

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance v0, Lcom/inmobi/media/K;

    .line 12
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MONETIZATION_DISABLED:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v2, 0x7dc

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0

    .line 14
    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/inmobi/media/l9;->d:Z

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_5
    new-instance v0, Lcom/inmobi/media/K;

    .line 17
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->GDPR_COMPLIANCE_ENFORCED:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v2, 0x85d    # 3.0E-42f

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/K;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    throw v0
.end method
