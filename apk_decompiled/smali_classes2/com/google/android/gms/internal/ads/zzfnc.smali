.class public final Lcom/google/android/gms/internal/ads/zzfnc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnc;->zzb:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnq;->zza()Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnc;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfnn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnn;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfnn;->zzc(I)Lcom/google/android/gms/internal/ads/zzfnn;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnm;->zza()Lcom/google/android/gms/internal/ads/zzfnk;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnk;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfnk;->zzb(I)Lcom/google/android/gms/internal/ads/zzfnk;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfnn;->zzb(Lcom/google/android/gms/internal/ads/zzfnk;)Lcom/google/android/gms/internal/ads/zzfnn;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfnq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnc;->zzb:Landroid/os/Looper;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfnd;

    .line 10
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfnd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfnq;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfnd;->zza()V

    return-void
.end method
