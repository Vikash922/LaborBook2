.class final Lcom/google/android/gms/internal/ads/zzfjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfjn;JLcom/google/android/gms/ads/internal/client/zzdx;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzc:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzc:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zze(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zze(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:J

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 3
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzfjn;->zzj(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfiz;->zzc(Lcom/google/android/gms/ads/AdFormat;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
