.class public final Lcom/google/android/gms/internal/ads/zzaqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapx;)Lcom/google/android/gms/internal/ads/zzapm;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Lcom/google/android/gms/internal/ads/zzaqj;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzapy;-><init>(Lcom/google/android/gms/internal/ads/zzapx;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapy;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzapy;-><init>(Lcom/google/android/gms/internal/ads/zzapx;)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqp;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqp;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzapm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqf;

    const/high16 v2, 0x500000

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqf;-><init>(Lcom/google/android/gms/internal/ads/zzaqe;I)V

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Lcom/google/android/gms/internal/ads/zzaot;Lcom/google/android/gms/internal/ads/zzapc;I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapm;->zzd()V

    return-object p0
.end method
