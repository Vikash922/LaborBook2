.class public final Lcom/google/android/gms/internal/ads/zzgnl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnp;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgwn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgsn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgtt;

.field private final zzf:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgvs;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)V
    .locals 0
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzc:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzd:Lcom/google/android/gms/internal/ads/zzgsn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzf:Ljava/lang/Integer;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 8
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    if-ne p3, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p4, :cond_2

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgnx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgnl;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgnl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgvs;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)V

    return-object v7

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzgsn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzd:Lcom/google/android/gms/internal/ads/zzgsn;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzc:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zza:Ljava/lang/String;

    return-object v0
.end method
