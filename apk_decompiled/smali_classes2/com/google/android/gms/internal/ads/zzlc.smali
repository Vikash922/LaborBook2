.class public final synthetic Lcom/google/android/gms/internal/ads/zzlc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlh;

.field public final synthetic zzb:Landroid/util/Pair;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzup;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzuu;

.field public final synthetic zze:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlh;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:Lcom/google/android/gms/internal/ads/zzup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:Lcom/google/android/gms/internal/ads/zzuu;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlh;->zza:Lcom/google/android/gms/internal/ads/zzll;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzll;->zze(Lcom/google/android/gms/internal/ads/zzll;)Lcom/google/android/gms/internal/ads/zzmg;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:Lcom/google/android/gms/internal/ads/zzuu;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    .line 1
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzmg;->zzak(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V

    return-void
.end method
