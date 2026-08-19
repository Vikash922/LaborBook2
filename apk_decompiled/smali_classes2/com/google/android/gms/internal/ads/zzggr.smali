.class public final synthetic Lcom/google/android/gms/internal/ads/zzggr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmy;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdh;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzggy;

    sget v0, Lcom/google/android/gms/internal/ads/zzggt;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggy;->zzd()Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgha;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgds;->zzb()Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggy;->zzb()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgjy;->zzc(Lcom/google/android/gms/internal/ads/zzgcy;Lcom/google/android/gms/internal/ads/zzgvs;)Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object p1

    return-object p1
.end method
