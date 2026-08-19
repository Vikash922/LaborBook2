.class public final synthetic Lcom/google/android/gms/internal/ads/zzggw;
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
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghg;

    sget v0, Lcom/google/android/gms/internal/ads/zzggx;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghg;->zzd()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghl;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghg;->zzd()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzb()Lcom/google/android/gms/internal/ads/zzgen;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgds;->zzb()Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object v0

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzggu;->zza:I

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgeb;->zzb(Lcom/google/android/gms/internal/ads/zzgdv;)[B

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgst;->zzf([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzggu;

    .line 7
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzggu;-><init>(Lcom/google/android/gms/internal/ads/zzgst;Lcom/google/android/gms/internal/ads/zzgcy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghg;->zzb()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p1

    .line 8
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzgjy;->zzc(Lcom/google/android/gms/internal/ads/zzgcy;Lcom/google/android/gms/internal/ads/zzgvs;)Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
