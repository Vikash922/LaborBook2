.class public final Lcom/google/android/gms/internal/ads/zzgfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgdi;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzglz;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzglx;

.field private static final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgfr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfv;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgcy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrm;->zzg()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfv;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfv;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfv;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgfv;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgfv;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgko;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgje;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgje;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfv;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_GCM"

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgia;->zza:Lcom/google/android/gms/internal/ads/zzgfz;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgfy;)V

    const/16 v4, 0xc

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfw;->zza(I)Lcom/google/android/gms/internal/ads/zzgfw;

    const/16 v5, 0x10

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfw;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfw;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgfx;->zzc:Lcom/google/android/gms/internal/ads/zzgfx;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgfw;->zzd(Lcom/google/android/gms/internal/ads/zzgfx;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zze()Lcom/google/android/gms/internal/ads/zzgfz;

    move-result-object v2

    const-string v7, "AES128_GCM_RAW"

    .line 15
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_GCM"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgia;->zzb:Lcom/google/android/gms/internal/ads/zzgfz;

    .line 16
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgfy;)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfw;->zza(I)Lcom/google/android/gms/internal/ads/zzgfw;

    const/16 v3, 0x20

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfw;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfw;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgfw;->zzd(Lcom/google/android/gms/internal/ads/zzgfx;)Lcom/google/android/gms/internal/ads/zzgfw;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfw;->zze()Lcom/google/android/gms/internal/ads/zzgfz;

    move-result-object v2

    const-string v3, "AES256_GCM_RAW"

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgma;->zza()Lcom/google/android/gms/internal/ads/zzgma;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfv;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgma;->zzb(Lcom/google/android/gms/internal/ads/zzglz;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfv;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfv;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgkx;->zzf(Lcom/google/android/gms/internal/ads/zzgdi;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
