.class public final Lcom/google/android/gms/internal/ads/zzgel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgkw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgel;->zzb()Lcom/google/android/gms/internal/ads/zzgkw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Lcom/google/android/gms/internal/ads/zzgkw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgdc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkp;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Lcom/google/android/gms/internal/ads/zzgkw;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV0 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb()Lcom/google/android/gms/internal/ads/zzgkw;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgne;->zza()Lcom/google/android/gms/internal/ads/zzgnb;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzges;->zzd(Lcom/google/android/gms/internal/ads/zzgnb;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgee;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgee;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgev;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgef;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgef;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfr;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgeg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgeg;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzggc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgeh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgeh;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfh;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgei;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgei;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzggl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgej;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgej;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgih;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgek;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgek;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgib;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgna;->zzb(Lcom/google/android/gms/internal/ads/zzgmy;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgna;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnb;->zza(Lcom/google/android/gms/internal/ads/zzgna;)Lcom/google/android/gms/internal/ads/zzgnb;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnb;->zzc()Lcom/google/android/gms/internal/ads/zzgne;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkw;->zzd(Lcom/google/android/gms/internal/ads/zzgne;)Lcom/google/android/gms/internal/ads/zzgkw;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
