.class public final synthetic Lcom/google/android/gms/internal/ads/zzfso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfso;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfso;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsw;->zzh(Lcom/google/android/gms/internal/ads/zzfsw;)V

    return-void
.end method
