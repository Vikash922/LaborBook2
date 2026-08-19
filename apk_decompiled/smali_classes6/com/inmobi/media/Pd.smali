.class public final Lcom/inmobi/media/Pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Kd;


# static fields
.field public static final g:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Lcom/inmobi/media/Md;

.field public final b:Lcom/inmobi/media/f5;

.field public c:Landroid/view/View;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Lcom/inmobi/media/I9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/media/Pd;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/inmobi/media/Md;Lcom/inmobi/media/f5;)V
    .locals 2

    const-string v0, "windowInsetListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Md;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    .line 33
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/Pd;->e:Ljava/lang/ref/WeakReference;

    .line 35
    sget-object p1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {p1}, Lcom/inmobi/media/E3;->F()Z

    move-result p1

    const-string v0, "WindowInsetsHandler"

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 37
    iput-object p1, p0, Lcom/inmobi/media/Pd;->c:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 38
    move-object p2, p3

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v1, "startListeningToInsets"

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    sget-object p2, Lcom/inmobi/media/Pd;->g:Ljava/util/WeakHashMap;

    .line 152
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/inmobi/media/Ld;

    invoke-direct {v0, p1}, Lcom/inmobi/media/Ld;-><init>(Landroid/view/View;)V

    .line 268
    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_2
    check-cast v0, Lcom/inmobi/media/Ld;

    .line 270
    const-string p1, "listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object p1, v0, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " created - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Lcom/inmobi/media/g5;

    const-string p2, "WindowInsetsHandler_INSTANCE"

    invoke-virtual {p3, p2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 304
    check-cast p3, Lcom/inmobi/media/g5;

    const-string p1, "WindowInsetsHandler is not supported for this version"

    invoke-virtual {p3, v0, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/inmobi/media/Pd;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 624
    sget-object v1, Lcom/inmobi/media/Pd;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/Ld;

    if-nez v2, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    const-string v3, "listener"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v3, v2, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    iget-object v3, v2, Lcom/inmobi/media/Ld;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    invoke-virtual {v2}, Lcom/inmobi/media/Ld;->a()V

    .line 662
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroy - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "WindowInsetsHandler_INSTANCE"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/inmobi/media/Nd;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Od;

    if-nez v1, :cond_0

    new-instance v1, Lcom/inmobi/media/Od;

    invoke-direct {v1}, Lcom/inmobi/media/Od;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    const-string v2, "orientation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v3, v1, Lcom/inmobi/media/Od;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/Nd;

    const-string v4, "WindowInsetsHandler"

    if-eqz v3, :cond_1

    .line 217
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object p1, p0, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "SafeArea - Same value, no need to update"

    invoke-virtual {p1, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/Pd;->b:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_2

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v5, "safeArea - New value, updating to KV store"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insets"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v1, v1, Lcom/inmobi/media/Od;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object p1, p0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 513
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 514
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 515
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 516
    check-cast v2, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 518
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/Od;

    invoke-virtual {v2}, Lcom/inmobi/media/Od;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 618
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_3
    invoke-static {v1}, Lcom/inmobi/media/N3;->a(Ljava/util/LinkedHashMap;)V

    .line 620
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/I9;

    if-eq p1, v0, :cond_5

    .line 621
    iput-object v0, p0, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/I9;

    .line 622
    iget-object p1, p0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Md;

    iget-object v1, p0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/inmobi/media/Od;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/Md;->a(Lcom/inmobi/media/I9;Lcom/inmobi/media/Od;)V

    :cond_5
    return-void
.end method
