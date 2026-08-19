.class public final Lcom/google/android/gms/internal/ads/zzhbi;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhbk;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbj;->zzd()Lcom/google/android/gms/internal/ads/zzhbj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhbh;)Lcom/google/android/gms/internal/ads/zzhbi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhbj;->zzf(Lcom/google/android/gms/internal/ads/zzhbj;Lcom/google/android/gms/internal/ads/zzhbh;)V

    return-object p0
.end method
