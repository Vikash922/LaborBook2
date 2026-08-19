.class public final Lcom/google/android/gms/internal/ads/zzguu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdu;

.field private final zzc:I

.field private final zzd:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgvk;Lcom/google/android/gms/internal/ads/zzgdu;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguu;->zza:Lcom/google/android/gms/internal/ads/zzgvk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzb:Lcom/google/android/gms/internal/ads/zzgdu;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzd:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgev;)Lcom/google/android/gms/internal/ads/zzgcy;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzguu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgun;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zze()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdg;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v3

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfe;->zzd()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgun;-><init>([BI)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgvp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgvo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgfe;->zzg()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzf()Lcom/google/android/gms/internal/ads/zzgvt;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdg;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v7

    .line 5
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B

    move-result-object v6

    const-string v7, "HMAC"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvo;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgfe;->zze()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgvp;-><init>(Lcom/google/android/gms/internal/ads/zzgqc;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzd()Lcom/google/android/gms/internal/ads/zzgfe;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfe;->zze()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgev;->zzb()Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzd()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzguu;-><init>(Lcom/google/android/gms/internal/ads/zzgvk;Lcom/google/android/gms/internal/ads/zzgdu;I[B)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzd:[B

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzc:I

    array-length v3, v0

    add-int v4, v2, v3

    if-lt v1, v4, :cond_3

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnx;->zzc([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v1, v2

    .line 5
    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguu;->zzb:Lcom/google/android/gms/internal/ads/zzgdu;

    filled-new-array {p2, v2, v0}, [[B

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgus;->zzb([[B)[B

    move-result-object p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvp;

    .line 9
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgvp;->zzc([B)[B

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzguu;->zza:Lcom/google/android/gms/internal/ads/zzgvk;

    .line 11
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzgvk;->zza([B)[B

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (ciphertext too short)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
