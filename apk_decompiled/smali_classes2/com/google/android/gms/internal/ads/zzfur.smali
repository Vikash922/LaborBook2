.class final Lcom/google/android/gms/internal/ads/zzfur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuo;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfuo;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfuv;

.field private volatile zzc:Lcom/google/android/gms/internal/ads/zzfuo;

.field private zzd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:Lcom/google/android/gms/internal/ads/zzfuv;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<supplier that returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:Lcom/google/android/gms/internal/ads/zzfuv;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    .line 2
    monitor-exit v0

    return-object v2

    .line 3
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/lang/Object;

    return-object v0
.end method
