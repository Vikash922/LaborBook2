.class public final synthetic Lcom/google/android/gms/internal/ads/zzfsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfsh;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfsk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsf;Lcom/google/android/gms/internal/ads/zzfsh;Lcom/google/android/gms/internal/ads/zzfsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfsh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzc:Lcom/google/android/gms/internal/ads/zzfsk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfsh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzc:Lcom/google/android/gms/internal/ads/zzfsk;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsf;->zzc(Lcom/google/android/gms/internal/ads/zzfsf;Lcom/google/android/gms/internal/ads/zzfsh;Lcom/google/android/gms/internal/ads/zzfsk;)V

    return-void
.end method
