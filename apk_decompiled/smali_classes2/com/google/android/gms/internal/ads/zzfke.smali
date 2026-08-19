.class final Lcom/google/android/gms/internal/ads/zzfke;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Ljava/util/Timer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfkg;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/internal/ads/zzcfc;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lcom/google/android/gms/internal/ads/zzcfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Ljava/util/Timer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkg;->zzd(Lcom/google/android/gms/internal/ads/zzfkg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzc:Lcom/google/android/gms/internal/ads/zzcfc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfc;->zza:Lcom/google/android/gms/internal/ads/zzcfd;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfd;->zzaI(Lcom/google/android/gms/internal/ads/zzcfd;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
