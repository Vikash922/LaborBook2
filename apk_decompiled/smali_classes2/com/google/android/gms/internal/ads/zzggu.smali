.class public final Lcom/google/android/gms/internal/ads/zzggu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcy;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B

.field private static final zzc:Ljava/util/Set;


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgcy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggu;->zzb:[B

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggu;->zzc:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgst;Lcom/google/android/gms/internal/ads/zzgcy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggu;->zzc:Ljava/util/Set;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza(Lcom/google/android/gms/internal/ads/zzgtt;)Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgst;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgeb;->zza([B)Lcom/google/android/gms/internal/ads/zzgdv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggu;->zze:Lcom/google/android/gms/internal/ads/zzgcy;

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported DEK key type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Only Tink AEAD key types are supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_0

    .line 3
    array-length p1, p1

    add-int/lit8 p1, p1, -0x4

    if-gt v1, p1, :cond_0

    .line 4
    new-array p1, v1, [B

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zze:Lcom/google/android/gms/internal/ads/zzgcy;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzggu;->zzb:[B

    .line 8
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzgcy;->zza([B[B)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zzd:Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    .line 10
    array-length v3, p1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    const/4 v4, 0x0

    .line 11
    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgnl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdg;->zza()Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v2

    .line 13
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgmi;->zza(Lcom/google/android/gms/internal/ads/zzgnp;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Lcom/google/android/gms/internal/ads/zzgmf;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgmf;->zzb(Lcom/google/android/gms/internal/ads/zzgdh;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgcy;

    .line 15
    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgcy;->zza([B[B)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "length of encrypted DEK too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 16
    :goto_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ciphertext"

    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
