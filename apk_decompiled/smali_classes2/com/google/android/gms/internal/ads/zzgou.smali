.class public final Lcom/google/android/gms/internal/ads/zzgou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgdi;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzglz;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzglx;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoq;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgop;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgoj;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgou;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgor;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgop;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgou;->zzc:Lcom/google/android/gms/internal/ads/zzgna;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgdu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsf;->zzi()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgou;->zzd:Lcom/google/android/gms/internal/ads/zzgdi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgos;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgos;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgou;->zze:Lcom/google/android/gms/internal/ads/zzglz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgot;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgou;->zzf:Lcom/google/android/gms/internal/ads/zzglx;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzgou;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgou;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgko;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgqa;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqa;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgou;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgou;->zzc:Lcom/google/android/gms/internal/ads/zzgna;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgpn;->zza:Lcom/google/android/gms/internal/ads/zzgoz;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    const/16 v4, 0x20

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    const/16 v5, 0x10

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgox;->zzd:Lcom/google/android/gms/internal/ads/zzgox;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgow;->zzc:Lcom/google/android/gms/internal/ads/zzgow;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    .line 16
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgox;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    .line 19
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 20
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    .line 22
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 25
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 26
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    .line 28
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    const/16 v7, 0x40

    .line 29
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 30
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 31
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzgow;->zze:Lcom/google/android/gms/internal/ads/zzgow;

    .line 32
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    .line 34
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 36
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 38
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    .line 40
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 41
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 43
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 44
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    .line 46
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 47
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 49
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 50
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    .line 52
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgpn;->zzb:Lcom/google/android/gms/internal/ads/zzgoz;

    .line 53
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgov;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgov;-><init>(Lcom/google/android/gms/internal/ads/zzgoy;)V

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 55
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgov;->zzc(I)Lcom/google/android/gms/internal/ads/zzgov;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgov;->zzd(Lcom/google/android/gms/internal/ads/zzgox;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 57
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgov;->zza(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgov;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgov;->zze()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgou;->zzf:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgoz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgma;->zza()Lcom/google/android/gms/internal/ads/zzgma;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgou;->zze:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgoz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgma;->zzb(Lcom/google/android/gms/internal/ads/zzglz;Ljava/lang/Class;)V

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgou;->zzd:Lcom/google/android/gms/internal/ads/zzgdi;

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgkx;->zzf(Lcom/google/android/gms/internal/ads/zzgdi;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
