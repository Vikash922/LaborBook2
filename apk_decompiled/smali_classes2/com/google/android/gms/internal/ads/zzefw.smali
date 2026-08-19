.class public final Lcom/google/android/gms/internal/ads/zzefw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfch;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdre;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfch;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzfch;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfau;ILcom/google/android/gms/internal/ads/zzecj;J)V
    .locals 2
    .param p4    # Lcom/google/android/gms/internal/ads/zzecj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/android/gms/internal/ads/zzdre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzd(Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzdrd;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzc(Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string p1, "action"

    const-string v1, "adapter_status"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string p1, "adapter_l"

    .line 5
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string p1, "sc"

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzecj;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    .line 7
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "arec"

    .line 8
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzfch;

    .line 9
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzecj;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfch;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "areec"

    .line 10
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/android/gms/internal/ads/zzdor;

    .line 11
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzt:Ljava/util/List;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzdor;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdoq;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "ancn"

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzdoq;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzdoq;->zzb:Lcom/google/android/gms/internal/ads/zzbrm;

    if-eqz p1, :cond_3

    const-string p2, "adapter_v"

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    :cond_3
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzdoq;->zzc:Lcom/google/android/gms/internal/ads/zzbrm;

    if-eqz p1, :cond_4

    const-string p2, "adapter_sv"

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzj()V

    return-void
.end method
