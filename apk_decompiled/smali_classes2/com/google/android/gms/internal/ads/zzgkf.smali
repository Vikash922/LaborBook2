.class public final Lcom/google/android/gms/internal/ads/zzgkf;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgkb;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgig;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmr;->zzb(Lcom/google/android/gms/internal/ads/zzgmp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgkf;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgkc;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgmn;->zzb(Lcom/google/android/gms/internal/ads/zzgml;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgkd;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgib;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzglf;->zzb(Lcom/google/android/gms/internal/ads/zzgld;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgkf;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgke;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgke;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzglb;->zzb(Lcom/google/android/gms/internal/ads/zzgkz;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgib;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zze()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzd(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzg()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzf(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzf()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguf;->zza()I

    move-result v2

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgig;->zzd(Lcom/google/android/gms/internal/ads/zzgif;I)Lcom/google/android/gms/internal/ads/zzgig;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzg()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzb([BLcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object p0

    .line 13
    invoke-static {v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzgib;->zzc(Lcom/google/android/gms/internal/ads/zzgig;Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgib;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only 32 byte key size is accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing XAesGcmKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to XAesGcmProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgnm;)Lcom/google/android/gms/internal/ads/zzgig;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzguc;->zzd(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguc;->zza()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzg()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->zzf(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object p0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzf()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zza()I

    move-result v0

    .line 10
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgig;->zzd(Lcom/google/android/gms/internal/ads/zzgif;I)Lcom/google/android/gms/internal/ads/zzgig;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing XAesGcmParameters failed: "

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

    const-string v1, "Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgib;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtz;->zzb()Lcom/google/android/gms/internal/ads/zzgtx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgib;->zze()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtx;->zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgtx;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzb()Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgib;->zzd()Lcom/google/android/gms/internal/ads/zzgig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgig;->zzb()I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Lcom/google/android/gms/internal/ads/zzgud;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzguf;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtx;->zzb(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgtx;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgtz;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgib;->zzd()Lcom/google/android/gms/internal/ads/zzgig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgkf;->zzg(Lcom/google/android/gms/internal/ads/zzgif;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgib;->zzf()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 12
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgig;)Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgst;->zza()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguc;->zzb()Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzb()Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Lcom/google/android/gms/internal/ads/zzgud;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzguf;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgua;->zza(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgua;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzguc;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaN()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzc(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->zzg(Lcom/google/android/gms/internal/ads/zzgif;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgsr;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgst;

    .line 13
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzc:Lcom/google/android/gms/internal/ads/zzgmr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzi(Lcom/google/android/gms/internal/ads/zzgmr;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:Lcom/google/android/gms/internal/ads/zzgmn;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzh(Lcom/google/android/gms/internal/ads/zzgmn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zze:Lcom/google/android/gms/internal/ads/zzglf;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzg(Lcom/google/android/gms/internal/ads/zzglf;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzf:Lcom/google/android/gms/internal/ads/zzglb;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzf(Lcom/google/android/gms/internal/ads/zzglb;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgif;
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

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgif;->zzb:Lcom/google/android/gms/internal/ads/zzgif;

    return-object p0

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgif;->zza:Lcom/google/android/gms/internal/ads/zzgif;

    return-object p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzgif;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgif;->zza:Lcom/google/android/gms/internal/ads/zzgif;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgif;->zzb:Lcom/google/android/gms/internal/ads/zzgif;

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
