.class public final Lcom/google/android/gms/internal/ads/zzggy;
.super Lcom/google/android/gms/internal/ads/zzgem;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgha;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgem;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Lcom/google/android/gms/internal/ads/zzgha;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgha;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzggy;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgha;->zzb()Lcom/google/android/gms/internal/ads/zzggz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggz;->zza:Lcom/google/android/gms/internal/ads/zzggz;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzb([B)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgha;->zzb()Lcom/google/android/gms/internal/ads/zzggz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggz;->zzb:Lcom/google/android/gms/internal/ads/zzggz;

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzb([B)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzggy;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzggy;-><init>(Lcom/google/android/gms/internal/ads/zzgha;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V

    return-object v1

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgha;->zzb()Lcom/google/android/gms/internal/ads/zzggz;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Lcom/google/android/gms/internal/ads/zzgha;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgha;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Lcom/google/android/gms/internal/ads/zzgha;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzc:Ljava/lang/Integer;

    return-object v0
.end method
