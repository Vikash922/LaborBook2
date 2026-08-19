.class public final Lcom/google/android/gms/internal/ads/zzaaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/ads/zzti;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsu;

.field private zze:Landroid/os/Handler;

.field private zzf:Lcom/google/android/gms/internal/ads/zzabs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzti;->zza:Lcom/google/android/gms/internal/ads/zzti;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzc:Lcom/google/android/gms/internal/ads/zzti;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzso;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzso;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfuo;Lcom/google/android/gms/internal/ads/zzfuo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Lcom/google/android/gms/internal/ads/zzsu;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaaj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaaj;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzsu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Lcom/google/android/gms/internal/ads/zzsu;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzti;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzc:Lcom/google/android/gms/internal/ads/zzti;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzabs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    return-object p0
.end method


# virtual methods
.method public final zze(Landroid/os/Handler;)Lcom/google/android/gms/internal/ads/zzaaj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Landroid/os/Handler;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzaaj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzaaj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzc:Lcom/google/android/gms/internal/ads/zzti;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzaal;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzb:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;)V

    return-object v0
.end method
