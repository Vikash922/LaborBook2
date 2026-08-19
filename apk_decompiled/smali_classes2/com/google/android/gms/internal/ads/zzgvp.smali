.class public final Lcom/google/android/gms/internal/ads/zzgvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgqc;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvp;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgoa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoa;->zze()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdg;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzb:Lcom/google/android/gms/internal/ads/zzgqc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoa;->zzc()Lcom/google/android/gms/internal/ads/zzgoi;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoi;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoa;->zzd()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzd()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzd:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoa;->zzc()Lcom/google/android/gms/internal/ads/zzgoi;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoi;->zzf()Lcom/google/android/gms/internal/ads/zzgog;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgog;->zzc:Lcom/google/android/gms/internal/ads/zzgog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvp;->zza:[B

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgop;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgop;->zzc()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgoz;->zzf()Lcom/google/android/gms/internal/ads/zzgow;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgop;->zze()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdg;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object v3

    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvo;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzb:Lcom/google/android/gms/internal/ads/zzgqc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgop;->zzc()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoz;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgop;->zzd()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzd()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzd:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgop;->zzc()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoz;->zzg()Lcom/google/android/gms/internal/ads/zzgox;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgox;->zzc:Lcom/google/android/gms/internal/ads/zzgox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvp;->zza:[B

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgqc;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzb:Lcom/google/android/gms/internal/ads/zzgqc;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzc:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzd:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgqc;->zza([BI)[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgoa;)Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgvp;-><init>(Lcom/google/android/gms/internal/ads/zzgoa;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgop;)Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgvp;-><init>(Lcom/google/android/gms/internal/ads/zzgop;)V

    return-object v0
.end method


# virtual methods
.method public final zzc([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zze:[B

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzd:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzb:Lcom/google/android/gms/internal/ads/zzgqc;

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgus;->zzb([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzc:I

    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzgqc;->zza([BI)[B

    move-result-object p1

    filled-new-array {v1, p1}, [[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgus;->zzb([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzd:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzb:Lcom/google/android/gms/internal/ads/zzgqc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgvp;->zzc:I

    .line 4
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgqc;->zza([BI)[B

    move-result-object p1

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgus;->zzb([[B)[B

    move-result-object p1

    return-object p1
.end method
