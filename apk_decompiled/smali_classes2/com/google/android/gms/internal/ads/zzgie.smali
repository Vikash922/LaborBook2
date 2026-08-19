.class public final Lcom/google/android/gms/internal/ads/zzgie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzglx;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgie;->zza:Lcom/google/android/gms/internal/ads/zzglx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgid;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgib;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgie;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    return-void
.end method

.method public static zza(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgkf;->zza:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgia;->zzg:Lcom/google/android/gms/internal/ads/zzgig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgia;->zzh:Lcom/google/android/gms/internal/ads/zzgig;

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgia;->zzi:Lcom/google/android/gms/internal/ads/zzgig;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgia;->zzj:Lcom/google/android/gms/internal/ads/zzgig;

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgie;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgie;->zza:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgig;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    return-void
.end method
