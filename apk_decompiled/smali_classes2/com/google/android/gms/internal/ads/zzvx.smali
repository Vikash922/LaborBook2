.class public final synthetic Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzwe;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaeb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzaeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lcom/google/android/gms/internal/ads/zzaeb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwe;->zzC(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzaeb;)V

    return-void
.end method
