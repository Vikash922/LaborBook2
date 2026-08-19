.class public final Lcom/google/android/gms/internal/ads/zzesf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbxw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbxw;Lcom/google/android/gms/internal/ads/zzgcd;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesf;->zza:Lcom/google/android/gms/internal/ads/zzbxw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesf;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesf;->zzc:Landroid/content/Context;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzesf;)Lcom/google/android/gms/internal/ads/zzesg;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesf;->zza:Lcom/google/android/gms/internal/ads/zzbxw;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesf;->zzc:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzesg;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzesg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zze(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 4
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v6, v2

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbxw;->zzp(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eq v1, p0, :cond_4

    move-object p0, v0

    goto :goto_3

    .line 7
    :cond_4
    const-string p0, "fa"

    .line 5
    :goto_3
    const-string v1, "TIME_OUT"

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzax:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    :cond_5
    move-object v8, v0

    if-nez p0, :cond_6

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object v7, p0

    :goto_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzesg;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzesg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_5
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzese;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzese;-><init>(Lcom/google/android/gms/internal/ads/zzesf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesf;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
