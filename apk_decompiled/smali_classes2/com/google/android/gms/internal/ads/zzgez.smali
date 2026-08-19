.class public final Lcom/google/android/gms/internal/ads/zzgez;
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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgew;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgev;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgez;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgcy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqo;->zzh()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgez;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgez;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgez;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgez;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgez;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgko;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgis;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgis;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgez;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgia;->zze:Lcom/google/android/gms/internal/ads/zzgfe;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfa;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfa;-><init>(Lcom/google/android/gms/internal/ads/zzgfd;)V

    const/16 v4, 0x10

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfa;->zza(I)Lcom/google/android/gms/internal/ads/zzgfa;

    const/16 v5, 0x20

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfa;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfa;->zze(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 13
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(I)Lcom/google/android/gms/internal/ads/zzgfa;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgfb;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 14
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgfa;->zzb(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfa;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgfc;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 15
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgfa;->zzf(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzg()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v2

    const-string v8, "AES128_CTR_HMAC_SHA256_RAW"

    .line 17
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CTR_HMAC_SHA256"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgia;->zzf:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 18
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgfa;-><init>(Lcom/google/android/gms/internal/ads/zzgfd;)V

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfa;->zza(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfa;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 21
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgfa;->zze(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 22
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 23
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgfa;->zzb(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 24
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgfa;->zzf(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzg()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v2

    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgma;->zza()Lcom/google/android/gms/internal/ads/zzgma;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgez;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgma;->zzb(Lcom/google/android/gms/internal/ads/zzglz;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgez;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgez;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgkx;->zzf(Lcom/google/android/gms/internal/ads/zzgdi;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
