.class final Lcom/google/android/gms/internal/ads/zzctw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzctx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctw;->zza:Lcom/google/android/gms/internal/ads/zzctx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctw;->zza:Lcom/google/android/gms/internal/ads/zzctx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->zzg(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzcvu;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvu;->zza()V

    return-void
.end method
