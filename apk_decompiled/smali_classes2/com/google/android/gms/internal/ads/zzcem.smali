.class public final synthetic Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcet;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbxi;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcet;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbxi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lcom/google/android/gms/internal/ads/zzcet;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzc:Lcom/google/android/gms/internal/ads/zzbxi;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lcom/google/android/gms/internal/ads/zzcet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzc:Lcom/google/android/gms/internal/ads/zzbxi;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzd:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcet;->zzg(Lcom/google/android/gms/internal/ads/zzcet;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbxi;I)V

    return-void
.end method
