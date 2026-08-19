.class public final Lcom/google/android/gms/internal/ads/zzdje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcne;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdhy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzcne;Lcom/google/android/gms/internal/ads/zzdhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdje;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzc:Lcom/google/android/gms/internal/ads/zzcne;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzd:Lcom/google/android/gms/internal/ads/zzdhy;

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcel;Ljava/util/Map;)V
    .locals 0

    .line 1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Hiding native ads overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzc:Lcom/google/android/gms/internal/ads/zzcne;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcne;->zze(Z)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcel;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    const-string p1, "sendMessageToNativeJs"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzj(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcel;Ljava/util/Map;)V
    .locals 0

    .line 1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Showing native ads overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzc:Lcom/google/android/gms/internal/ads/zzcne;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcne;->zze(Z)V

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzdje;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "messageType"

    const-string p4, "htmlLoaded"

    .line 2
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    const-string p1, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzj(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcel;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzd:Lcom/google/android/gms/internal/ads/zzdhy;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdhy;->zzi()V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcex;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdje;->zza:Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdiy;-><init>(Lcom/google/android/gms/internal/ads/zzdje;)V

    const-string v2, "/sendMessageToSdk"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdiz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdiz;-><init>(Lcom/google/android/gms/internal/ads/zzdje;)V

    const-string v2, "/adMuted"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdja;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdja;-><init>(Lcom/google/android/gms/internal/ads/zzdje;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdje;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    const-string v4, "/loadHtml"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzm(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdjb;-><init>(Lcom/google/android/gms/internal/ads/zzdje;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzm(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdjc;-><init>(Lcom/google/android/gms/internal/ads/zzdje;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzm(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
