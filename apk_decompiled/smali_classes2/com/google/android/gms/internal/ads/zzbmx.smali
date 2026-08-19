.class final Lcom/google/android/gms/internal/ads/zzbmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbnl;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbmh;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbnm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnm;JLcom/google/android/gms/internal/ads/zzbnl;Lcom/google/android/gms/internal/ads/zzbmh;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzb:Lcom/google/android/gms/internal/ads/zzbnl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzc:Lcom/google/android/gms/internal/ads/zzbmh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzd:Lcom/google/android/gms/internal/ads/zzbnm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zza:J

    sub-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGmsg /jsLoaded. JsLoaded latency is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzd:Lcom/google/android/gms/internal/ads/zzbnm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnm;->zzf(Lcom/google/android/gms/internal/ads/zzbnm;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /jsLoaded handler: Lock acquired"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzb:Lcom/google/android/gms/internal/ads/zzbnl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zze()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zze()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbnm;->zzk(Lcom/google/android/gms/internal/ads/zzbnm;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmx;->zzc:Lcom/google/android/gms/internal/ads/zzbmh;

    const-string v2, "/log"

    .line 11
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbmh;

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbji;->zzg:Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbmh;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v2, "/result"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbji;->zzo:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 13
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbmh;->zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzw;->zzi(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzj(Lcom/google/android/gms/internal/ads/zzbnm;Lcom/google/android/gms/internal/ads/zzbnl;)V

    const-string p1, "Successfully loaded JS Engine."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 17
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 9
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
