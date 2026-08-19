.class public final Lcom/google/android/gms/internal/ads/zzdmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zza;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdre;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeat;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzebe;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfbt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzcey;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzfbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zze:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzf:Lcom/google/android/gms/internal/ads/zzauy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zza:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzd:Lcom/google/android/gms/internal/ads/zzeat;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzh:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzj:Lcom/google/android/gms/internal/ads/zzfbt;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdmq;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzauy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzf:Lcom/google/android/gms/internal/ads/zzauy;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/ads/internal/zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zza:Lcom/google/android/gms/ads/internal/zza;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzdre;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzeat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzd:Lcom/google/android/gms/internal/ads/zzeat;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzebe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzfbt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzj:Lcom/google/android/gms/internal/ads/zzfbt;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzfio;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzh:Lcom/google/android/gms/internal/ads/zzfio;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzdmq;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zze:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmt;-><init>(Lcom/google/android/gms/internal/ads/zzdmq;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmt;->zzk()V

    return-object v0
.end method
