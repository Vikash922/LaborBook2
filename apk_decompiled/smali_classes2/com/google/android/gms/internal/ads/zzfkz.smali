.class public final Lcom/google/android/gms/internal/ads/zzfkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfks;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfkz;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfkn;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfkr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfko;Lcom/google/android/gms/internal/ads/zzfkl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzb:F

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfkz;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkz;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkl;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfko;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfko;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkz;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfkz;-><init>(Lcom/google/android/gms/internal/ads/zzfko;Lcom/google/android/gms/internal/ads/zzfkl;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfkz;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkz;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzb:F

    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmb;->zzd()Lcom/google/android/gms/internal/ads/zzfmb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfmb;->zzi()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmb;->zzd()Lcom/google/android/gms/internal/ads/zzfmb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfmb;->zzh()V

    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkk;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfkn;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfkn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfkk;Lcom/google/android/gms/internal/ads/zzfkz;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzc:Lcom/google/android/gms/internal/ads/zzfkn;

    return-void
.end method

.method public final zze(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzd:Lcom/google/android/gms/internal/ads/zzfkr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkr;->zza()Lcom/google/android/gms/internal/ads/zzfkr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzd:Lcom/google/android/gms/internal/ads/zzfkr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzd:Lcom/google/android/gms/internal/ads/zzfkr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkr;->zzb()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfjz;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zzg()Lcom/google/android/gms/internal/ads/zzflh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflh;->zzl(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->zza()Lcom/google/android/gms/internal/ads/zzfkq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfkt;->zze(Lcom/google/android/gms/internal/ads/zzfks;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->zza()Lcom/google/android/gms/internal/ads/zzfkq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zzf()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmb;->zzd()Lcom/google/android/gms/internal/ads/zzfmb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmb;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzc:Lcom/google/android/gms/internal/ads/zzfkn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkn;->zzc()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmb;->zzd()Lcom/google/android/gms/internal/ads/zzfmb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmb;->zzj()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->zza()Lcom/google/android/gms/internal/ads/zzfkq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkt;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkz;->zzc:Lcom/google/android/gms/internal/ads/zzfkn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkn;->zzd()V

    return-void
.end method
