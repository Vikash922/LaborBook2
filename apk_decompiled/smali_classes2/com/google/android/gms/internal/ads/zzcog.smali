.class public Lcom/google/android/gms/internal/ads/zzcog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqe;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfav;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzfav;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzd:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcog;->zza:Lcom/google/android/gms/internal/ads/zzcqe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzc:Lcom/google/android/gms/internal/ads/zzfav;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzd:Lcom/google/android/gms/internal/ads/zzcel;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcqe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zza:Lcom/google/android/gms/internal/ads/zzcqe;

    return-object v0
.end method

.method public zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzcwo;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwo;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzc:Lcom/google/android/gms/internal/ads/zzfav;

    return-object v0
.end method
