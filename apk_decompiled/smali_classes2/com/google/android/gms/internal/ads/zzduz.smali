.class final Lcom/google/android/gms/internal/ads/zzduz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduz;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduz;->zzb:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtr;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzduz;->zzb:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzb(Lcom/google/android/gms/internal/ads/zzdva;)Lcom/google/android/gms/internal/ads/zzduo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduz;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzduo;->zzk(Ljava/lang/String;)V

    return-void
.end method
