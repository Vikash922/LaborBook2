.class public final Lcom/google/android/gms/internal/ads/zzfkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfki;

.field private final zzb:Landroid/webkit/WebView;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfmi;

.field private final zzd:Ljava/util/HashMap;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfkv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfki;Landroid/webkit/WebView;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzd:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zze:Lcom/google/android/gms/internal/ads/zzfkv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflr;->zza()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zza:Lcom/google/android/gms/internal/ads/zzfki;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzb:Landroid/webkit/WebView;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkg;->zza()Landroid/view/View;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfjv;

    .line 6
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfjv;->zzd(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfmi;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfmi;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzc:Lcom/google/android/gms/internal/ads/zzfmi;

    .line 4
    :goto_1
    const-string p1, "WEB_MESSAGE_LISTENER"

    .line 8
    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkg;->zzh()V

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfkf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfkf;-><init>(Lcom/google/android/gms/internal/ads/zzfkg;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzb:Landroid/webkit/WebView;

    new-instance p3, Ljava/util/HashSet;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v0, "omidJsSessionService"

    .line 13
    invoke-static {p2, v0, p3, p1}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The JavaScriptSessionService cannot be supported in this WebView version."

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfki;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/zzfkg;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfkg;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfkg;-><init>(Lcom/google/android/gms/internal/ads/zzfki;Landroid/webkit/WebView;Z)V

    return-object p2
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfkg;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzd:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfjv;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjv;->zzc()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfkg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkg;->zzh()V

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfkg;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfka;->zza:Lcom/google/android/gms/internal/ads/zzfka;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfkh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfkh;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfjw;->zza(Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzfkh;Z)Lcom/google/android/gms/internal/ads/zzfjw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zza:Lcom/google/android/gms/internal/ads/zzfki;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzfjx;->zzb(Lcom/google/android/gms/internal/ads/zzfki;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjx;

    move-result-object v2

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfjz;-><init>(Lcom/google/android/gms/internal/ads/zzfjw;Lcom/google/android/gms/internal/ads/zzfjx;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzd:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkg;->zza()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjv;->zzd(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zze:Lcom/google/android/gms/internal/ads/zzfkv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkv;->zza()Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfku;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfku;->zzb()Lcom/google/android/gms/internal/ads/zzfmi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmi;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfku;->zza()Lcom/google/android/gms/internal/ads/zzfkc;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfku;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfjv;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjv;->zze()V

    return-void
.end method

.method private final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzb:Landroid/webkit/WebView;

    const-string v1, "omidJsSessionService"

    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final zza()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzc:Lcom/google/android/gms/internal/ads/zzfmi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmi;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzf(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzd:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Ad overlay"

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfjv;

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfjv;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zze:Lcom/google/android/gms/internal/ads/zzfkv;

    .line 3
    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfkv;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcfc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfjv;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjv;->zzc()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    .line 3
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfke;

    .line 4
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfke;-><init>(Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/internal/ads/zzcfc;Ljava/util/Timer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
