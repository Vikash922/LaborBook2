.class public final Lcom/google/android/gms/internal/ads/zzcav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbg;

.field private final zzc:Landroid/view/ViewGroup;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdre;

.field private zze:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:Lcom/google/android/gms/internal/ads/zzcbg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzd:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzl()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(IIII)V
    .locals 1

    .line 1
    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcau;->zzF(IIII)V

    :cond_0
    return-void
.end method

.method public final zzd(IIIIIZLcom/google/android/gms/internal/ads/zzcbf;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzl()Lcom/google/android/gms/internal/ads/zzbcv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbcv;->zza()Lcom/google/android/gms/internal/ads/zzbcx;

    move-result-object v2

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzk()Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v5, "vpr2"

    aput-object v5, v4, v10

    .line 3
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbcp;->zza(Lcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/internal/ads/zzbcu;[Ljava/lang/String;)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcau;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzl()Lcom/google/android/gms/internal/ads/zzbcv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbcv;->zza()Lcom/google/android/gms/internal/ads/zzbcx;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcav;->zzd:Lcom/google/android/gms/internal/ads/zzdre;

    move-object v2, v11

    move-object v4, v1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzcau;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbg;IZLcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/internal/ads/zzcbf;Lcom/google/android/gms/internal/ads/zzdre;)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    .line 5
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    .line 6
    invoke-virtual {v2, p1, p2, p3, v6}, Lcom/google/android/gms/internal/ads/zzcau;->zzF(IIII)V

    .line 7
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzcbg;->zzz(Z)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzu()V

    :cond_0
    return-void
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zze:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzC(I)V

    :cond_0
    return-void
.end method
