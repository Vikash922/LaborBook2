.class public final Lcom/google/android/gms/internal/ads/zzaar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabb;

.field private zzc:Lcom/google/android/gms/internal/ads/zzby;

.field private zzd:Lcom/google/android/gms/internal/ads/zzca;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbv;

.field private zzg:Lcom/google/android/gms/internal/ads/zzdg;

.field private zzh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzf:Lcom/google/android/gms/internal/ads/zzbv;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzdg;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzbv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzf:Lcom/google/android/gms/internal/ads/zzbv;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzca;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Lcom/google/android/gms/internal/ads/zzca;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzdg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzdg;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzabb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabb;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzdg;)Lcom/google/android/gms/internal/ads/zzaar;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzdg;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzaax;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Lcom/google/android/gms/internal/ads/zzca;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Lcom/google/android/gms/internal/ads/zzby;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaau;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Lcom/google/android/gms/internal/ads/zzby;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaav;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Lcom/google/android/gms/internal/ads/zzby;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzby;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Lcom/google/android/gms/internal/ads/zzca;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaax;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzaax;-><init>(Lcom/google/android/gms/internal/ads/zzaar;Lcom/google/android/gms/internal/ads/zzaaw;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Z

    return-object v0
.end method
