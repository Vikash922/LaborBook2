.class public final Lcom/inmobi/media/R4;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/inmobi/media/Q4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/inmobi/media/R4;

    const-string v2, "currentOrientation"

    const-string v3, "getCurrentOrientation()Lcom/inmobi/ads/rendering/orientation/Orientation;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/inmobi/media/R4;->d:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    .line 8
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/inmobi/media/Q4;

    invoke-direct {v0, p1, p0}, Lcom/inmobi/media/Q4;-><init>(Lcom/inmobi/media/I9;Lcom/inmobi/media/R4;)V

    .line 104
    iput-object v0, p0, Lcom/inmobi/media/R4;->c:Lcom/inmobi/media/Q4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/R4;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/K9;)V
    .locals 2

    const-string v0, "orientationProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/inmobi/media/K9;->a:Z

    const/16 v1, 0xd

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/K9;->b:Ljava/lang/String;

    .line 3
    const-string v0, "landscape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/R4;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    :goto_0
    move v2, v3

    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    .line 6
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/inmobi/media/R4;->c:Lcom/inmobi/media/Q4;

    sget-object v2, Lcom/inmobi/media/R4;->d:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2, v0}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/R4;->b()V

    return-void
.end method
