.class public final synthetic Lcom/google/android/gms/internal/ads/zzebo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfkg;

.field public final synthetic zzb:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfkg;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebo;->zza:Lcom/google/android/gms/internal/ads/zzfkg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebo;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebo;->zza:Lcom/google/android/gms/internal/ads/zzfkg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkc;->zzc:Lcom/google/android/gms/internal/ads/zzfkc;

    const-string v2, "Ad overlay"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebo;->zzb:Landroid/view/View;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkg;->zzf(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    return-void
.end method
