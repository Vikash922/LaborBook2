.class final Lcom/google/android/gms/internal/ads/zzbdg;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zza:Lcom/google/android/gms/internal/ads/zzbdh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdh;->zze(I)V

    return-void
.end method
