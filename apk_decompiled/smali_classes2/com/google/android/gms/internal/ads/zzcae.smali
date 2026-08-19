.class final Lcom/google/android/gms/internal/ads/zzcae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi(Lcom/google/android/gms/internal/ads/zzcak;)Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi(Lcom/google/android/gms/internal/ads/zzcak;)Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcal;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
