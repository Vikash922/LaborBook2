.class public final synthetic Lcom/google/android/gms/internal/ads/zzvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzuu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:Lcom/google/android/gms/internal/ads/zzuu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:Lcom/google/android/gms/internal/ads/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvj;

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzvj;->zzag(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzuu;)V

    return-void
.end method
