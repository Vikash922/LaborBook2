.class public final Lcom/google/android/gms/internal/ads/zzcul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcuc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeck;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcuj;Lcom/google/android/gms/internal/ads/zzcuk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzb(Lcom/google/android/gms/internal/ads/zzcuj;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzo(Lcom/google/android/gms/internal/ads/zzcuj;)Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzc(Lcom/google/android/gms/internal/ads/zzcuj;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzc:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzn(Lcom/google/android/gms/internal/ads/zzcuj;)Lcom/google/android/gms/internal/ads/zzfbh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzd:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzd(Lcom/google/android/gms/internal/ads/zzcuj;)Lcom/google/android/gms/internal/ads/zzcuc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zze:Lcom/google/android/gms/internal/ads/zzcuc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzm(Lcom/google/android/gms/internal/ads/zzcuj;)Lcom/google/android/gms/internal/ads/zzeck;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzf:Lcom/google/android/gms/internal/ads/zzeck;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zza(Lcom/google/android/gms/internal/ads/zzcuj;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzg:I

    return-void
.end method


# virtual methods
.method final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzg:I

    return v0
.end method

.method final zzb(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Landroid/content/Context;

    return-object p1
.end method

.method final zzc()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/ads/zzcuc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zze:Lcom/google/android/gms/internal/ads/zzcuc;

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzcuj;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuj;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zze:Lcom/google/android/gms/internal/ads/zzcuc;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzh(Lcom/google/android/gms/internal/ads/zzcuc;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzf:Lcom/google/android/gms/internal/ads/zzeck;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zze(Lcom/google/android/gms/internal/ads/zzeck;)Lcom/google/android/gms/internal/ads/zzcuj;

    return-object v0
.end method

.method final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeck;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzf:Lcom/google/android/gms/internal/ads/zzeck;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final zzg()Lcom/google/android/gms/internal/ads/zzfbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzd:Lcom/google/android/gms/internal/ads/zzfbh;

    return-object v0
.end method

.method final zzh()Lcom/google/android/gms/internal/ads/zzfbp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zzb:Lcom/google/android/gms/internal/ads/zzfbp;

    return-object v0
.end method
