.class public final Lcom/google/android/gms/internal/ads/zzgil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgna;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgdi;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzglz;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzglx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgii;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/ads/zzgih;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgil;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgcy;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgui;->zzg()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgli;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgzo;)Lcom/google/android/gms/internal/ads/zzgdi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgil;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgil;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgil;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    return-void
.end method

.method public static zza(Z)V
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
    sget v0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zze(Lcom/google/android/gms/internal/ads/zzgmi;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgil;->zzb:Lcom/google/android/gms/internal/ads/zzgna;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc(Lcom/google/android/gms/internal/ads/zzgna;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgme;->zzb()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgim;->zza:Lcom/google/android/gms/internal/ads/zzgim;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgin;->zzc(Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgin;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305"

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgim;->zzc:Lcom/google/android/gms/internal/ads/zzgim;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgin;->zzc(Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgin;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305_RAW"

    .line 10
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgme;->zzd(Ljava/util/Map;)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgly;->zzb()Lcom/google/android/gms/internal/ads/zzgly;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgil;->zze:Lcom/google/android/gms/internal/ads/zzglx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgin;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgly;->zzc(Lcom/google/android/gms/internal/ads/zzglx;Ljava/lang/Class;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgma;->zza()Lcom/google/android/gms/internal/ads/zzgma;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgil;->zzd:Lcom/google/android/gms/internal/ads/zzglz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgin;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgma;->zzb(Lcom/google/android/gms/internal/ads/zzglz;Ljava/lang/Class;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgil;->zzc:Lcom/google/android/gms/internal/ads/zzgdi;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgkx;->zzd(Lcom/google/android/gms/internal/ads/zzgdi;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
