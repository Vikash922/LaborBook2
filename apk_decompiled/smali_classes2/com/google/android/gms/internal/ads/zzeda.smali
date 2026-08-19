.class public final synthetic Lcom/google/android/gms/internal/ads/zzeda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqe;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeda;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeda;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzea;

    return-object v0
.end method
