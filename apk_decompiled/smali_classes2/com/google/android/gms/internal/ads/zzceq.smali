.class final Lcom/google/android/gms/internal/ads/zzceq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxi;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcet;Lcom/google/android/gms/internal/ads/zzbxi;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzb:Lcom/google/android/gms/internal/ads/zzcet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceq;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzceq;->zzb:Lcom/google/android/gms/internal/ads/zzcet;

    const/16 v2, 0xa

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcet;->zzj(Lcom/google/android/gms/internal/ads/zzcet;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbxi;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
