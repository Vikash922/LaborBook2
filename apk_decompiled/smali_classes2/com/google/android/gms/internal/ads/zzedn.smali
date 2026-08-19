.class public final synthetic Lcom/google/android/gms/internal/ads/zzedn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzedq;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfau;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedn;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedn;->zza:Lcom/google/android/gms/internal/ads/zzedq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzedq;->zzc(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
