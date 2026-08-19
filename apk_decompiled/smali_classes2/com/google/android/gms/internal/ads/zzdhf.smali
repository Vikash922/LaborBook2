.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdhl;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Z

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhl;Landroid/view/View;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zza:Lcom/google/android/gms/internal/ads/zzdhl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzb:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zza:Lcom/google/android/gms/internal/ads/zzdhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzb:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzc:Z

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzd:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdhl;->zzu(Lcom/google/android/gms/internal/ads/zzdhl;Landroid/view/View;ZI)V

    return-void
.end method
