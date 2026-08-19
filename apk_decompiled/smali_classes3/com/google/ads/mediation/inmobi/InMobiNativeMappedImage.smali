.class Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "InMobiNativeMappedImage.java"


# instance fields
.field private final inMobiDrawable:Landroid/graphics/drawable/Drawable;

.field private final inMobiImageUri:Landroid/net/Uri;

.field private final inMobiScale:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiImageUri:Landroid/net/Uri;

    .line 35
    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiImageUri:Landroid/net/Uri;

    return-object v0
.end method
