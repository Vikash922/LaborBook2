.class final Lcom/google/android/gms/internal/ads/zzffi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfez;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffj;Lcom/google/android/gms/internal/ads/zzfez;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzb:Lcom/google/android/gms/internal/ads/zzffj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzb:Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffl;->zzc(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zzb(Lcom/google/android/gms/internal/ads/zzfez;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzb:Lcom/google/android/gms/internal/ads/zzffj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzffl;->zzc(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zzd(Lcom/google/android/gms/internal/ads/zzfez;)V

    return-void
.end method
