.class public final Lcom/google/android/gms/internal/ads/zzghq;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzghm;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzghl;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmr;->zzb(Lcom/google/android/gms/internal/ads/zzgmp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzghq;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzghn;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgmn;->zzb(Lcom/google/android/gms/internal/ads/zzgml;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzghq;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgho;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgho;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzghg;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzglf;->zzb(Lcom/google/android/gms/internal/ads/zzgld;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzghq;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzghp;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzglb;->zzb(Lcom/google/android/gms/internal/ads/zzgkz;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzghg;
    .locals 2

    const-string p1, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zze()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtp;->zzd(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgtp;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtp;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtp;->zzf()Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzghq;->zzf(Lcom/google/android/gms/internal/ads/zzgts;Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object p0

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzghg;->zzc(Lcom/google/android/gms/internal/ads/zzghl;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghg;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsEnvelopeAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgnm;)Lcom/google/android/gms/internal/ads/zzghl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgts;->zzf(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzghq;->zzf(Lcom/google/android/gms/internal/ads/zzgts;Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzghg;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtp;->zzb()Lcom/google/android/gms/internal/ads/zzgtn;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghg;->zzd()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghq;->zzg(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgtn;->zza(Lcom/google/android/gms/internal/ads/zzgts;)Lcom/google/android/gms/internal/ads/zzgtn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgtp;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zze:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghg;->zzd()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghl;->zzc()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghq;->zzh(Lcom/google/android/gms/internal/ads/zzghj;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghg;->zze()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 6
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgst;->zza()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzghq;->zzg(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzc()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzghq;->zzh(Lcom/google/android/gms/internal/ads/zzghj;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgst;

    .line 6
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzi(Lcom/google/android/gms/internal/ads/zzgmr;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzh(Lcom/google/android/gms/internal/ads/zzgmn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzg(Lcom/google/android/gms/internal/ads/zzglf;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzghq;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzf(Lcom/google/android/gms/internal/ads/zzglb;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgts;Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzghl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgst;->zza()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgts;->zza()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgts;->zza()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgst;->zzh()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgsr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zza(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgst;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgeb;->zza([B)Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgfz;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zza:Lcom/google/android/gms/internal/ads/zzghi;

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzggq;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zzc:Lcom/google/android/gms/internal/ads/zzghi;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgin;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zzb:Lcom/google/android/gms/internal/ads/zzghi;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgfe;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zzd:Lcom/google/android/gms/internal/ads/zzghi;

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgfo;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zze:Lcom/google/android/gms/internal/ads/zzghi;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzggk;

    if-eqz v1, :cond_7

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghi;->zzf:Lcom/google/android/gms/internal/ads/zzghi;

    .line 7
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzghh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzghh;-><init>(Lcom/google/android/gms/internal/ads/zzghk;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtt;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzghj;->zzb:Lcom/google/android/gms/internal/ads/zzghj;

    goto :goto_1

    .line 14
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtt;->zza()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzghj;->zza:Lcom/google/android/gms/internal/ads/zzghj;

    .line 9
    :goto_1
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzghh;->zzd(Lcom/google/android/gms/internal/ads/zzghj;)Lcom/google/android/gms/internal/ads/zzghh;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgts;->zzg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzghh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzghh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgen;

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzghh;->zza(Lcom/google/android/gms/internal/ads/zzgen;)Lcom/google/android/gms/internal/ads/zzghh;

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzghh;->zzb(Lcom/google/android/gms/internal/ads/zzghi;)Lcom/google/android/gms/internal/ads/zzghh;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghh;->zze()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object p0

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported DEK parameters when parsing "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzb()Lcom/google/android/gms/internal/ads/zzgen;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgeb;->zzb(Lcom/google/android/gms/internal/ads/zzgdv;)[B

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgst;->zzf([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgts;->zzb()Lcom/google/android/gms/internal/ads/zzgtq;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzgtq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgtq;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtq;->zza(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgtq;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgts;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzghj;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzghj;->zza:Lcom/google/android/gms/internal/ads/zzghj;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzghj;->zzb:Lcom/google/android/gms/internal/ads/zzghj;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
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
