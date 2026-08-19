.class final Lcom/google/android/gms/internal/ads/zzexp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeyl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexp;->zza:Lcom/google/android/gms/internal/ads/zzeyl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfdx;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzexq;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzexq;->zzb:Lcom/google/android/gms/internal/ads/zzeym;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzexq;->zza:Lcom/google/android/gms/internal/ads/zzeyk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexp;->zza:Lcom/google/android/gms/internal/ads/zzeyl;

    const/4 v2, 0x0

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcui;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzexm;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzexm;->zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfdl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexp;->zza:Lcom/google/android/gms/internal/ads/zzeyl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzexm;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzexm;->zza()Lcom/google/android/gms/internal/ads/zzcui;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcui;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfdl;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    return-void
.end method
