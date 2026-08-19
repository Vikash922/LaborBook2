.class public final Lcom/google/android/gms/internal/ads/zzgnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgst;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgst;Lcom/google/android/gms/internal/ads/zzgvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnm;->zzb:Lcom/google/android/gms/internal/ads/zzgst;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnm;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgnx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgnm;-><init>(Lcom/google/android/gms/internal/ads/zzgst;Lcom/google/android/gms/internal/ads/zzgvs;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgnm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgst;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgnx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgnm;-><init>(Lcom/google/android/gms/internal/ads/zzgst;Lcom/google/android/gms/internal/ads/zzgvs;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgst;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnm;->zzb:Lcom/google/android/gms/internal/ads/zzgst;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnm;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method
