.class public final Lcom/google/android/gms/internal/ads/zzawy;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzavt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;IILcom/google/android/gms/internal/ads/zzavt;)V
    .locals 7

    .line 1
    const-string v3, "5el+rCV4lcaWS1gvt3lCAaH+20tOJyIAJrK3BNimLVE="

    const/16 v6, 0x5e

    const-string v2, "BC7L/NCOnXWRm7JYe+JuyF6kvlir6BpsAS0Yfubd/KoT9Dq97JPNt3OElb9RFD/3"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzh:Lcom/google/android/gms/internal/ads/zzavt;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzh:Lcom/google/android/gms/internal/ads/zzavt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavt;->zza()Ljava/util/List;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    .line 2
    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zza(I)I

    move-result v0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zzab(I)Lcom/google/android/gms/internal/ads/zzarz;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
