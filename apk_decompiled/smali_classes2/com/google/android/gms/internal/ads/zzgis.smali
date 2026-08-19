.class public final Lcom/google/android/gms/internal/ads/zzgis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvs;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgmr;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgmn;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzglf;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzglb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgio;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgio;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfe;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmr;->zzb(Lcom/google/android/gms/internal/ads/zzgmp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgip;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgip;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgmn;->zzb(Lcom/google/android/gms/internal/ads/zzgml;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgiq;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgev;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzglf;->zzb(Lcom/google/android/gms/internal/ads/zzgld;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgir;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgir;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzglb;->zzb(Lcom/google/android/gms/internal/ads/zzgkz;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgev;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zze()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqo;->zzd(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgqo;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zza()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzf()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqu;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzg()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsf;->zza()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zzf()Lcom/google/android/gms/internal/ads/zzgfa;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzf()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqu;->zzg()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zza(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzg()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsf;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzf()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqu;->zzf()Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgra;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzg()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsf;->zzg()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsl;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zze(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzg()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsf;->zzg()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsl;->zzb()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgis;->zzf(Lcom/google/android/gms/internal/ads/zzgsc;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzb(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgis;->zzg(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzf(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzg()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgev;->zzc()Lcom/google/android/gms/internal/ads/zzget;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzget;->zzd(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzget;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzf()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqu;->zzg()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v1

    .line 19
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzb([BLcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzget;->zza(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzget;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqo;->zzg()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsf;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzb([BLcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzget;->zzb(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzget;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object p0

    .line 24
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzget;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzget;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzget;->zze()Lcom/google/android/gms/internal/ads/zzgev;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner HMAC keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner AES CTR keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCtrHmacAeadKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgnm;)Lcom/google/android/gms/internal/ads/zzgfe;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqr;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzf()Lcom/google/android/gms/internal/ads/zzgsi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsi;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zzf()Lcom/google/android/gms/internal/ads/zzgfa;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzd()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zza(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzf()Lcom/google/android/gms/internal/ads/zzgsi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsi;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzc(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzd()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqx;->zzf()Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgra;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzf()Lcom/google/android/gms/internal/ads/zzgsi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsi;->zzh()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgsl;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfa;->zze(I)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqr;->zzf()Lcom/google/android/gms/internal/ads/zzgsi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsi;->zzh()Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsl;->zzb()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgis;->zzf(Lcom/google/android/gms/internal/ads/zzgsc;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgfa;->zzb(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzg(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzgfa;->zzf(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzg()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgev;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqo;->zzb()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqu;->zzb()Lcom/google/android/gms/internal/ads/zzgqs;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgra;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfe;->zzd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqy;->zza(I)Lcom/google/android/gms/internal/ads/zzgqy;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgra;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqs;->zzb(Lcom/google/android/gms/internal/ads/zzgra;)Lcom/google/android/gms/internal/ads/zzgqs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zze()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    .line 8
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqs;->zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgqs;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqu;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->zza(Lcom/google/android/gms/internal/ads/zzgqu;)Lcom/google/android/gms/internal/ads/zzgqm;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsf;->zzb()Lcom/google/android/gms/internal/ads/zzgsd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgis;->zzh(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgsd;->zzb(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgsd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzf()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object p1

    array-length v2, p1

    .line 15
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgsd;->zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgsd;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgsf;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zzb(Lcom/google/android/gms/internal/ads/zzgsf;)Lcom/google/android/gms/internal/ads/zzgqm;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqo;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgis;->zzi(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzg()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 22
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgst;->zza()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqr;->zza()Lcom/google/android/gms/internal/ads/zzgqp;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqx;->zzb()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgra;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzd()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgqy;->zza(I)Lcom/google/android/gms/internal/ads/zzgqy;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgra;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqv;->zzb(Lcom/google/android/gms/internal/ads/zzgra;)Lcom/google/android/gms/internal/ads/zzgqv;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqv;->zza(I)Lcom/google/android/gms/internal/ads/zzgqv;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgqx;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqp;->zza(Lcom/google/android/gms/internal/ads/zzgqx;)Lcom/google/android/gms/internal/ads/zzgqp;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsi;->zzc()Lcom/google/android/gms/internal/ads/zzgsg;

    move-result-object v2

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzh(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzgsl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgsg;->zzb(Lcom/google/android/gms/internal/ads/zzgsl;)Lcom/google/android/gms/internal/ads/zzgsg;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgsg;->zza(I)Lcom/google/android/gms/internal/ads/zzgsg;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgsi;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqp;->zzb(Lcom/google/android/gms/internal/ads/zzgsi;)Lcom/google/android/gms/internal/ads/zzgqp;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqr;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzi(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgst;

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgnm;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgmi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzi(Lcom/google/android/gms/internal/ads/zzgmr;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzh(Lcom/google/android/gms/internal/ads/zzgmn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzg(Lcom/google/android/gms/internal/ads/zzglf;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzf(Lcom/google/android/gms/internal/ads/zzglb;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgsc;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsc;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfb;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsc;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse HashType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfb;->zze:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfb;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfb;->zzd:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgfc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtt;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtt;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfc;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfc;->zzb:Lcom/google/android/gms/internal/ads/zzgfc;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgfc;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    return-object p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzgsl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsl;->zzc()Lcom/google/android/gms/internal/ads/zzgsj;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zze()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzb(I)Lcom/google/android/gms/internal/ads/zzgsj;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzg()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzb:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfb;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzf:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfb;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzd:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfb;->zzd:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzc:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfb;->zze:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zze:Lcom/google/android/gms/internal/ads/zzgsc;

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Lcom/google/android/gms/internal/ads/zzgsc;)Lcom/google/android/gms/internal/ads/zzgsj;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgsl;

    return-object p0

    .line 10
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize HashType "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzgfc;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfc;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfc;->zzb:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfc;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
