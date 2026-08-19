.class public final synthetic Lcom/google/android/gms/internal/ads/zzgar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgas;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfwr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgas;Lcom/google/android/gms/internal/ads/zzfwr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Lcom/google/android/gms/internal/ads/zzgas;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzfwr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Lcom/google/android/gms/internal/ads/zzgas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgas;->zze(Lcom/google/android/gms/internal/ads/zzgas;Lcom/google/android/gms/internal/ads/zzfwr;)V

    return-void
.end method
