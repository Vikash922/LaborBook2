.class public final synthetic Lcom/google/android/gms/internal/ads/zzfst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfsu;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsw;->zzd(Lcom/google/android/gms/internal/ads/zzfsw;)Lcom/google/android/gms/internal/ads/zzfsx;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfsx;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsw;->zzb(Lcom/google/android/gms/internal/ads/zzfsw;)Landroid/os/IInterface;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v3, v1

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsw;->zza(Lcom/google/android/gms/internal/ads/zzfsw;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzk(Lcom/google/android/gms/internal/ads/zzfsw;Landroid/os/IInterface;)V

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsw;->zzj(Lcom/google/android/gms/internal/ads/zzfsw;Z)V

    return-void
.end method
