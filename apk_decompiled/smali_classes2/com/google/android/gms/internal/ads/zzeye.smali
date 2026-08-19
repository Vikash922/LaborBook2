.class final Lcom/google/android/gms/internal/ads/zzeye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeyh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeye;->zza:Lcom/google/android/gms/internal/ads/zzeyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdo;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzj:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfdo;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzeyf;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzeyg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeye;->zza:Lcom/google/android/gms/internal/ads/zzeyh;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeyh;->zzd(Lcom/google/android/gms/internal/ads/zzeyh;Lcom/google/android/gms/internal/ads/zzeyf;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeyh;->zza(Lcom/google/android/gms/internal/ads/zzeyh;)Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object p1

    return-object p1
.end method
