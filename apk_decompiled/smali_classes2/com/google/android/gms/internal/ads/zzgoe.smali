.class public final Lcom/google/android/gms/internal/ads/zzgoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzglx;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgdi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgob;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzglx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgoa;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgoj;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgod;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgoa;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoe;->zzc:Lcom/google/android/gms/internal/ads/zzgna;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgdu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqf;->zzh()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoe;->zzd:Lcom/google/android/gms/internal/ads/zzgdi;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgoa;)Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoa;->zzc()Lcom/google/android/gms/internal/ads/zzgoi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(Lcom/google/android/gms/internal/ads/zzgoi;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvp;->zza(Lcom/google/android/gms/internal/ads/zzgoa;)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgoi;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgoa;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(Lcom/google/android/gms/internal/ads/zzgoi;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgny;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgny;-><init>(Lcom/google/android/gms/internal/ads/zzgnz;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgny;->zzc(Lcom/google/android/gms/internal/ads/zzgoi;)Lcom/google/android/gms/internal/ads/zzgny;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoi;->zzc()I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc(I)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgny;->zza(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzgny;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgny;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgny;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzd()Lcom/google/android/gms/internal/ads/zzgoa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgoa;)Lcom/google/android/gms/internal/ads/zzgoj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoa;->zzc()Lcom/google/android/gms/internal/ads/zzgoi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(Lcom/google/android/gms/internal/ads/zzgoi;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpu;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgpu;-><init>(Lcom/google/android/gms/internal/ads/zzgoa;)V

    return-object v0
.end method

.method public static zzd(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgko;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzgps;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgps;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgoi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgoe;->zzc:Lcom/google/android/gms/internal/ads/zzgna;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES_CMAC"

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgpn;->zzc:Lcom/google/android/gms/internal/ads/zzgoi;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CMAC"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgpn;->zzc:Lcom/google/android/gms/internal/ads/zzgoi;

    .line 12
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgof;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgof;-><init>(Lcom/google/android/gms/internal/ads/zzgoh;)V

    const/16 v3, 0x20

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgof;->zza(I)Lcom/google/android/gms/internal/ads/zzgof;

    const/16 v3, 0x10

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgof;->zzb(I)Lcom/google/android/gms/internal/ads/zzgof;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgog;->zzd:Lcom/google/android/gms/internal/ads/zzgog;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgof;->zzc(Lcom/google/android/gms/internal/ads/zzgog;)Lcom/google/android/gms/internal/ads/zzgof;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgof;->zzd()Lcom/google/android/gms/internal/ads/zzgoi;

    move-result-object v2

    const-string v3, "AES256_CMAC_RAW"

    .line 17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgoe;->zzd:Lcom/google/android/gms/internal/ads/zzgdi;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgkx;->zzd(Lcom/google/android/gms/internal/ads/zzgdi;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES CMAC is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzgoi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoi;->zzc()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
