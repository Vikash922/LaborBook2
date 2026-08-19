.class public final Lcom/google/android/gms/internal/ads/zzfnk;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnl;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnm;->zzb()Lcom/google/android/gms/internal/ads/zzfnm;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnk;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzc(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfnk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnk;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfnm;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zzd(Lcom/google/android/gms/internal/ads/zzfnm;I)V

    return-object p0
.end method
