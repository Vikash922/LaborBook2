.class final Lcom/google/android/gms/internal/ads/zzeiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zza:Lcom/google/android/gms/internal/ads/zzeix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zza:Lcom/google/android/gms/internal/ads/zzeix;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeix;->zze(Lcom/google/android/gms/internal/ads/zzeix;Lcom/google/android/gms/internal/ads/zzcnz;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiw;->zza:Lcom/google/android/gms/internal/ads/zzeix;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnz;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeix;->zzc(Lcom/google/android/gms/internal/ads/zzeix;)Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeix;->zzc(Lcom/google/android/gms/internal/ads/zzeix;)Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzb()V

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeix;->zze(Lcom/google/android/gms/internal/ads/zzeix;Lcom/google/android/gms/internal/ads/zzcnz;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeix;->zzc(Lcom/google/android/gms/internal/ads/zzeix;)Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
