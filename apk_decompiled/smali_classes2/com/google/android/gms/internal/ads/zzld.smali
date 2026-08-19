.class public final synthetic Lcom/google/android/gms/internal/ads/zzld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzlh;

.field public final synthetic zzb:Landroid/util/Pair;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzup;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzuu;

.field public final synthetic zze:Ljava/io/IOException;

.field public final synthetic zzf:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlh;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzld;->zzc:Lcom/google/android/gms/internal/ads/zzup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzld;->zzd:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzld;->zze:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzld;->zzf:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzlh;

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

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzld;->zzc:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzld;->zzd:Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzld;->zze:Ljava/io/IOException;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzld;->zzf:Z

    .line 1
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzmg;->zzaj(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    return-void
.end method
