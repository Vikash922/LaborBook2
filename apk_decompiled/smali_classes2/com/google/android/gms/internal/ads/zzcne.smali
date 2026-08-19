.class public final Lcom/google/android/gms/internal/ads/zzcne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayh;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcmq;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcmt;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzf:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcmt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzg:Lcom/google/android/gms/internal/ads/zzcmt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzb:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzc:Lcom/google/android/gms/internal/ads/zzcmq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcne;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling AFMA_updateActiveView("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    const-string v0, "AFMA_updateActiveView"

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final zzg()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzc:Lcom/google/android/gms/internal/ads/zzcmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzg:Lcom/google/android/gms/internal/ads/zzcmt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmq;->zza(Lcom/google/android/gms/internal/ads/zzcmt;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzb:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcnd;-><init>(Lcom/google/android/gms/internal/ads/zzcne;Lorg/json/JSONObject;)V

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zze:Z

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zze:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzg()V

    return-void
.end method

.method public final zzdn(Lcom/google/android/gms/internal/ads/zzayg;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzayg;->zzj:Z

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzg:Lcom/google/android/gms/internal/ads/zzcmt;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcmt;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcmt;->zzd:J

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcmt;->zzf:Lcom/google/android/gms/internal/ads/zzayg;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zze:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcne;->zzg()V

    :cond_1
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zzf:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcne;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method
