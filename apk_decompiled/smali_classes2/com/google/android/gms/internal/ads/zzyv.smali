.class public abstract Lcom/google/android/gms/internal/ads/zzyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzyu;

.field private zzb:Lcom/google/android/gms/internal/ads/zzzd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze()Lcom/google/android/gms/internal/ads/zzlw;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzj()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyv;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyv;->zzb:Lcom/google/android/gms/internal/ads/zzzd;

    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzn()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract zzo([Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzyw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation
.end method

.method public abstract zzp(Ljava/lang/Object;)V
.end method

.method protected final zzq()Lcom/google/android/gms/internal/ads/zzzd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyv;->zzb:Lcom/google/android/gms/internal/ads/zzzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzd;

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyv;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyv;->zzb:Lcom/google/android/gms/internal/ads/zzzd;

    return-void
.end method

.method protected final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyv;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyu;->zzm()V

    :cond_0
    return-void
.end method
