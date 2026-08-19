.class public final Lcom/google/android/gms/internal/ads/zzggg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzglx;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzglz;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgdi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggd;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzggc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggg;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgge;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgge;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggg;->zzc:Lcom/google/android/gms/internal/ads/zzglx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggg;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgcy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrs;->zzg()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggg;->zze:Lcom/google/android/gms/internal/ads/zzgdi;

    return-void
.end method

.method public static zza(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgko;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgjj;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjj;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggg;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggg;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzggh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    const/16 v4, 0x10

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggh;->zza(I)Lcom/google/android/gms/internal/ads/zzggh;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzggi;->zza:Lcom/google/android/gms/internal/ads/zzggi;

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggh;->zzb(Lcom/google/android/gms/internal/ads/zzggi;)Lcom/google/android/gms/internal/ads/zzggh;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggh;->zzc()Lcom/google/android/gms/internal/ads/zzggk;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV"

    .line 13
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzggh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    .line 14
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggh;->zza(I)Lcom/google/android/gms/internal/ads/zzggh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzggi;->zzc:Lcom/google/android/gms/internal/ads/zzggi;

    .line 15
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggh;->zzb(Lcom/google/android/gms/internal/ads/zzggi;)Lcom/google/android/gms/internal/ads/zzggh;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggh;->zzc()Lcom/google/android/gms/internal/ads/zzggk;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV_RAW"

    .line 17
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzggh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    const/16 v6, 0x20

    .line 18
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzggh;->zza(I)Lcom/google/android/gms/internal/ads/zzggh;

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggh;->zzb(Lcom/google/android/gms/internal/ads/zzggi;)Lcom/google/android/gms/internal/ads/zzggh;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggh;->zzc()Lcom/google/android/gms/internal/ads/zzggk;

    move-result-object v2

    const-string v5, "AES256_GCM_SIV"

    .line 21
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzggh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    .line 22
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzggh;->zza(I)Lcom/google/android/gms/internal/ads/zzggh;

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggh;->zzb(Lcom/google/android/gms/internal/ads/zzggi;)Lcom/google/android/gms/internal/ads/zzggh;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggh;->zzc()Lcom/google/android/gms/internal/ads/zzggk;

    move-result-object v2

    const-string v3, "AES256_GCM_SIV_RAW"

    .line 25
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgma;->zza()Lcom/google/android/gms/internal/ads/zzgma;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggg;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzggk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgma;->zzb(Lcom/google/android/gms/internal/ads/zzglz;Ljava/lang/Class;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggg;->zzc:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzggk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggg;->zze:Lcom/google/android/gms/internal/ads/zzgdi;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgkx;->zzd(Lcom/google/android/gms/internal/ads/zzgdi;Z)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
