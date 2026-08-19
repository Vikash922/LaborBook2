.class final Lcom/google/android/gms/internal/ads/zzavv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfoo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfmt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfni;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzawi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzavu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzave;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzawk;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzavt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmt;Lcom/google/android/gms/internal/ads/zzfni;Lcom/google/android/gms/internal/ads/zzawi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzave;Lcom/google/android/gms/internal/ads/zzawk;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzavt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzfmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzb:Lcom/google/android/gms/internal/ads/zzfni;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzc:Lcom/google/android/gms/internal/ads/zzawi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzd:Lcom/google/android/gms/internal/ads/zzavu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavv;->zze:Lcom/google/android/gms/internal/ads/zzave;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzf:Lcom/google/android/gms/internal/ads/zzawk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzg:Lcom/google/android/gms/internal/ads/zzawc;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzh:Lcom/google/android/gms/internal/ads/zzavt;

    return-void
.end method

.method private final zze()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzfmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzb:Lcom/google/android/gms/internal/ads/zzfni;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfni;->zzb()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmt;->zzd()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmt;->zzg()Z

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasu;->zzg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "int"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasu;->zzf()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "attts"

    .line 7
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasu;->zzf()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zzd()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    const-string v3, "att"

    .line 9
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasu;->zzf()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zzf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attkid"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzd:Lcom/google/android/gms/internal/ads/zzavu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavu;->zza()Z

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    .line 13
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzg:Lcom/google/android/gms/internal/ads/zzawc;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzc()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzg()J

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzd()J

    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzh()J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzb()J

    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tchv"

    .line 19
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzf()J

    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tphv"

    .line 21
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zza()J

    move-result-wide v2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zze()J

    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zze:Lcom/google/android/gms/internal/ads/zzave;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzave;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "nt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzf:Lcom/google/android/gms/internal/ads/zzawk;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawk;->zzc()J

    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "vs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawk;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzc:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavv;->zze()Ljava/util/Map;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawi;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "lts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final zzb()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavv;->zze()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzh:Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavv;->zze()Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "vst"

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavt;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method final zzd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzc:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawi;->zzd(Landroid/view/View;)V

    return-void
.end method
