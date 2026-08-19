.class public final Lcom/google/android/gms/internal/ads/zzdzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfex;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([^;]+=[^;]+)(;\\s|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzb;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdza;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zzb(Lcom/google/android/gms/internal/ads/zzdza;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http_timeout_millis"

    const v2, 0xea60

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zza()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const-string v4, ""

    if-ne v1, v2, :cond_c

    new-instance v6, Ljava/util/HashMap;

    .line 6
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzj()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzbd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "Cookie"

    if-eqz v1, :cond_5

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_1

    .line 28
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzb;->zza:Ljava/util/regex/Pattern;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v4

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ide="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzk()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zzb(Lcom/google/android/gms/internal/ads/zzdza;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 36
    :cond_7
    const-string v1, "pii"

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    const-string v1, "doritos"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 24
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-afma-drt-cookie"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_8
    const-string v1, "doritos_v2"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 26
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-afma-drt-v2-cookie"

    .line 27
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v0, "DSID signal does not exist."

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 29
    :cond_a
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzf()Ljava/lang/String;

    move-result-object v4

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 32
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyw;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbva;->zzg()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdza;->zza(Lcom/google/android/gms/internal/ads/zzdza;)Lcom/google/android/gms/internal/ads/zzbva;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbva;->zzk()Z

    move-result v9

    const-string v8, ""

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    return-object v0

    .line 37
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zza()I

    move-result p1

    if-ne p1, v3, :cond_e

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzh()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbva;->zzh()Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 40
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvg;

    const-string v0, "Error building request URL: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 42
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(ILjava/lang/String;)V

    goto :goto_4

    .line 45
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvg;

    .line 43
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    .line 42
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzd:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 44
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgc;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    .line 45
    throw p1
.end method
