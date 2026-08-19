.class final Lcom/google/android/gms/internal/ads/zzciw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcul;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzciz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcul;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzb:Lcom/google/android/gms/internal/ads/zzcul;

    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzb:Lcom/google/android/gms/internal/ads/zzcul;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcul;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhfg;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcix;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcrm;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzctn;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzctn;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdrt;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzciw;->zzb:Lcom/google/android/gms/internal/ads/zzcul;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciw;->zza:Lcom/google/android/gms/internal/ads/zzchv;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcix;-><init>(Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;Lcom/google/android/gms/internal/ads/zzcrm;Lcom/google/android/gms/internal/ads/zzctn;Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzeyp;Lcom/google/android/gms/internal/ads/zzexs;)V

    return-object v0
.end method
