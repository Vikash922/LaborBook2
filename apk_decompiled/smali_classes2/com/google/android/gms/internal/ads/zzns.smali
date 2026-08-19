.class public final synthetic Lcom/google/android/gms/internal/ads/zzns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzhy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzns;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzns;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmj;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzns;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzns;->zzb:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzmj;->zzo(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzhy;)V

    return-void
.end method
