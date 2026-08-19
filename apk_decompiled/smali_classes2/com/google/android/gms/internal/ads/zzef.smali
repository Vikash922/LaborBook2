.class public final synthetic Lcom/google/android/gms/internal/ads/zzef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeg;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeg;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzd(Lcom/google/android/gms/internal/ads/zzei;Landroid/content/Context;)V

    return-void
.end method
