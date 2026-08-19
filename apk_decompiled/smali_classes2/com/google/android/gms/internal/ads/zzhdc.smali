.class public final Lcom/google/android/gms/internal/ads/zzhdc;
.super Lcom/google/android/gms/internal/ads/zzgxp;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhee;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhde;->zzd()Lcom/google/android/gms/internal/ads/zzhde;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhdc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdc;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhde;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhde;->zzf(Lcom/google/android/gms/internal/ads/zzhde;Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdc;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhde;

    const-string v0, "image/png"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhde;->zzg(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzhdc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdc;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhde;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhde;->zzh(Lcom/google/android/gms/internal/ads/zzhde;I)V

    return-object p0
.end method
