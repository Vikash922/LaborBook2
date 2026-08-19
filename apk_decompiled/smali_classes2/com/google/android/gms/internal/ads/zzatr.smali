.class public final synthetic Lcom/google/android/gms/internal/ads/zzatr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzatt;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzatt;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zza:Lcom/google/android/gms/internal/ads/zzatt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zza:Lcom/google/android/gms/internal/ads/zzatt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzb:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzatt;->zzb(Lcom/google/android/gms/internal/ads/zzatt;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
