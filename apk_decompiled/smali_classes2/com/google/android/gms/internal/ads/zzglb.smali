.class public abstract Lcom/google/android/gms/internal/ads/zzglb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgla;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglb;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzglb;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgkz;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzglb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgky;-><init>(Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkz;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgnp;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgdh;
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglb;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglb;->zzb:Ljava/lang/Class;

    return-object v0
.end method
