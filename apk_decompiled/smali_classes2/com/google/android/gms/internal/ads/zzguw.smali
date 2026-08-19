.class final Lcom/google/android/gms/internal/ads/zzguw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgvi;Lcom/google/android/gms/internal/ads/zzguz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguw;->zza:Lcom/google/android/gms/internal/ads/zzgvi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguw;->zza:Lcom/google/android/gms/internal/ads/zzgvi;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgvi;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
