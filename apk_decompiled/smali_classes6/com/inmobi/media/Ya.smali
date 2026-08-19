.class public final Lcom/inmobi/media/Ya;
.super Lcom/inmobi/media/V1;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/x;
.implements Lcom/inmobi/media/a2;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcom/inmobi/media/L9;
.implements Lcom/inmobi/media/Aa;


# static fields
.field public static final N0:Lcom/inmobi/media/Ia;

.field public static final O0:Lcom/inmobi/media/Ga;

.field public static final P0:Ljava/lang/String;

.field public static final Q0:Lcom/inmobi/media/v1;


# instance fields
.field public A:Z

.field public A0:Ljava/util/Map;

.field public B:Z

.field public final B0:Lcom/inmobi/media/La;

.field public C:Ljava/lang/String;

.field public final C0:Lcom/inmobi/media/Xa;

.field public final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public D0:Ljava/lang/String;

.field public final E:Ljava/lang/Object;

.field public final E0:Lcom/inmobi/media/Ra;

.field public final F:Ljava/lang/Object;

.field public final F0:Lcom/inmobi/media/Pa;

.field public G:Z

.field public final G0:Lcom/inmobi/media/Ja;

.field public final H:Z

.field public H0:Z

.field public I:Landroid/view/View;

.field public I0:Lcom/inmobi/media/Z2;

.field public J:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public final J0:Lcom/inmobi/media/Sa;

.field public K:I

.field public final K0:Lcom/inmobi/media/Ua;

.field public L:J

.field public final L0:Lcom/inmobi/media/Ta;

.field public M:Ljava/lang/String;

.field public M0:Lcom/inmobi/media/Nd;

.field public final N:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final O:Lcom/inmobi/media/fb;

.field public P:Ljava/lang/String;

.field public Q:Ljava/util/Map;

.field public R:Lcom/inmobi/media/Z1;

.field public S:Lcom/inmobi/media/x;

.field public T:Z

.field public U:Z

.field public V:Lcom/inmobi/media/Z;

.field public W:Lcom/inmobi/media/md;

.field public final a0:Z

.field public final b:B

.field public b0:I

.field public final c:Ljava/util/Set;

.field public c0:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public d0:[I

.field public final e:Z

.field public e0:J

.field public f:Ljava/lang/String;

.field public f0:I

.field public g:J

.field public final g0:Lcom/inmobi/media/Ka;

.field public final h:Lcom/inmobi/media/bb;

.field public final h0:Lcom/inmobi/media/Qa;

.field public final i:Lcom/inmobi/media/f5;

.field public i0:I

.field public j:B

.field public j0:I

.field public k:Ljava/lang/ref/WeakReference;

.field public final k0:Lcom/inmobi/media/Z6;

.field public l:Ljava/lang/ref/WeakReference;

.field public final l0:Landroid/view/GestureDetector;

.field public m:Lcom/inmobi/media/ab;

.field public m0:Z

.field public final n:Lcom/inmobi/media/Va;

.field public n0:Z

.field public o:Ljava/lang/String;

.field public o0:Lcom/inmobi/media/U3;

.field public p:Lcom/inmobi/media/f7;

.field public p0:Lcom/inmobi/media/S3;

.field public q:Lcom/inmobi/commons/core/configs/AdConfig;

.field public q0:Ljava/lang/String;

.field public r:Z

.field public r0:Lcom/inmobi/media/K9;

.field public s:Z

.field public s0:Lcom/inmobi/media/n0;

.field public t:Lorg/json/JSONObject;

.field public final t0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public u:Lorg/json/JSONObject;

.field public u0:Z

.field public v:Z

.field public v0:Lcom/inmobi/media/I;

.field public w:Z

.field public w0:Ljava/lang/String;

.field public x:Z

.field public x0:Z

.field public y:Z

.field public y0:Lcom/inmobi/media/Pd;

.field public z:Lcom/inmobi/media/qd;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/inmobi/media/Ia;

    invoke-direct {v0}, Lcom/inmobi/media/Ia;-><init>()V

    sput-object v0, Lcom/inmobi/media/Ya;->N0:Lcom/inmobi/media/Ia;

    .line 1
    new-instance v0, Lcom/inmobi/media/Ga;

    invoke-direct {v0}, Lcom/inmobi/media/Ga;-><init>()V

    sput-object v0, Lcom/inmobi/media/Ya;->O0:Lcom/inmobi/media/Ga;

    .line 9
    const-string v0, "Ya"

    sput-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/inmobi/media/v1;

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lcom/inmobi/media/Ha;->a:Lcom/inmobi/media/Ha;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/media/v1;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZ)V

    sput-object v0, Lcom/inmobi/media/Ya;->Q0:Lcom/inmobi/media/v1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/bb;Lcom/inmobi/media/f5;I)V
    .locals 3

    and-int/lit8 v0, p11, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 v0, p11, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p5, v2

    :cond_2
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_3

    .line 1
    const-string p6, "DEFAULT"

    :cond_3
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_4

    const-wide/16 p7, -0x1

    :cond_4
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_5

    move-object p9, v1

    .line 2
    :cond_5
    const-string p11, "context"

    invoke-static {p1, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p11, "landingScheme"

    invoke-static {p6, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p11

    const-string v0, "getApplicationContext(...)"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p11}, Lcom/inmobi/media/V1;-><init>(Landroid/content/Context;)V

    .line 155
    iput-byte p2, p0, Lcom/inmobi/media/Ya;->b:B

    .line 156
    iput-object p3, p0, Lcom/inmobi/media/Ya;->c:Ljava/util/Set;

    .line 157
    iput-object p4, p0, Lcom/inmobi/media/Ya;->d:Ljava/lang/String;

    .line 158
    iput-boolean p5, p0, Lcom/inmobi/media/Ya;->e:Z

    .line 159
    iput-object p6, p0, Lcom/inmobi/media/Ya;->f:Ljava/lang/String;

    .line 160
    iput-wide p7, p0, Lcom/inmobi/media/Ya;->g:J

    .line 161
    iput-object p9, p0, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    .line 162
    iput-object p10, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    .line 358
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 365
    new-instance p3, Lcom/inmobi/media/Va;

    invoke-direct {p3}, Lcom/inmobi/media/Va;-><init>()V

    iput-object p3, p0, Lcom/inmobi/media/Ya;->n:Lcom/inmobi/media/Va;

    .line 368
    const-string p3, "Default"

    iput-object p3, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    const/4 p3, 0x1

    .line 379
    iput-boolean p3, p0, Lcom/inmobi/media/Ya;->v:Z

    .line 381
    iput-boolean p3, p0, Lcom/inmobi/media/Ya;->w:Z

    .line 385
    iput-boolean p3, p0, Lcom/inmobi/media/Ya;->y:Z

    .line 386
    sget-object p4, Lcom/inmobi/media/qd;->a:Lcom/inmobi/media/qd;

    iput-object p4, p0, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    .line 403
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 404
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->E:Ljava/lang/Object;

    .line 405
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->F:Ljava/lang/Object;

    .line 407
    iput-boolean p3, p0, Lcom/inmobi/media/Ya;->H:Z

    const/4 p4, -0x1

    .line 410
    iput p4, p0, Lcom/inmobi/media/Ya;->K:I

    const-wide/high16 p4, -0x8000000000000000L

    .line 412
    iput-wide p4, p0, Lcom/inmobi/media/Ya;->L:J

    .line 416
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 466
    new-instance p4, Lcom/inmobi/media/Ka;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Ka;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->g0:Lcom/inmobi/media/Ka;

    .line 472
    new-instance p4, Lcom/inmobi/media/Qa;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Qa;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->h0:Lcom/inmobi/media/Qa;

    const/high16 p4, -0x80000000

    .line 484
    iput p4, p0, Lcom/inmobi/media/Ya;->i0:I

    .line 485
    iput p4, p0, Lcom/inmobi/media/Ya;->j0:I

    .line 497
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->t0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 516
    new-instance p4, Lcom/inmobi/media/La;

    invoke-direct {p4, p0}, Lcom/inmobi/media/La;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->B0:Lcom/inmobi/media/La;

    .line 532
    new-instance p4, Lcom/inmobi/media/Xa;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Xa;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->C0:Lcom/inmobi/media/Xa;

    .line 547
    const-string p4, "html"

    iput-object p4, p0, Lcom/inmobi/media/Ya;->D0:Ljava/lang/String;

    .line 549
    new-instance p4, Lcom/inmobi/media/Ra;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Ra;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->E0:Lcom/inmobi/media/Ra;

    .line 587
    new-instance p4, Lcom/inmobi/media/Pa;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Pa;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->F0:Lcom/inmobi/media/Pa;

    .line 640
    new-instance p4, Lcom/inmobi/media/Ja;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Ja;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->G0:Lcom/inmobi/media/Ja;

    .line 658
    sget-object p4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string p5, "TAG"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 659
    sget-object p4, Lcom/inmobi/media/Ya;->N0:Lcom/inmobi/media/Ia;

    .line 660
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    sget-object p4, Lcom/inmobi/media/Ya;->Q0:Lcom/inmobi/media/v1;

    .line 662
    invoke-virtual {p4}, Lcom/inmobi/media/v1;->a()V

    .line 663
    iput-object p0, p0, Lcom/inmobi/media/Ya;->S:Lcom/inmobi/media/x;

    .line 664
    iput-boolean p3, p0, Lcom/inmobi/media/Ya;->a0:Z

    .line 665
    new-instance p4, Lcom/inmobi/media/K9;

    invoke-direct {p4}, Lcom/inmobi/media/K9;-><init>()V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->r0:Lcom/inmobi/media/K9;

    .line 666
    new-instance p4, Lcom/inmobi/media/Z6;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Z6;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p4, p0, Lcom/inmobi/media/Ya;->k0:Lcom/inmobi/media/Z6;

    .line 668
    new-instance p4, Landroid/view/GestureDetector;

    invoke-direct {p4, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 669
    invoke-virtual {p4, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    if-ne p2, p3, :cond_6

    goto :goto_0

    :cond_6
    move p3, v2

    .line 670
    :goto_0
    invoke-virtual {p4, p3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 671
    iput-object p4, p0, Lcom/inmobi/media/Ya;->l0:Landroid/view/GestureDetector;

    if-eqz p9, :cond_7

    .line 677
    new-instance p2, Lcom/inmobi/media/fb;

    invoke-direct {p2, p9}, Lcom/inmobi/media/fb;-><init>(Lcom/inmobi/media/bb;)V

    iput-object p2, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    .line 679
    :cond_7
    sget-object p2, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    invoke-static {p0, p10}, Lcom/inmobi/media/Ea;->a(Ljava/lang/Object;Lcom/inmobi/media/f5;)V

    .line 1857
    new-instance p2, Lcom/inmobi/media/Sa;

    invoke-direct {p2, p0}, Lcom/inmobi/media/Sa;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p2, p0, Lcom/inmobi/media/Ya;->J0:Lcom/inmobi/media/Sa;

    .line 1903
    new-instance p2, Lcom/inmobi/media/Ua;

    invoke-direct {p2, p0}, Lcom/inmobi/media/Ua;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p2, p0, Lcom/inmobi/media/Ya;->K0:Lcom/inmobi/media/Ua;

    .line 2152
    new-instance p2, Lcom/inmobi/media/Ta;

    invoke-direct {p2, p0}, Lcom/inmobi/media/Ta;-><init>(Lcom/inmobi/media/Ya;)V

    iput-object p2, p0, Lcom/inmobi/media/Ya;->L0:Lcom/inmobi/media/Ta;

    .line 2497
    iget-boolean p2, p0, Lcom/inmobi/media/Ya;->H0:Z

    if-nez p2, :cond_9

    invoke-static {p1}, Lcom/inmobi/media/y2;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 2502
    :cond_8
    new-instance p1, Lcom/inmobi/media/Nd;

    invoke-direct {p1, v2, v2, v2, v2}, Lcom/inmobi/media/Nd;-><init>(IIII)V

    goto :goto_2

    .line 2503
    :cond_9
    :goto_1
    new-instance p1, Lcom/inmobi/media/Nd;

    const/16 p2, 0x2c

    invoke-direct {p1, v2, p2, p2, v2}, Lcom/inmobi/media/Nd;-><init>(IIII)V

    .line 2504
    :goto_2
    iput-object p1, p0, Lcom/inmobi/media/Ya;->M0:Lcom/inmobi/media/Nd;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0}, Lcom/inmobi/media/g5;->a()V

    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ya;Ljava/lang/String;)V
    .locals 5

    const-string v0, "TAG"

    const-string v1, "javascript:try{"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$js"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6093
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "}catch(e){}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6095
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Injecting javascript"

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6099
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evaluateScript "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 6100
    invoke-virtual {p0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6101
    iget-object p0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_2

    .line 6102
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 6103
    const-string v2, "SDK encountered an unexpected error injecting JavaScript in the Ad container; "

    invoke-static {v1, v0, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6104
    invoke-static {p1, v0}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 7715
    check-cast p0, Lcom/inmobi/media/g5;

    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 11320
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 11321
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUserLandingInitialized "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isInAppBrowser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/inmobi/media/Ya;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11322
    :cond_0
    const-string v0, "window.imraid.broadcastEvent(\'onUserLandingInitialized\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    if-nez p2, :cond_1

    goto :goto_0

    .line 11326
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Successful\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\');"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11327
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ya;[BLcom/inmobi/ads/WatermarkData;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$overlayBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$watermarkData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "adding overlay to renderview"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/ads/WatermarkData;->getAlpha()F

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/inmobi/media/Ad;->a(Landroid/content/Context;[BF)Landroid/widget/FrameLayout;

    move-result-object p1

    .line 5
    const-string p2, "overlayLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "renderView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewableAd()Lcom/inmobi/media/md;

    move-result-object p2

    .line 63
    sget-object v0, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    .line 64
    invoke-virtual {p2, p1, v0}, Lcom/inmobi/media/md;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    .line 67
    iget-object p0, p0, Lcom/inmobi/media/Ya;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ya;Landroid/webkit/JsResult;)Z
    .locals 4

    .line 11298
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 11299
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 11300
    const-string v3, "shouldRenderPopup "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11301
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11302
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->shouldRenderPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 11305
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 11306
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 11307
    const-string v2, "firePopupBlockedEvent "

    invoke-static {p0, v0, v1, v2}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11308
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11309
    :cond_2
    const-string p1, "window.mraidview.popupBlocked(\'popupBlocked\')"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3062
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->j(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public static final c(Lcom/inmobi/media/Ya;)V
    .locals 6

    const-string v0, "updateWebViewLoaded state changed to "

    const-string v1, "updateWebViewLoaded "

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    iget-object v2, p0, Lcom/inmobi/media/Ya;->n:Lcom/inmobi/media/Va;

    monitor-enter v2

    .line 1830
    :try_start_0
    const-string v3, "Loading"

    iget-object v4, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1831
    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/inmobi/media/ab;->f(Lcom/inmobi/media/Ya;)V

    .line 1833
    const-string v1, "Default"

    invoke-virtual {p0, v1}, Lcom/inmobi/media/Ya;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 1834
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, p0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static synthetic getAdType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCloseAssetArea$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getImpressionType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMarkupType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMarkupTypeAdUnit$annotations()V
    .locals 0

    return-void
.end method

.method private final getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_0

    const-string v0, "mAdConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPlacementType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getViewState$annotations()V
    .locals 0

    return-void
.end method

.method private final getVisibilityTrackingMinPercentage()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mAdConfig"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getAudioImpressionMinPercentageViewed()I

    move-result v0

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebImpressionMinPercentageViewed()I

    move-result v0

    :goto_2
    return v0
.end method

.method public static synthetic getWindowInsetListener$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 7722
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 7723
    const-string v3, "dismissCurrentViewContainer "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9460
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9461
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    if-eqz v0, :cond_2

    .line 9462
    iget-object v2, v0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/inmobi/media/V6;->b()V

    :cond_1
    const/4 v2, 0x0

    .line 9463
    iput-object v2, v0, Lcom/inmobi/media/f7;->c:Lcom/inmobi/media/V6;

    .line 9464
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    const-string v2, "Default"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9465
    const-string v0, "Hidden"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 9466
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 9467
    iget-byte v4, p0, Lcom/inmobi/media/Ya;->b:B

    const/4 v5, 0x1

    if-ne v5, v4, :cond_8

    .line 9468
    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 9469
    const-string v6, "finishFullScreenActivity "

    invoke-static {p0, v4, v1, v6}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9470
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9471
    :cond_3
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 9472
    const-string v1, "container"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9473
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 9474
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 9475
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9478
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lcom/inmobi/media/Z;->a(Lcom/inmobi/media/Ya;)Z

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_0

    .line 9479
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 9480
    iput-boolean v5, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 9481
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 9482
    :cond_5
    iget v0, p0, Lcom/inmobi/media/Ya;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 9483
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 9484
    iget v1, p0, Lcom/inmobi/media/Ya;->K:I

    const/4 v2, 0x0

    .line 9485
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 9491
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9492
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 9494
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->w()V

    goto :goto_0

    .line 9495
    :cond_8
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 9496
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9497
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    sget-object v1, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    if-ne v0, v1, :cond_a

    .line 9498
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/inmobi/media/Z;->a(Lcom/inmobi/media/Ya;Landroid/content/Context;)V

    :cond_a
    return-void
.end method

.method public final a(BLjava/util/Map;)V
    .locals 2

    .line 1483
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fireEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/I9;)V
    .locals 3

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9509
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 9510
    const-string v1, "TAG"

    const-string v2, "onOrientationUpdate "

    invoke-static {p0, v0, v1, v2}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11292
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/ab;Lcom/inmobi/commons/core/configs/AdConfig;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "frame"

    const-string v3, "pixel"

    const-string v4, "view"

    const-string v5, "time"

    const-string v6, "type"

    const-string v7, "adConfig"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v7, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v8, "TAG"

    if-eqz v7, :cond_0

    sget-object v9, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 100
    const-string v10, "initialize "

    invoke-static {v0, v9, v8, v10}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1268
    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v9, v10}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_0
    iget-object v7, v0, Lcom/inmobi/media/Ya;->D0:Ljava/lang/String;

    const-string v9, "htmlUrl"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_1

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1272
    :cond_1
    iput-object v1, v0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 1273
    iget-object v7, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v7, :cond_2

    sget-object v10, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1274
    const-string v11, "setImpressionParams "

    invoke-static {v0, v10, v8, v11}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1275
    check-cast v7, Lcom/inmobi/media/g5;

    invoke-virtual {v7, v10, v11}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_2
    iget-object v7, v0, Lcom/inmobi/media/Ya;->c:Ljava/util/Set;

    if-nez v7, :cond_4

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->s()V

    :cond_3
    :goto_0
    move-object/from16 v2, p1

    goto/16 :goto_8

    .line 1281
    :cond_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->s()V

    .line 1282
    iget-object v7, v0, Lcom/inmobi/media/Ya;->c:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/inmobi/media/Hc;

    .line 1283
    iget-byte v13, v12, Lcom/inmobi/media/Hc;->a:B

    if-ne v13, v9, :cond_5

    .line 1284
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v13, :cond_6

    .line 1286
    :try_start_1
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-byte v13, v13

    .line 1287
    iput-byte v13, v0, Lcom/inmobi/media/Ya;->j:B

    goto :goto_2

    .line 1290
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->t()V

    .line 1292
    :goto_2
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1294
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1295
    iput v13, v0, Lcom/inmobi/media/Ya;->i0:I

    goto :goto_3

    .line 1298
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->r()V

    .line 1300
    :goto_3
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1302
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1303
    iput v13, v0, Lcom/inmobi/media/Ya;->j0:I

    goto :goto_4

    .line 1306
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->q()V

    .line 1308
    :goto_4
    iget-byte v13, v0, Lcom/inmobi/media/Ya;->j:B

    if-ne v13, v9, :cond_5

    .line 1309
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1311
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1312
    iput v13, v0, Lcom/inmobi/media/Ya;->f0:I

    goto :goto_5

    .line 1315
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->t()V

    .line 1317
    :goto_5
    iget-object v13, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1319
    iget-object v12, v12, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lorg/json/JSONArray;

    if-eqz v13, :cond_a

    check-cast v12, Lorg/json/JSONArray;

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_5

    .line 1321
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [I

    iput-object v13, v0, Lcom/inmobi/media/Ya;->d0:[I

    .line 1322
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_5

    .line 1323
    iget-object v11, v0, Lcom/inmobi/media/Ya;->d0:[I

    if-eqz v11, :cond_b

    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v11, v15

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1327
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->t()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1336
    :catch_0
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_d

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "SDK encountered an unexpected error in parsing impression parameters"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->s()V

    goto/16 :goto_0

    .line 1338
    :catch_1
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_e

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v4, "Exception in parsing the impressionType and pixel frame"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->s()V

    goto/16 :goto_0

    .line 1340
    :goto_8
    iput-object v2, v0, Lcom/inmobi/media/Ya;->m:Lcom/inmobi/media/ab;

    .line 1341
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getWebviewBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1343
    new-instance v2, Lcom/inmobi/media/a7;

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 1345
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;->getMaxRetries()I

    move-result v18

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;->getRetryInterval()I

    move-result v19

    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getMraidConfig()Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$MraidConfig;->getExpiry()J

    move-result-wide v20

    .line 1348
    iget-object v3, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    move-object/from16 v16, v2

    move-object/from16 v22, v3

    .line 1349
    invoke-direct/range {v16 .. v22}, Lcom/inmobi/media/a7;-><init>(Ljava/lang/String;IIJLcom/inmobi/media/f5;)V

    .line 1355
    invoke-virtual {v2}, Lcom/inmobi/media/a7;->a()V

    .line 1360
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setImportantForAccessibility(I)V

    const/4 v2, 0x0

    .line 1362
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Ya;->setScrollable(Z)V

    .line 1363
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1364
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1367
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getEnableDomStorage()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 1369
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->e:Z

    if-eqz v2, :cond_11

    .line 1370
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_10

    sget-object v5, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v6, "view is in-app browser. Using EmbeddedBrowserViewClient."

    invoke-virtual {v2, v5, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_10
    new-instance v2, Lcom/inmobi/media/U3;

    .line 1377
    sget-object v5, Lcom/inmobi/media/Ma;->a:Lcom/inmobi/media/Ma;

    sget-object v6, Lcom/inmobi/media/Na;->a:Lcom/inmobi/media/Na;

    iget-object v7, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    .line 1378
    const-string v8, "IN_CUSTOM_BROWSER"

    invoke-direct {v2, v8, v5, v6, v7}, Lcom/inmobi/media/U3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/inmobi/media/f5;)V

    .line 1385
    iput-object v2, v0, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    goto/16 :goto_e

    .line 1388
    :cond_11
    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_12

    sget-object v5, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v6, "view is ad. Using RenderViewClient"

    invoke-virtual {v2, v5, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_12
    new-instance v2, Lcom/inmobi/media/Za;

    .line 1390
    iget-object v5, v0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    iget-object v6, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    .line 1391
    new-instance v7, Lcom/inmobi/media/Oa;

    invoke-direct {v7, v0}, Lcom/inmobi/media/Oa;-><init>(Lcom/inmobi/media/Ya;)V

    .line 1392
    invoke-direct {v2, v5, v6, v7}, Lcom/inmobi/media/Za;-><init>(Lcom/inmobi/media/fb;Lcom/inmobi/media/f5;Lcom/inmobi/media/Oa;)V

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v5

    .line 1397
    const-string v6, "banner"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "mAdConfig"

    if-eqz v6, :cond_14

    iget-object v5, v0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v5, :cond_13

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_a

    :cond_13
    move-object v11, v5

    :goto_a
    invoke-virtual {v11}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getBannerNetworkLoadsLimit()I

    move-result v5

    goto :goto_d

    .line 1398
    :cond_14
    const-string v6, "audio"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v5, :cond_15

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_b

    :cond_15
    move-object v11, v5

    :goto_b
    invoke-virtual {v11}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getAudioNetworkLoadsLimit()I

    move-result v5

    goto :goto_d

    .line 1399
    :cond_16
    iget-object v5, v0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v5, :cond_17

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_c

    :cond_17
    move-object v11, v5

    :goto_c
    invoke-virtual {v11}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getOtherNetworkLoadsLimit()I

    move-result v5

    .line 1400
    :goto_d
    iput v5, v2, Lcom/inmobi/media/W1;->b:I

    .line 1401
    :goto_e
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1402
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->e:Z

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getEnableCookiesOnInAppBrowser()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1403
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 1404
    invoke-virtual {v2, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1406
    invoke-virtual {v2, v0, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 1407
    :cond_18
    iget-object v2, v0, Lcom/inmobi/media/Ya;->K0:Lcom/inmobi/media/Ua;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1409
    iget-boolean v2, v0, Lcom/inmobi/media/Ya;->e:Z

    if-nez v2, :cond_1a

    .line 1410
    new-instance v2, Lcom/inmobi/media/X5;

    iget-byte v4, v0, Lcom/inmobi/media/Ya;->b:B

    invoke-direct {v2, v4, v0}, Lcom/inmobi/media/X5;-><init>(ILcom/inmobi/media/Ya;)V

    .line 1411
    iget-object v4, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_19

    .line 1412
    const-string v5, "logger"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    iput-object v4, v2, Lcom/inmobi/media/X5;->d:Lcom/inmobi/media/f5;

    .line 1465
    :cond_19
    const-string v4, "sdkController"

    invoke-virtual {v0, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1468
    :cond_1a
    new-instance v2, Lcom/inmobi/media/f7;

    iget-object v4, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-direct {v2, v0, v4}, Lcom/inmobi/media/f7;-><init>(Lcom/inmobi/media/Ya;Lcom/inmobi/media/f5;)V

    iput-object v2, v0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    .line 1469
    new-instance v2, Lcom/inmobi/media/n0;

    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdQuality()Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    move-result-object v1

    iget-object v4, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-direct {v2, v1, v4}, Lcom/inmobi/media/n0;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;Lcom/inmobi/media/f5;)V

    iput-object v2, v0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    const/16 v1, 0x1d

    if-lt v3, v1, :cond_1b

    .line 1470
    new-instance v1, Lcom/inmobi/media/db;

    iget-object v2, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    iget-object v3, v0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/db;-><init>(Lcom/inmobi/media/f5;Lcom/inmobi/media/fb;)V

    .line 1471
    sget-object v2, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1472
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Ljava/util/concurrent/Executor;Landroid/webkit/WebViewRenderProcessClient;)V

    :cond_1b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "mraidApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1485
    const-string v3, "sendFraudBeaconAndTelemetryEvent "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2966
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const/16 v2, 0x20

    if-eqz v0, :cond_1

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fireDetectAutoRedirectFraud "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.fireRedirectFraudBeacon(\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 2969
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "banner"

    .line 2970
    :cond_2
    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendTelemetryForAutoRedirectFraud "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2972
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "creativeId"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    :cond_4
    const-string v3, "trigger"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v3, "impressionId"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    :cond_5
    const-string p1, "adType"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2979
    const-string v3, "processTelemetryEvent "

    invoke-static {p0, v0, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2980
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p1

    const-string v0, "BlockAutoRedirection"

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/ab;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4502
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4503
    const-string v2, "TAG"

    const-string v3, "fireJavaScriptCallback "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6082
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 6086
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6087
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4496
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fireError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 4500
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastEvent(\'error\',\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\", \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4501
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "TAG"

    const-string v1, "report - "

    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "templateInfoStr"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " type - sdk - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_1

    .line 71
    iget-object p2, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 72
    sget-object p2, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    iget-object v8, p0, Lcom/inmobi/media/Ya;->B0:Lcom/inmobi/media/La;

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    .line 79
    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/e0;->a(Landroid/app/Activity;Lcom/inmobi/media/Ya;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/inmobi/media/La;)V

    return-void

    .line 90
    :cond_1
    sget-object p2, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    iget-object v8, p0, Lcom/inmobi/media/Ya;->B0:Lcom/inmobi/media/La;

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    .line 92
    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/e0;->a(Lcom/inmobi/media/Ya;Lcom/inmobi/media/Ya;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/inmobi/media/La;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    iget-object p2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_2

    sget-object p3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string v0, "issue wile reporting ad"

    invoke-virtual {p2, p3, v0, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    const-string v0, "trackerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macros"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13710
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 13711
    const-string v2, "TAG"

    const-string v3, "fireLandingPageTracker "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16090
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16091
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/inmobi/media/ab;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11328
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 11329
    const-string v2, "TAG"

    const-string v3, "onCTLifeCycleEvent "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13703
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13704
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.imraid.broadcastEvent(\'onCTLifeCycleEvent\', "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 2992
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2993
    const-string v3, "fireNextAdLoadComplete "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4487
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.imraidview.broadcastEvent(\'adLoadSuccess\',"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4489
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getCurrentRenderingPodAdIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4490
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(ZS)V
    .locals 4

    .line 16097
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "fireRenderProcessGoneTelemetry"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16098
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_1

    .line 16101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "render_view_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 16102
    iget-object v2, v2, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    .line 16103
    invoke-virtual {v2}, Lcom/inmobi/media/Y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 16104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isCrashed"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 16105
    iget-object v0, v0, Lcom/inmobi/media/fb;->a:Lcom/inmobi/media/bb;

    .line 16106
    iget-object v0, v0, Lcom/inmobi/media/bb;->f:Ljava/lang/String;

    .line 16107
    const-string v2, "creativeId"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 16108
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    const-string v2, "errorCode"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    aput-object p2, v2, p1

    .line 16109
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 16110
    sget-object p2, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 16111
    sget-object p2, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 16112
    const-string v0, "WebViewRenderProcessGoneEvent"

    invoke-static {v0, p1, p2}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "destroyContainer "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1331
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1335
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->y:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1336
    iput-boolean v2, p0, Lcom/inmobi/media/Ya;->y:Z

    return-void

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1340
    iget-object v0, p0, Lcom/inmobi/media/Ya;->y0:Lcom/inmobi/media/Pd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->a()V

    .line 1341
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/media/Z2;->b()V

    .line 1342
    :cond_4
    iput-boolean v2, p0, Lcom/inmobi/media/Ya;->G:Z

    const/4 v0, -0x1

    .line 1343
    iput v0, p0, Lcom/inmobi/media/Ya;->K:I

    .line 1344
    const-string v0, "sdkController"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 1347
    iget-object v3, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/inmobi/media/S6;->a()V

    .line 1348
    :cond_5
    iput-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    .line 1349
    iget-object v3, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/inmobi/media/S6;->a()V

    .line 1350
    :cond_6
    iput-object v2, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    .line 1351
    iget-object v3, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/inmobi/media/S6;->a()V

    .line 1352
    :cond_7
    iput-object v2, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    .line 1353
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1355
    iget-object v0, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1356
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/inmobi/media/md;->e()V

    .line 1357
    :cond_a
    iget-object v0, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/inmobi/media/md;->a()V

    .line 1358
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->u()V

    .line 1359
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_c

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1360
    const-string v4, "stopTrackingAudioVolume "

    invoke-static {p0, v3, v1, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :cond_c
    sget-object v0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    iget-object v0, p0, Lcom/inmobi/media/Ya;->g0:Lcom/inmobi/media/Ka;

    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-static {v1, v0}, Lcom/inmobi/media/s;->c(Lcom/inmobi/media/f5;Lcom/inmobi/media/Ka;)V

    .line 1363
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Ya;->setFriendlyViews(Ljava/util/Map;)V

    .line 1364
    iput-object v2, p0, Lcom/inmobi/media/Ya;->p0:Lcom/inmobi/media/S3;

    .line 1365
    iput-object v2, p0, Lcom/inmobi/media/Ya;->m:Lcom/inmobi/media/ab;

    .line 1366
    iput-object v2, p0, Lcom/inmobi/media/Ya;->S:Lcom/inmobi/media/x;

    .line 1367
    iput-object v2, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->m0:Z

    .line 1371
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1373
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1376
    :cond_d
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_e

    const-string v0, "mAdConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getOmidConfig()Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;

    move-result-object v0

    .line 1377
    iget-boolean v1, p0, Lcom/inmobi/media/Ya;->a0:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->isOmidEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1378
    sget-object v1, Lcom/inmobi/media/G9;->a:Lcom/inmobi/media/H9;

    .line 1379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    invoke-static {}, Lcom/iab/omid/library/inmobi/Omid;->isActive()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1381
    new-instance v1, Lcom/inmobi/media/cb;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getWebViewRetainTime()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/inmobi/media/cb;-><init>(Lcom/inmobi/media/Ya;J)V

    .line 1382
    invoke-virtual {v1}, Lcom/inmobi/media/cb;->a()V

    goto :goto_1

    .line 1384
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "js"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "injectJavaScript "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1397
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1398
    new-instance v1, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/Ya;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1400
    const-string v3, "processMediaPlaybackRequest "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3029
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v0, :cond_2

    .line 3031
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Media playback is not allowed after unload! Ignoring request ..."

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 3034
    :cond_2
    iget-byte v0, p0, Lcom/inmobi/media/Ya;->b:B

    const/4 v2, 0x1

    if-eq v2, v0, :cond_4

    .line 3035
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 3036
    sget-object p2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3037
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Media playback is only supported on full screen ads! Ignoring request ..."

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 3042
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 3044
    iget-object p2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v0, "Media playback is  not allowed before it is visible! Ignoring request ..."

    if-eqz p2, :cond_5

    .line 3045
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3046
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    :cond_5
    const-string p2, "playVideo"

    invoke-virtual {p0, p1, v0, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3056
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/f7;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "contentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3063
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 3064
    const-string v4, "processSaveContentRequest "

    invoke-static {p0, v3, v2, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5104
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveContent called: content ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    :cond_1
    const-string v1, "saveContent"

    invoke-virtual {p0, v1}, Lcom/inmobi/media/Ya;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "toString(...)"

    if-nez v1, :cond_3

    .line 5107
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_2

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "saveContent called despite the fact that it is not supported"

    invoke-virtual {v1, v4, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5108
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5110
    :try_start_0
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5111
    const-string p3, "reason"

    const/4 v0, 0x7

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5114
    :catch_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\""

    const-string v6, "\\\""

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSaveContentResult(\"saveContent_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\", \'failed\', \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\");"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5117
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5122
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5123
    new-instance v0, Lcom/inmobi/media/za;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p3}, Lcom/inmobi/media/za;-><init>(BLjava/lang/String;)V

    .line 5124
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5125
    new-instance p3, Lcom/inmobi/media/k;

    .line 5126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5127
    iget-object v3, p0, Lcom/inmobi/media/Ya;->L0:Lcom/inmobi/media/Ta;

    const/4 v5, 0x2

    move-object v0, p3

    move-object v4, p2

    .line 5128
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/k;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/media/s1;Ljava/lang/String;I)V

    .line 5129
    iput-object p1, p3, Lcom/inmobi/media/k;->c:Ljava/lang/String;

    .line 5130
    sget-object p1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-static {p3}, Lcom/inmobi/media/r1;->a(Lcom/inmobi/media/k;)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 5136
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5137
    const-string v3, "fireNextAdShowComplete "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7477
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7478
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.imraidview.broadcastEvent(\'adShowSuccess\',"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7479
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getCurrentRenderingPodAdIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7480
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 361
    iget-object v0, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/fb;->b()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 363
    const-string v2, "TAG"

    const-string v3, "loadDataInWebView "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1820
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 1821
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->G:Z

    .line 1822
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1823
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const-string v2, ""

    const-string v4, "text/html"

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 12

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/inmobi/media/qd;->c:Lcom/inmobi/media/qd;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/inmobi/media/qd;->b:Lcom/inmobi/media/qd;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    if-eq v1, v0, :cond_a

    .line 3
    iget-boolean v1, p0, Lcom/inmobi/media/Ya;->G:Z

    if-nez v1, :cond_a

    .line 4
    iput-object v0, p0, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->i(Lcom/inmobi/media/Ya;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fireViewableChange "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.broadcastEvent(\'viewableChange\',"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/Ya;->z:Lcom/inmobi/media/qd;

    .line 11
    const-string v2, "adViewableStatus"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object v0, p1, Lcom/inmobi/media/n0;->h:Lcom/inmobi/media/qd;

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 105
    const-string v2, "fireAQSession - "

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type - sdk - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x3e8

    const-string v1, "session state invalid"

    const-string v2, "session start trigger..."

    const/4 v3, 0x0

    const-string v4, "adQualityManager"

    const/4 v5, 0x1

    if-eqz p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt p1, v6, :cond_7

    .line 108
    iget-object p1, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    if-eqz v7, :cond_7

    .line 109
    iget-object p1, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-nez p1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_1

    :cond_5
    move-object v6, p1

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string p1, "activity"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6}, Lcom/inmobi/media/n0;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 231
    invoke-virtual {v6, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 234
    :cond_6
    invoke-virtual {v6, v2}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 235
    iget-object p1, v6, Lcom/inmobi/media/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    iget-object p1, v6, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityControl;->getTakeScreenshot()Z

    move-result p1

    if-ne p1, v5, :cond_a

    .line 237
    iget-object p1, v6, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz p1, :cond_a

    .line 238
    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityControl;->getScreenshotDelayInSeconds()F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v8, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 239
    invoke-virtual/range {v6 .. v11}, Lcom/inmobi/media/n0;->a(Landroid/app/Activity;JZLcom/inmobi/media/La;)V

    goto :goto_3

    .line 240
    :cond_7
    iget-object p1, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-nez p1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_2

    :cond_8
    move-object v6, p1

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    const-string p1, "adView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v6}, Lcom/inmobi/media/n0;->a()Z

    move-result p1

    if-nez p1, :cond_9

    .line 348
    invoke-virtual {v6, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 351
    :cond_9
    invoke-virtual {v6, v2}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    .line 352
    iget-object p1, v6, Lcom/inmobi/media/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    iget-object p1, v6, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityControl;->getTakeScreenshot()Z

    move-result p1

    if-ne p1, v5, :cond_a

    .line 354
    iget-object p1, v6, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz p1, :cond_a

    .line 355
    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityControl;->getScreenshotDelayInSeconds()F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v8, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p0

    .line 356
    invoke-virtual/range {v6 .. v11}, Lcom/inmobi/media/n0;->a(Lcom/inmobi/media/Ya;JZLcom/inmobi/media/La;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/fb;->b()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "loadUrlInWebView "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1469
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 1470
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->G:Z

    .line 1471
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1472
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processDisableCloseRegionRequest "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_0
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->A:Z

    .line 1480
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->v()V

    return-void
.end method

.method public final d()Z
    .locals 4

    .line 1481
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "canRedirectExternally Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getAutoRedirectionEnforcement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1483
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 5
    const-string v2, "TAG"

    const-string v3, "disableHardwareAcceleration called. "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2088
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2090
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2092
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 2093
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 2094
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processUseCustomCloseRequest "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->setUseCustomClose(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->v()V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 5

    .line 2106
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "supports "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "redirectFraudDetection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "saveContent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "html5video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "immersive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 2108
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->H0:Z

    goto/16 :goto_0

    .line 2109
    :sswitch_4
    const-string v2, "edge-to-edge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 2120
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getPlacementType()B

    move-result p1

    if-eq p1, v3, :cond_4

    .line 2121
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 2122
    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2123
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "EDGE_TO_EDGE is only supported for fullscreen ads. supports(edge-to-edge) = false"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    .line 2129
    :cond_4
    iget-boolean p1, p0, Lcom/inmobi/media/Ya;->H0:Z

    if-eqz p1, :cond_6

    .line 2130
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Ad is in Immersive mode. supports(edge-to-edge) = false"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0

    .line 2133
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/media/y2;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 2134
    :sswitch_5
    const-string v2, "inlineVideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 2139
    :cond_7
    iget-boolean p1, p0, Lcom/inmobi/media/Ya;->r:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/inmobi/media/Ya;->H:Z

    if-eqz p1, :cond_8

    move v0, v3

    .line 2140
    :cond_8
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTML5 video supported:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2141
    :sswitch_6
    const-string v1, "playVideo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v0, v3

    :cond_a
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_6
        -0x6235c69e -> :sswitch_5
        -0xa0c6641 -> :sswitch_4
        0x43ceaabb -> :sswitch_3
        0x59fa48d1 -> :sswitch_2
        0x61e1d43c -> :sswitch_1
        0x69ad837d -> :sswitch_0
    .end sparse-switch
.end method

.method public final f()Lcom/inmobi/media/o6;
    .locals 21

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "initLandingPageHandler "

    invoke-static {v8, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1300
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_0
    new-instance v2, Lcom/inmobi/media/p6;

    .line 1302
    iget-boolean v0, v8, Lcom/inmobi/media/Ya;->e:Z

    iget-object v1, v8, Lcom/inmobi/media/Ya;->f:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig;->getPartialTabsEnabled()Z

    move-result v4

    .line 1303
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/inmobi/media/p6;-><init>(ZLjava/lang/String;ZZ)V

    .line 1306
    new-instance v9, Lcom/inmobi/media/o6;

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1309
    iget-object v3, v8, Lcom/inmobi/media/Ya;->F0:Lcom/inmobi/media/Pa;

    .line 1310
    iget-object v4, v8, Lcom/inmobi/media/Ya;->E0:Lcom/inmobi/media/Ra;

    .line 1312
    iget-boolean v0, v8, Lcom/inmobi/media/Ya;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto/16 :goto_b

    .line 1313
    :cond_1
    new-instance v0, Lcom/inmobi/media/u6;

    .line 1314
    iget-object v5, v8, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v5, :cond_2

    .line 1315
    iget-object v5, v5, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    if-eqz v5, :cond_2

    .line 1316
    invoke-virtual {v5}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    :goto_1
    move-wide v11, v5

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_3

    move-object v13, v6

    goto :goto_2

    :cond_3
    move-object v13, v5

    .line 1318
    :goto_2
    iget-object v5, v8, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v5, :cond_5

    .line 1319
    iget-object v5, v5, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    if-eqz v5, :cond_5

    .line 1320
    invoke-virtual {v5}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v14, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object v14, v6

    .line 1321
    :goto_4
    iget-object v5, v8, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v5, :cond_7

    .line 1322
    iget-object v5, v5, Lcom/inmobi/media/bb;->a:Lcom/inmobi/media/Y;

    if-eqz v5, :cond_7

    .line 1323
    invoke-virtual {v5}, Lcom/inmobi/media/Y;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v15, v5

    goto :goto_6

    :cond_7
    :goto_5
    move-object v15, v6

    .line 1324
    :goto_6
    iget-object v5, v8, Lcom/inmobi/media/Ya;->h:Lcom/inmobi/media/bb;

    if-eqz v5, :cond_9

    .line 1325
    iget-object v7, v5, Lcom/inmobi/media/bb;->b:Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v16, v7

    goto :goto_8

    :cond_9
    :goto_7
    move-object/from16 v16, v6

    :goto_8
    if-eqz v5, :cond_a

    .line 1327
    iget-object v7, v5, Lcom/inmobi/media/bb;->e:Ljava/lang/String;

    move-object/from16 v17, v7

    goto :goto_9

    :cond_a
    move-object/from16 v17, v6

    :goto_9
    if-eqz v5, :cond_b

    .line 1329
    iget-object v6, v5, Lcom/inmobi/media/bb;->c:Ljava/lang/String;

    :cond_b
    move-object/from16 v18, v6

    if-eqz v5, :cond_c

    .line 1331
    iget-boolean v5, v5, Lcom/inmobi/media/bb;->g:Z

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    :goto_a
    move/from16 v19, v5

    .line 1332
    iget-object v5, v8, Lcom/inmobi/media/Ya;->f:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v20, v5

    .line 1333
    invoke-direct/range {v10 .. v20}, Lcom/inmobi/media/u6;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1334
    :goto_b
    iget-object v7, v8, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    move-object v0, v9

    move-object/from16 v5, p0

    .line 1335
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/o6;-><init>(Landroid/content/Context;Lcom/inmobi/media/p6;Lcom/inmobi/media/c2;Lcom/inmobi/media/Ra;Lcom/inmobi/media/Aa;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V

    return-object v9
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fireAdFailed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Ad is already unloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->n0:Z

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/fb;->a()Ljava/util/Map;

    move-result-object v1

    .line 8
    iget-wide v2, v0, Lcom/inmobi/media/fb;->b:J

    sget-object v0, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "latency"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 12
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 13
    const-string v2, "FireAdFailed"

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->g(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_0

    const-string v0, "mAdConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getAdPodHandler()Lcom/inmobi/media/Z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    return-object v0
.end method

.method public final getAdQualityManager()Lcom/inmobi/media/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-nez v0, :cond_0

    const-string v0, "adQualityManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final getAllowAutoRedirection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->U:Z

    return v0
.end method

.method public final getArea()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method public final getBeaconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->w0:Ljava/lang/String;

    return-object v0
.end method

.method public final getCloseAssetArea()Lcom/inmobi/media/Nd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->M0:Lcom/inmobi/media/Nd;

    return-object v0
.end method

.method public final getConfiguredArea()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/Ya;->e0:J

    return-wide v0
.end method

.method public getContainerContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getContentURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->c0:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreativeID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getCurrentPositionMonitor()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->F:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurrentRenderingPodAdIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/Q0;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/Q0;->l(Lcom/inmobi/media/Ya;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDataModel()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getDefaultPositionMonitor()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEmbeddedBrowserJSCallbacks()Lcom/inmobi/media/S3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p0:Lcom/inmobi/media/S3;

    return-object v0
.end method

.method public getFriendlyViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->Q:Ljava/util/Map;

    return-object v0
.end method

.method public final getFullScreenActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/media/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->J0:Lcom/inmobi/media/Sa;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/Ya;->j:B

    return v0
.end method

.method public final getLandingScheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getListener()Lcom/inmobi/media/ab;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->m:Lcom/inmobi/media/ab;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "listener getter "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1806
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_0
    sget-object v0, Lcom/inmobi/media/Ya;->O0:Lcom/inmobi/media/Ga;

    iput-object v0, p0, Lcom/inmobi/media/Ya;->m:Lcom/inmobi/media/ab;

    :cond_1
    return-object v0
.end method

.method public getMarkupType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D0:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarkupTypeAdUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D0:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaProcessor()Lcom/inmobi/media/f7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    return-object v0
.end method

.method public final getMinimumPixelsPainted()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/Ya;->f0:I

    return v0
.end method

.method public final getMraidJsString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "mraidJsString getter "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1826
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_0
    new-instance v0, Lcom/inmobi/media/U9;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mraid_js_store"

    invoke-direct {v0, v2, v3}, Lcom/inmobi/media/U9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1828
    const-string v2, "mraid_js_string"

    invoke-virtual {v0, v2}, Lcom/inmobi/media/U9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1831
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Returning default Mraid Js string."

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    :cond_1
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b=[];this.add=function(a){b.push(a);++this.count};this.remove=function(a){var f=!1,d=this;b=b.filter(function(b){if(b=b===a)--d.count,f=!0;return!b});return f};this.removeAll=function(){b=[];this.count=0};this.broadcast=function(a){b.forEach(function(f){try{f.apply({},a)}catch(b){}})};this.toString=function(){var c=[a,\":\"];b.forEach(function(a){c.push(\"|\",String(a),\"|\")});\nreturn c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&\nwindow.imraidview.startListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(f){this.log(f)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&\nwindow.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};\nthis.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(f){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var f=arguments[c],f=JSON.parse(f);b[c]=f}else b[c]=arguments[c];f=b[1];\"success\"!=f&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);\nwindow.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){f={};f.command=a;f.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b[arguments[c]]=\"\"+d);f.params=b}else for(var f=this.urlScheme+\"://\"+a,d,b=!0,c=1;c<arguments.length;c+=2)d=arguments[c+1],null!=d&&(b?(f+=\"?\",b=!1):f+=\"&\",f+=arguments[c]+\"=\"+escape(d));__im__iosNativeCall.executeNativeCall(f);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(f){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(f);return!1};a.popupBlocked=function(f){a.firePopupBlockedBeacon(f)};a.zeroPad=function(a){var c=\"\";10>a&&(c+=\"0\");return c+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\n\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"use CustomClose: \"+c)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,d){c?b.push(a):(eval(a),d&&(c=!0))};a.setOrientationProperties=function(f){try{f?(\"undefined\"!=typeof f.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=\nf.allowOrientationChange),\"undefined\"!=typeof f.forceOrientation&&(a.orientationProperties.forceOrientation=f.forceOrientation)):f=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(c){imraidview.showAlert(\"setOrientationProperties: \"+c+\", props = \"+f)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;\na.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"open: \"+c)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){if(imraidview.fallbackViewabilityEnabled())return imraidview.checkFallbackViewable();try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var c=\"\";null!=a&&(c=a);try{sdkController.playVideo(\"window.mraidview\",c)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(c){if(\"undefined\"===\ntypeof JSON){var b=\"\",e;if(\"undefined\"==typeof c.length)return a.stringifyArg(c);for(e=0;e<c.length;e++)0<e&&(b+=\",\"),b+=a.stringifyArg(c[e]);return b+\"]\"}return JSON.stringify(c)};a.stringifyArg=function(a){var c,b,g;b=typeof a;c=\"\";if(\"number\"===b||\"boolean\"===b)c+=args;else if(a instanceof Array)c=c+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;c+=\"{\";for(g in a)null!==a[g]&&(b||(c+=\",\"),c=c+\'\"\'+g+\'\":\',b=typeof a[g],c=\"number\"===b||\"boolean\"===b?c+a[g]:\"function\"===typeof a[g]?c+\'\"\"\':a[g]instanceof\nObject?c+this.stringify(args[i][g]):c+\'\"\'+a[g]+\'\"\',b=!1);c+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),c=c+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+c);return c};getPID=function(a){var c=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(c=a.id);return c};a.storePicture=function(c){console.log(\"bridge: storePicture\");if(\"string\"!=typeof c)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?\n(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",c);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,c){};a.fireMediaErrorEvent=function(a,c){};a.fireMediaTimeUpdateEvent=function(a,c,b){};a.fireMediaCloseEvent=function(a,c,b){};a.fireMediaVolumeChangeEvent=function(a,c,b){};\na.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)};a.unload=function(){try{sdkController.unload(\"window.mraidview\")}catch(a){}};a.getCurrentAppOrientation=function(){var c;switch(a.orientation){case 0:case 180:c=\"portrait\";break;case 90:case 270:c=\"landscape\";break;default:c=\"none\"}return{orientation:c,locked:!1}};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(c){imraidview.showAlert(\"executeNativeExpand: \"+\nc+\", URL = \"+a)}};a.setExpandProperties=function(c){try{c?this.props=c:c=null;if(\"undefined\"!=typeof c.lockOrientation&&null!=c.lockOrientation&&\"undefined\"!=typeof c.orientation&&null!=c.orientation){var b={};b.allowOrientationChange=!c.lockOrientation;b.forceOrientation=c.orientation;a.setOrientationProperties(b)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(c))}catch(e){imraidview.showAlert(\"executeNativesetExpandProperties: \"+e+\", props = \"+c)}};a.getExpandProperties=function(){try{return eval(\"(\"+\nsdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.resizeProps=null;a.setResizeProperties=function(c){var b,e;try{b=parseInt(c.width);e=parseInt(c.height);if(isNaN(b)||isNaN(e)||1>b||1>e)throw\"Invalid\";c.width=b;c.height=e;a.resizeProps=c;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(c))}catch(g){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+\nsdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(c){imraidview.showAlert(\"resize called in bridge\")}}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){imraidview.onUserInteraction();c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;c.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,c)}};b.getSdkVersionInt=function(){for(var a=imraid.getSdkVersion().split(\".\"),\nc=a.length,b=\"\",g=0;g<c;g++)b+=a[g];return parseInt(b)};b.firePopupBlockedBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var c={};c.trigger=a;inmobi.recordEvent(136,c)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",function(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\n\"Method not supported\",\"getExpandProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getExpandProperties is deprecated\",\"getExpandProperties\");return b.getExpandProperties()};a.setExpandProperties=function(c){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"setExpandProperties\"):(\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose),window.mraid.broadcastEvent(\"error\",\n\"MRAID setExpandProperties is deprecated\",\"setExpandProperties\"),b.setExpandProperties(c))};a.getResizeProperties=function(){if(1083<=b.getSdkVersionInt())return window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"getResizeProperties\"),null;window.mraid.broadcastEvent(\"error\",\"MRAID getResizeProperties is deprecated\",\"getResizeProperties\");return b.getResizeProperties()};a.setResizeProperties=function(a){1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\n\"setResizeProperties\"):(window.mraid.broadcastEvent(\"error\",\"MRAID setResizeProperties is deprecated\",\"setResizeProperties\"),b.setResizeProperties(a))};a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=function(a){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"expand\"):(window.mraid.broadcastEvent(\"error\",\"MRAID expand is deprecated\",\"expand\"),b.expand(a))}catch(c){window.mraid.broadcastEvent(\"error\",\n\"error\",\"expand\")}};a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"createCalendarEvent\")};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=function(){try{1083<=b.getSdkVersionInt()?window.mraid.broadcastEvent(\"error\",\"MRAID resize not supported\",\"resize\"):(window.mraid.broadcastEvent(\"error\",\n\"MRAID resize is deprecated\",\"resize\"),b.expand())}catch(a){window.mraid.broadcastEvent(\"error\",\"error\",\"expand\")}};a.getVersion=function(){return\"3.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):\nb.storePicture(c)};a.unload=function(){b.unload()};a.getCurrentAppOrientation=b.getCurrentAppOrientation;a.getLocation=function(){return null};a.getAudioVolume=b.getAudioVolume})();\n(function(){var a=window.imraidview={},b=!1;a.setOrientationProperties=function(c){try{c?(\"undefined\"!=typeof c.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=c.allowOrientationChange),\"undefined\"!=typeof c.forceOrientation&&(mraidview.orientationProperties.forceOrientation=c.forceOrientation),\"undefined\"!=typeof c.direction&&(mraidview.orientationProperties.direction=c.direction)):c=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+c)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var d={};d.name=a;var e=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);window.imraid.broadcastEvent(e,d)};a.fireMediaErrorEvent=function(a,b){var d={name:\"error\"};d.code=b;var e=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);window.imraid.broadcastEvent(e,\nd)};a.fireMediaTimeUpdateEvent=function(a,b,d){var e={name:\"timeupdate\",target:{}};e.target.currentTime=b;e.target.duration=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.saveContent=function(a,b,d){window.imraid.addEventListener(\"saveContent_\"+a,d);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",\na)};a.fireGalleryImageSelectedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"galleryImageSelected\",e)};a.fireCameraPictureCatpturedEvent=function(a,b,d){var e=new Image;e.src=\"data:image/jpeg;base64,\"+a;e.width=b;e.height=d;window.imraid.broadcastEvent(\"cameraPictureCaptured\",e)};a.fireMediaCloseEvent=function(a,b,d){var e={name:\"close\"};e.viaUserInteraction=b;e.target={};e.target.currentTime=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=\ntypeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireMediaVolumeChangeEvent=function(a,b,d){var e={name:\"volumechange\",target:{}};e.target.volume=b;e.target.muted=d;b=\"inmobi_media_\"+e.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,e)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=\nfunction(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(c,b){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",c,b):sdkController.openExternal(\"window.imraidview\",c)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(c){try{sdkController.log(\"window.imraidview\",c)}catch(b){a.showAlert(\"log: \"+b)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(c){try{sdkController.asyncPing(\"window.imraidview\",\nc)}catch(b){a.showAlert(\"asyncPing: \"+b)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};\na.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=function(){for(var c=a.getSdkVersion().split(\".\"),b=c.length,d=\"\",e=0;e<b;e++)d+=c[e];return parseInt(d)};a.getSdkVersionInt=getSdkVersionInt;a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");\nif(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(c,b,d,e){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"postToSocial\");a.log(\"Method postToSocial not supported\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",\nJSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(c){a.showAlert(\"getOrientation: \"+c)}};a.acceptAction=function(c){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"acceptAction: \"+b+\", params = \"+c)}};a.rejectAction=function(c){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(c))}catch(b){a.showAlert(\"rejectAction: \"+\nb+\", params = \"+c)}};a.updateToPassbook=function(c){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=function(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,d){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",a,b,d)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&\nsdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&\nsdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&sdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",a)};a.getRenderableAdIndexes=function(){try{if(917<=getSdkVersionInt())return sdkController.getRenderableAdIndexes(\"window.imraidview\")}catch(a){}return\"[]\"};a.getCurrentRenderingIndex=\nfunction(){try{if(917<=getSdkVersionInt())return sdkController.getCurrentRenderingIndex(\"window.imraidview\")}catch(a){}return-1};a.showAd=function(a){try{917<=getSdkVersionInt()&&sdkController.showAd(\"window.imraidview\",a)}catch(b){}};a.timeSinceShow=function(){try{if(917<=getSdkVersionInt())return sdkController.timeSinceShow(\"window.imraidview\")}catch(a){}return-1};a.getShowTimeStamp=function(){try{if(917<=getSdkVersionInt())return sdkController.getShowTimeStamp(\"window.imraidview\")}catch(a){}return-1};\na.closeAll=function(){try{917<=getSdkVersionInt()&&sdkController.closeAll(\"window.imraidview\")}catch(a){}};a.loadAd=function(a){try{917<=getSdkVersionInt()&&sdkController.loadAd(\"window.imraidview\",a)}catch(b){}};a.setAdContext=function(a){try{917<=getSdkVersionInt()&&sdkController.setAdContext(\"window.imraidview\",a)}catch(b){}};a.getAdContext=function(){try{if(917<=getSdkVersionInt())return sdkController.getAdContext(\"window.imraidview\")}catch(a){}return\"\"};a.openWithoutTracker=function(a){try{\"undefined\"==\ntypeof a&&(a=null),sdkController.openWithoutTracker(\"window.imraidview\",a)}catch(b){}};a.impressionRendered=function(){window.imraid.broadcastEvent(\"impressionRendered\")};a.customExpandInNative=function(a,b,d){try{void 0==a||\"string\"!=typeof a?console.log(\"url called with invalid params\"):void 0==b||\"number\"!=typeof b?console.log(\"screenPercentage called with invalid params\"):void 0==d||\"boolean\"!=typeof d?console.log(\"hideCloseButton called with invalid params\"):sdkController.customExpandInNative(\"window.imraidview\",\na,b,d)}catch(e){}};a.customExpand=function(b,f,d,e,g){try{void 0==d||\"number\"!=typeof d?console.log(\"screenPercentage called with invalid params\"):void 0==f||\"number\"!=typeof f?console.log(\"inputType called with invalid params\"):void 0==e||\"boolean\"!=typeof e?console.log(\"topNavBarVisible called with invalid params\"):void 0==g||\"boolean\"!=typeof g?console.log(\"bottomNavBarVisible called with invalid params\"):sdkController.customExpand(\"window.imraidview\",b,f,d,e,g)}catch(h){a.showAlert(\"executeNativeCustomExpand: \"+\nh+\", input = \"+b+\", inputType = \"+f+\", screenPercentage = \"+d+\", bottomNavBarVisible = \"+g+\", topNavBarVisible = \"+e)}};a.closeCustomExpand=function(){try{sdkController.closeCustomExpand(\"window.imraidview\")}catch(a){}};a.onGestureDetected=function(a,b){window.imraid.broadcastEvent(\"onGestureDetected\",a,b)};a.onUserLandingCompleted=function(){window.imraid.broadcastEvent(\"onUserLandingCompleted\")};a.onUserInteraction=function(){window.imraid.broadcastEvent(\"onUserInteraction\")};a.impressionFired=\nfunction(){try{sdkController.impressionFired(\"window.imraidview\")}catch(a){}};a.getMaxDeviceVolume=function(){try{return sdkController.getMaxDeviceVolume(\"window.imraidview\")}catch(a){return 15}};a.zoom=function(a){try{sdkController.zoom(\"window.imraidview\",a)}catch(b){}};a.onAudioStateChanged=function(a){try{sdkController.onAudioStateChanged(\"window.imraidview\",a)}catch(b){}};a.submitAdReport=function(a){try{sdkController.submitAdReport(\"window.imraidview\",void 0!=a.adQualityUrl?a.adQualityUrl:null,\nvoid 0!=a.enableUserAdReportScreenshot?a.enableUserAdReportScreenshot:null,void 0!=a.templateInfo?a.templateInfo:null)}catch(b){}};a.logTelemetryEvent=function(a){try{var b=void 0!=a.eventType?a.eventType:null,d=void 0!=a.payload?a.payload:null;a=null;null!=d&&(a=mraidview.stringify(d));sdkController.logTelemetryEvent(\"window.imraidview\",b,a)}catch(e){}};a.onUserAudioMuteInteraction=function(a){try{sdkController.onUserAudioMuteInteraction(\"window.imraidview\",a)}catch(b){}};a.enableFallbackViewabilityFunctionality=\nfunction(){b=!0;a.checkFallbackViewable()&&window.mraid.broadcastEvent(\"viewableChange\",!0);mraid.addEventListener(\"sizeChange\",function(){window.mraid.broadcastEvent(\"viewableChange\",a.checkFallbackViewable())})};a.checkFallbackViewable=function(){try{var b=mraidview.getCurrentPosition(),f=b.height;return 40<=b.width&&40<=f?!0:!1}catch(d){a.showAlert(\"checkFallbackViewable: \"+d)}};a.fallbackViewabilityEnabled=function(){return b};a.getSafeArea=function(){try{return JSON.parse(sdkController.getSafeArea(\"window.imraidview\"))}catch(a){return null}}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var g=arguments.length,h,k=null;if(3>g){if(\"function\"===typeof arguments[g-1])h=arguments[g-1];else return;k={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],k={reason:11,url:arguments[1]});\"function\"!==!h&&(k?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(k))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,c){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,c)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):\nb.updateToPassbook(c))};a.postToSocial=function(a,c,e,g){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,c,e,g)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.skoverlay=b.skoverlay;a.skoverlayWithSkan=b.skoverlayWithSkan;a.zoom=b.zoom;a.dismissSKOverlay=b.dismissSKOverlay;a.supports=function(a){return b.supports(a)};a.isDeviceMuted=\nfunction(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.getRenderableAdIndexes=b.getRenderableAdIndexes;a.getCurrentRenderingIndex=b.getCurrentRenderingIndex;a.showAd=\nb.showAd;a.timeSinceShow=b.timeSinceShow;a.closeAll=b.closeAll;a.loadAd=b.loadAd;a.setAdContext=b.setAdContext;a.getAdContext=b.getAdContext;a.getShowTimeStamp=b.getShowTimeStamp;a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker;\na.openWithoutTracker=b.openWithoutTracker;a.impressionRendered=b.impressionRendered;a.onGestureDetected=b.onGestureDetected;a.onUserLandingCompleted=b.onUserLandingCompleted;a.customExpand=b.customExpand;a.closeCustomExpand=b.closeCustomExpand;a.customExpandInNative=b.customExpandInNative;a.impressionFired=b.impressionFired;a.getImraidVersion=b.getImraidVersion;a.getMaxDeviceVolume=b.getMaxDeviceVolume;a.onAudioStateChanged=b.onAudioStateChanged;a.onUserAudioMuteInteraction=b.onUserAudioMuteInteraction;\na.submitAdReport=b.submitAdReport;a.enableFallbackViewabilityFunctionality=b.enableFallbackViewabilityFunctionality;a.logTelemetryEvent=b.logTelemetryEvent;a.getSafeArea=b.getSafeArea;a.onReceviedSKANCallback=b.onReceviedSKANCallback;a.getOpenMode=b.getOpenMode;try{a.addEventListener(\"onUserLandingCompleted\",function(){1080>b.getSdkVersionInt()&&a.broadcastEvent(\"onUserLandingInitialized\")})}catch(c){}})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(f){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var d=-1;try{d=a.indexOf(b)}catch(e){}return d};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,f,d){if(!imIsObjValid(f)||!imIsObjValid(d))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+f+\",\"+d):a+(\"&u-tap-o=\"+f+\",\"+d));return a};b.performAdClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;if(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(e)?imIsObjValid(d)?(l=e.url,q=e.fallbackUrl,p=e.urlType,g=d.url,h=d.pingWV,k=d.fr):(l=e.url,p=e.urlType):(l=d.url,p=d.urlType);d=b.getPlatform();try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=!0;if(0>h||1<h)h=!0;if(\"number\"!=typeof p||null==p)p=0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(g)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==d?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+d);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,f){f=f||event;if(imIsObjValid(a)){var d=a.clickConfig,e=a.landingConfig;\nif(!imIsObjValid(d)&&!imIsObjValid(e))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var g=null,h=null,k=null,m=null,n=null;if(imIsObjValid(f))try{m=f.changedTouches[0].pageX,n=f.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(d)&&(g=d.url,h=d.pingWV,k=d.fr);try{if(\"boolean\"!=typeof k&&\"number\"!=typeof k||null==k)k=!0;if(0>k||1<k)k=!0;if(\"boolean\"!=typeof h&&\"number\"!=typeof h||null==h)h=\n!0;if(0>h||1<h)h=!0;g=b.appendTapParams(g,m,n);imIsObjValid(g)?!0==h?b.pingInWebView(g,k):b.ping(g,k):b.log(\"clickurl provided is null.\");b.onUserInteraction(e)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){console.log(\"openEmbedded is deprecated, will be removed in future version\");\nmraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};b.openExternal=function(b,f){console.log(\"openExternal is deprecated, will be removed in future version\");mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,f)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=\nfunction(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "Returning fetched Mraid Js string."

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getOrientationProperties()Lcom/inmobi/media/K9;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "getOrientationProperties "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1665
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->r0:Lcom/inmobi/media/K9;

    return-object v0
.end method

.method public final getPlacementId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/Ya;->L:J

    return-wide v0
.end method

.method public getPlacementType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/Ya;->b:B

    return v0
.end method

.method public getReferenceContainer()Lcom/inmobi/media/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->S:Lcom/inmobi/media/x;

    return-object v0
.end method

.method public final getRenderableAdIndexes()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/Q0;

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->N()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_0

    const-string v0, "mAdConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getSafeArea()Lorg/json/JSONObject;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->y0:Lcom/inmobi/media/Pd;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/inmobi/media/N3;->f()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/inmobi/media/N3;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Od;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/Od;->a()Lorg/json/JSONObject;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getShouldFireLandingPageBeacons()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->x0:Z

    return v0
.end method

.method public final getShowTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/Q0;

    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->O()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTelemetryManagerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/inmobi/media/S0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->A0:Ljava/util/Map;

    return-object v0
.end method

.method public getTelemetryOnAdImpression()Lcom/inmobi/media/rc;
    .locals 5

    .line 1
    new-instance v0, Lcom/inmobi/media/rc;

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getTelemetryManagerMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "AdImpressionSuccessful"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/S0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getMarkupType()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/media/rc;-><init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUnloaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    return v0
.end method

.method public final getVISIBILITY_CHANGE_LISTENER()Lcom/inmobi/media/rd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->G0:Lcom/inmobi/media/Ja;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTouchTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/Ya;->g:J

    return-wide v0
.end method

.method public getViewableAd()Lcom/inmobi/media/md;
    .locals 10

    const-string v0, "deferred"

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v4, "viewableAd getter "

    invoke-static {p0, v3, v2, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1398
    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    if-nez v1, :cond_8

    .line 1400
    new-instance v1, Lcom/inmobi/media/C4;

    .line 1401
    iget-byte v4, p0, Lcom/inmobi/media/Ya;->j:B

    .line 1402
    iget-object v5, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    .line 1403
    iget v6, p0, Lcom/inmobi/media/Ya;->i0:I

    .line 1404
    iget v7, p0, Lcom/inmobi/media/Ya;->j0:I

    .line 1405
    invoke-direct {p0}, Lcom/inmobi/media/Ya;->getVisibilityTrackingMinPercentage()I

    move-result v8

    .line 1406
    iget-object v9, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    move-object v3, v1

    .line 1407
    invoke-direct/range {v3 .. v9}, Lcom/inmobi/media/C4;-><init>(BLjava/lang/String;IIILcom/inmobi/media/f5;)V

    .line 1416
    new-instance v3, Lcom/inmobi/media/q5;

    new-instance v4, Lcom/inmobi/media/nd;

    invoke-direct {v4, p0}, Lcom/inmobi/media/nd;-><init>(Lcom/inmobi/media/Ya;)V

    iget-object v5, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-direct {v3, p0, v4, v1, v5}, Lcom/inmobi/media/q5;-><init>(Lcom/inmobi/media/Ya;Lcom/inmobi/media/nd;Lcom/inmobi/media/C4;Lcom/inmobi/media/f5;)V

    iput-object v3, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    .line 1418
    iget-object v1, p0, Lcom/inmobi/media/Ya;->c:Ljava/util/Set;

    if-eqz v1, :cond_8

    .line 1419
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/Hc;

    .line 1420
    :try_start_0
    iget-byte v4, v3, Lcom/inmobi/media/Hc;->a:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1421
    iget-object v4, v3, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v5, "omidAdSession"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/inmobi/media/z9;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v4, Lcom/inmobi/media/z9;

    goto :goto_1

    :cond_2
    move-object v4, v6

    .line 1423
    :goto_1
    iget-object v5, v3, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 1425
    :goto_2
    iget-object v3, v3, Lcom/inmobi/media/Hc;->b:Ljava/util/HashMap;

    const-string v7, "customReferenceData"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_4

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    :cond_4
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 1429
    iget-object v3, p0, Lcom/inmobi/media/Ya;->c0:Ljava/lang/String;

    .line 1430
    sget-object v5, Lcom/inmobi/media/G9;->a:Lcom/inmobi/media/H9;

    .line 1431
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1432
    const-string v7, "webView"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1467
    iget-object v5, v5, Lcom/inmobi/media/H9;->b:Lcom/iab/omid/library/inmobi/adsession/Partner;

    .line 1468
    invoke-static {v5, p0, v3, v6}, Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/inmobi/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    move-result-object v3

    const-string v5, "createHtmlAdSessionContext(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_5

    goto :goto_3

    .line 1469
    :cond_5
    iput-object v3, v4, Lcom/inmobi/media/z9;->c:Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 1470
    new-instance v3, Lcom/inmobi/media/D9;

    .line 1471
    iget-object v5, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    .line 1472
    invoke-direct {v3, p0, v5, v4, v6}, Lcom/inmobi/media/D9;-><init>(Lcom/inmobi/media/x;Lcom/inmobi/media/md;Lcom/inmobi/media/z9;Lcom/inmobi/media/f5;)V

    iput-object v3, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    goto :goto_0

    .line 1476
    :cond_7
    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_1

    .line 1477
    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    const-string v5, "Did not find a OMID ad session; the IAB decorator will not be applied."

    .line 1479
    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 1487
    iget-object v4, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v4, :cond_1

    .line 1488
    sget-object v5, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1489
    const-string v6, "Exception occurred while creating the HTML viewable ad : "

    invoke-static {v5, v2, v6}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1490
    invoke-static {v3, v6}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 2930
    check-cast v4, Lcom/inmobi/media/g5;

    invoke-virtual {v4, v5, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2938
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/Ya;->W:Lcom/inmobi/media/md;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getViewableFrameArray()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->d0:[I

    return-object v0
.end method

.method public final getWindowInsetListener()Lcom/inmobi/media/Md;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->C0:Lcom/inmobi/media/Xa;

    return-object v0
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "fireAdReady called on destroyed view"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    const-string v2, "fireAdReady "

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Ad is already unloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->O:Lcom/inmobi/media/fb;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/fb;->a()Ljava/util/Map;

    move-result-object v3

    .line 11
    iget-wide v4, v0, Lcom/inmobi/media/fb;->b:J

    sget-object v0, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "latency"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 15
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 16
    const-string v4, "FireAdReady"

    invoke-static {v4, v3, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 18
    invoke-static {p0, v3, v1, v2}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2299
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x1

    .line 2300
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->m0:Z

    .line 2301
    iget-byte v0, p0, Lcom/inmobi/media/Ya;->j:B

    if-nez v0, :cond_6

    .line 2302
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->j()V

    .line 2318
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->y()V

    .line 2319
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->h(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "fireClickTrackers "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2354
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_1

    .line 2356
    iget-object v2, v0, Lcom/inmobi/media/Z2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2357
    iget-object v2, v0, Lcom/inmobi/media/Z2;->d:Lcom/inmobi/media/d3;

    const/4 v3, 0x1

    .line 2358
    iput v3, v2, Lcom/inmobi/media/d3;->g:I

    .line 2359
    iget-object v0, v0, Lcom/inmobi/media/Z2;->c:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2361
    const-string v3, "fireOnUserInteraction "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2362
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :cond_2
    const-string v0, "window.imraidview.onUserInteraction();"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->b(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "fireImpression "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1552
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v2, "video"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v2, "audio"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1554
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1555
    const-string v3, "recordContextualData "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1556
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->I0:Lcom/inmobi/media/Z2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/Z2;->a()V

    .line 1558
    :cond_3
    const-string v0, "window.imraidview.impressionRendered();"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->c(Lcom/inmobi/media/Ya;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "hasUserInteracted "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2133
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2134
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getAutoRedirectionEnforcement()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->U:Z

    if-nez v0, :cond_2

    .line 2138
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getViewTouchTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getUserTouchResetTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMraid3Config()Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->getBannerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMraid3Config()Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->getInterstitialEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "onUserLandingCompleted "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    const-string v0, "window.imraid.broadcastEvent(\'onUserLandingCompleted\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "processUnload "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1713
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "unload called on destroyed view"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1718
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1719
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "mraid 3.0 is not enabled"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1722
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->n0:Z

    if-eqz v0, :cond_6

    .line 1723
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "unload called on failed view"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 1726
    :cond_6
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 1727
    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->z0:Z

    .line 1728
    sget-object v0, Lcom/inmobi/media/m4;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/P6;

    .line 1729
    new-instance v1, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/Ya;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    const-string v2, "runnable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    iget-object v0, v0, Lcom/inmobi/media/P6;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setCurrentPosition "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    const/4 v0, 0x2

    .line 773
    new-array v0, v0, [I

    .line 774
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 776
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v3, "x"

    aget v4, v0, v1

    int-to-float v4, v4

    .line 777
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/inmobi/media/y2;->b(F)I

    move-result v4

    .line 778
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 779
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const-string v3, "y"

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    .line 780
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/inmobi/media/y2;->b(F)I

    move-result v0

    .line 781
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 782
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 783
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/inmobi/media/y2;->b(F)I

    move-result v0

    .line 784
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 785
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/inmobi/media/y2;->b(F)I

    move-result v2

    .line 786
    iget-object v3, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    const-string v4, "width"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->u:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    const-string v3, "height"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :catch_0
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_1
    iput-boolean v1, p0, Lcom/inmobi/media/Ya;->w:Z

    .line 792
    iget-object v1, p0, Lcom/inmobi/media/Ya;->F:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 793
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onAttachedToWindow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "onAttachedToWindow "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 980
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 982
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    if-eqz v0, :cond_3

    .line 983
    iget-object v2, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/inmobi/media/S6;->b()V

    .line 984
    :cond_1
    iget-object v2, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/inmobi/media/S6;->b()V

    .line 985
    :cond_2
    iget-object v0, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/S6;->b()V

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 987
    const-string v3, "setIsViewHardwareAccelerated "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/media/Ya;->r:Z

    .line 990
    iget-object v0, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 991
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    .line 993
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->v()V

    .line 994
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 995
    const-string v3, "startTrackingExposure "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 996
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->e:Z

    if-nez v0, :cond_8

    .line 998
    new-instance v0, Lcom/inmobi/media/I;

    .line 1000
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getMraid3Config()Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->getExposureChangeInterval()J

    move-result-wide v4

    .line 1001
    iget-object v6, p0, Lcom/inmobi/media/Ya;->h0:Lcom/inmobi/media/Qa;

    .line 1002
    iget-object v7, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    move-object v2, v0

    move-object v3, p0

    .line 1003
    invoke-direct/range {v2 .. v7}, Lcom/inmobi/media/I;-><init>(Lcom/inmobi/media/Ya;JLcom/inmobi/media/Qa;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->v0:Lcom/inmobi/media/I;

    goto :goto_1

    .line 1010
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_9

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "exposureTracker is already initialized"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->v0:Lcom/inmobi/media/I;

    if-eqz v0, :cond_c

    .line 1013
    iget-object v2, v0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    const-string v3, "AdExposureTracker"

    if-eqz v2, :cond_b

    .line 1014
    new-instance v2, Lcom/inmobi/media/F;

    invoke-direct {v2, v0}, Lcom/inmobi/media/F;-><init>(Lcom/inmobi/media/I;)V

    invoke-static {v2}, Lcom/inmobi/media/z2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 1019
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1020
    iget-object v5, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz v5, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error starting exposure tracking - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lcom/inmobi/media/g5;

    invoke-virtual {v5, v3, v6}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_a
    iget-object v0, v0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1022
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v0, Lcom/inmobi/media/d2;

    invoke-direct {v0, v2}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 1023
    const-string v2, "event"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    sget-object v2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v2, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    goto :goto_2

    .line 1102
    :cond_b
    iget-object v0, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_c

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "Exposure tracking is already started"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_d

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1104
    const-string v3, "startTrackingAudioVolume "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->e:Z

    if-nez v0, :cond_e

    .line 1107
    sget-object v0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    iget-object v0, p0, Lcom/inmobi/media/Ya;->g0:Lcom/inmobi/media/Ka;

    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-static {v2, v0}, Lcom/inmobi/media/s;->a(Lcom/inmobi/media/f5;Lcom/inmobi/media/Ka;)V

    .line 1108
    :cond_e
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_f

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "==== CHECKPOINT REACHED - VISIBLE ===="

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_f
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_10

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0}, Lcom/inmobi/media/g5;->b()V

    :cond_10
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "onDetachedFromWindow "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1032
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/16 v4, 0x8

    const/16 v5, 0xc

    .line 1034
    invoke-static {v0, v4, v3, v2, v5}, Lcom/inmobi/media/U3;->a(Lcom/inmobi/media/U3;IZLjava/lang/String;I)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->p:Lcom/inmobi/media/f7;

    if-eqz v0, :cond_4

    .line 1036
    iget-object v4, v0, Lcom/inmobi/media/f7;->d:Lcom/inmobi/media/S6;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/inmobi/media/S6;->a()V

    .line 1037
    :cond_2
    iget-object v4, v0, Lcom/inmobi/media/f7;->e:Lcom/inmobi/media/S6;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/inmobi/media/S6;->a()V

    .line 1038
    :cond_3
    iget-object v0, v0, Lcom/inmobi/media/f7;->f:Lcom/inmobi/media/S6;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/media/S6;->a()V

    .line 1039
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v5, "Detached from window"

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-nez v0, :cond_6

    const-string v0, "adQualityManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v0

    .line 1041
    :goto_0
    iget-object v0, v2, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1042
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1043
    const-string v0, "session end is already triggered"

    invoke-virtual {v2, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1046
    :cond_7
    iget-object v0, v2, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1047
    const-string v0, "config kill switch - false. ad quality will skip"

    invoke-virtual {v2, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1050
    :cond_8
    iget-object v0, v2, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-nez v0, :cond_9

    .line 1051
    const-string v0, "setup not done. ignore trigger"

    invoke-virtual {v2, v0}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1054
    :cond_9
    iget-object v0, v2, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 1055
    invoke-virtual {v2, v0}, Lcom/inmobi/media/n0;->a(Z)V

    .line 1056
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1057
    sget-object v0, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1058
    new-instance v2, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/Ya;)V

    .line 1062
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 1063
    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1069
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->v()V

    .line 1070
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->u()V

    .line 1071
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_b

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1072
    const-string v3, "stopTrackingAudioVolume "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1073
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_b
    sget-object v0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    iget-object v0, p0, Lcom/inmobi/media/Ya;->g0:Lcom/inmobi/media/Ka;

    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-static {v2, v0}, Lcom/inmobi/media/s;->c(Lcom/inmobi/media/f5;Lcom/inmobi/media/Ka;)V

    .line 1075
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1077
    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_c

    .line 1078
    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1079
    const-string v4, "Detaching WebView from window encountered an error ( "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2134
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "TAG"

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Double tap gesture is disabled from config"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDoubleTapEvent detected \n "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/inmobi/media/Ya;->setViewTouchTimestamp(J)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/inmobi/media/y2;->c(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/y2;->c(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v3, "Exception in onDoubleTap"

    invoke-virtual {v1, v4, v3, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 15
    :cond_3
    :goto_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.imraidview.onGestureDetected(\'1\', \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TAG"

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "LongPress gesture is disabled from config"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLongPress detected \n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Lcom/inmobi/media/y2;->c(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/y2;->c(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v1, "Exception in onLongPress"

    invoke-virtual {v2, v3, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.imraidview.onGestureDetected(\'5\', \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TAG"

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "Click gesture is disabled from config"

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSingleTapConfirmed detected \n "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/y2;->c(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Lcom/inmobi/media/y2;->c(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v2, "Exception in onSingleTapConfirmed"

    invoke-virtual {v3, v4, v2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.imraidview.onGestureDetected(\'0\', \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return v1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSingleTapUp detected \n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Ya;->setViewTouchTimestamp(J)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "onSizeChanged "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 863
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 867
    iget-object p3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p3, :cond_1

    sget-object p4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSizeChanged ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p3, Lcom/inmobi/media/g5;

    invoke-virtual {p3, p4, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    int-to-float p1, p1

    .line 868
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result p3

    div-float/2addr p1, p3

    invoke-static {p1}, Lcom/inmobi/media/y2;->b(F)I

    move-result p1

    int-to-float p2, p2

    .line 869
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p2}, Lcom/inmobi/media/y2;->b(F)I

    move-result p2

    .line 870
    iget-object p3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p3, :cond_2

    sget-object p4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fireSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p3, Lcom/inmobi/media/g5;

    invoke-virtual {p3, p4, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "window.mraidview.broadcastEvent(\'sizeChange\',"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p3, 0x2c

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const-string v1, "TAG"

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 10
    const-string v4, "onTouchEvent "

    invoke-static {p0, v3, v1, v4}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_1
    iget-byte v0, p0, Lcom/inmobi/media/Ya;->b:B

    if-ne v0, v2, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k0:Lcom/inmobi/media/Z6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Z6;->a(Landroid/view/MotionEvent;)V

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->l0:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Ya;->setViewTouchTimestamp(J)V

    .line 1031
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1032
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->u0:Z

    if-nez v0, :cond_5

    .line 1033
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onTouchEvent Invalid Coordinates "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_4
    iput-boolean v2, p0, Lcom/inmobi/media/Ya;->u0:Z

    .line 1036
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowFocusChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/inmobi/media/C4;->k:Lcom/inmobi/media/z4;

    .line 7
    iget v1, p0, Lcom/inmobi/media/Ya;->j0:I

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, p0, p0, v1, v2}, Lcom/inmobi/media/z4;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget v1, p0, Lcom/inmobi/media/Ya;->j0:I

    .line 12
    invoke-virtual {p1, p0, p0, v1}, Lcom/inmobi/media/z4;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-ne v1, v0, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->c(Z)V

    :goto_1
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowVisibilityChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/inmobi/media/Ya;->getVisibilityTrackingMinPercentage()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/inmobi/media/C4;->k:Lcom/inmobi/media/z4;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p0, p1, v3}, Lcom/inmobi/media/z4;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v2, p0, p0, p1}, Lcom/inmobi/media/z4;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p1

    .line 12
    :goto_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Ya;->c(Z)V

    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setDefaultPosition "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 736
    new-array v0, v0, [I

    .line 737
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    .line 738
    iget-object v1, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 739
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    :cond_3
    const/4 v1, 0x0

    if-eqz v2, :cond_a

    .line 742
    iget-object v2, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 744
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v3, "x"

    aget v4, v0, v1

    int-to-float v4, v4

    .line 745
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/inmobi/media/y2;->b(F)I

    move-result v4

    .line 746
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    :cond_5
    iget-object v2, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    const-string v3, "y"

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    .line 748
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/inmobi/media/y2;->b(F)I

    move-result v0

    .line 749
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 750
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    int-to-float v0, v0

    .line 751
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/inmobi/media/y2;->b(F)I

    move-result v0

    .line 752
    iget-object v2, p0, Lcom/inmobi/media/Ya;->l:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_2
    int-to-float v2, v2

    .line 753
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/inmobi/media/y2;->b(F)I

    move-result v2

    .line 754
    iget-object v3, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v3, :cond_9

    const-string v4, "width"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 755
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    const-string v3, "height"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 760
    :cond_a
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    :cond_b
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 763
    :cond_d
    iget-object v0, p0, Lcom/inmobi/media/Ya;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :catch_0
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_1
    iput-boolean v1, p0, Lcom/inmobi/media/Ya;->v:Z

    .line 769
    iget-object v1, p0, Lcom/inmobi/media/Ya;->E:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 770
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setFallbackImpressionMinPercentageViewed "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1137
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v1, "video"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mAdConfig"

    if-eqz v0, :cond_2

    .line 1140
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getVideoImpressionMinPercentageViewed()I

    move-result v0

    goto :goto_4

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v3, "audio"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1142
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1143
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getAudioImpressionMinPercentageViewed()I

    move-result v0

    goto :goto_4

    .line 1145
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebImpressionMinPercentageViewed()I

    move-result v0

    goto :goto_4

    .line 1148
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebImpressionMinPercentageViewed()I

    move-result v0

    .line 1149
    :goto_4
    iput v0, p0, Lcom/inmobi/media/Ya;->j0:I

    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v1, "video"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mAdConfig"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getVideoImpressionMinTimeViewed()I

    move-result v0

    goto :goto_4

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q0:Ljava/lang/String;

    const-string v3, "audio"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getAudioImpressionMinTimeViewed()I

    move-result v0

    goto :goto_4

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebImpressionMinTimeViewed()I

    move-result v0

    goto :goto_4

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebImpressionMinTimeViewed()I

    move-result v0

    .line 11
    :goto_4
    iput v0, p0, Lcom/inmobi/media/Ya;->i0:I

    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setFallbackImpressionParams "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->r()V

    .line 1123
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->q()V

    .line 1124
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->t()V

    return-void
.end method

.method public final setAdPodHandler(Lcom/inmobi/media/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->V:Lcom/inmobi/media/Z;

    return-void
.end method

.method public final setAdSize(Ljava/lang/String;)V
    .locals 4

    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setAdSize "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    sget-object v0, Lcom/inmobi/media/N3;->a:Lcom/inmobi/media/O3;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 2529
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2530
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 2531
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 2532
    iput v0, p0, Lcom/inmobi/media/Ya;->b0:I

    .line 2535
    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 4393
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    .line 4394
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    .line 4395
    invoke-static {}, Lcom/inmobi/media/N3;->b()F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 4396
    iget v0, p0, Lcom/inmobi/media/Ya;->b0:I

    mul-int/2addr p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/inmobi/media/Ya;->e0:J

    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->P:Ljava/lang/String;

    return-void
.end method

.method public final setAllowAutoRedirection(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->U:Z

    return-void
.end method

.method public final setAndUpdateViewState(Ljava/lang/String;)V
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "setAndUpdateViewState "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    .line 1813
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 1814
    const-string v3, "set state:"

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3625
    iget-object v4, p0, Lcom/inmobi/media/Ya;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ENGLISH"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3627
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fireStateChange "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.broadcastEvent(\'stateChange\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\');"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ya;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setBeaconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->w0:Ljava/lang/String;

    return-void
.end method

.method public final setBlobProvider(Lcom/inmobi/media/Z1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setBlobProvider "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/Ya;->R:Lcom/inmobi/media/Z1;

    return-void
.end method

.method public final setCloseAssetArea(Lcom/inmobi/media/Nd;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->H0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/y2;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/inmobi/media/Nd;

    .line 3
    iget v1, p1, Lcom/inmobi/media/Nd;->b:I

    .line 4
    iget p1, p1, Lcom/inmobi/media/Nd;->c:I

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v2, v1, p1, v2}, Lcom/inmobi/media/Nd;-><init>(IIII)V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->M0:Lcom/inmobi/media/Nd;

    :cond_1
    return-void
.end method

.method public final setCloseEndCardTracker(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v3, "setCloseEndCardTracker "

    invoke-static {p0, v2, v1, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2221
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getReferenceContainer()Lcom/inmobi/media/x;

    move-result-object v0

    .line 2223
    instance-of v2, v0, Lcom/inmobi/media/A8;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2224
    check-cast v0, Lcom/inmobi/media/A8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2225
    iget-object v2, v0, Lcom/inmobi/media/A8;->W:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/inmobi/media/A8;->X:Ljava/lang/String;

    .line 2226
    const-string v4, "Setting close end tracker with URL : "

    invoke-static {v3, v1, v4, p1}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2756
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/A8;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    .line 2758
    instance-of v1, v0, Lcom/inmobi/media/M8;

    if-eqz v1, :cond_3

    .line 2759
    check-cast v0, Lcom/inmobi/media/M8;

    invoke-virtual {v0}, Lcom/inmobi/media/M8;->getVideoView()Lcom/inmobi/media/L8;

    move-result-object v0

    .line 2760
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/C8;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/inmobi/media/C8;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 2762
    invoke-virtual {v0}, Lcom/inmobi/media/C8;->d()Lcom/inmobi/media/kd;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/inmobi/media/jd;

    .line 2763
    iget-object v0, v0, Lcom/inmobi/media/jd;->j:Lcom/inmobi/media/ad;

    if-eqz v0, :cond_3

    .line 2764
    new-instance v1, Lcom/inmobi/media/u8;

    const/4 v3, 0x0

    const-string v4, "closeEndCard"

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/inmobi/media/u8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 2765
    const-string p1, "tracker"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2946
    iget-object p1, v0, Lcom/inmobi/media/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final setConfiguredArea(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/inmobi/media/Ya;->e0:J

    return-void
.end method

.method public final setContentURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->c0:Ljava/lang/String;

    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->M:Ljava/lang/String;

    return-void
.end method

.method public final setDisableBackButton(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setDisableBackButton "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1675
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_0
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->B:Z

    return-void
.end method

.method public final setEmbeddedBrowserJSCallbacks(Lcom/inmobi/media/S3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->p0:Lcom/inmobi/media/S3;

    return-void
.end method

.method public setExitAnimation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setExitAnimation "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1779
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    :cond_0
    iput p1, p0, Lcom/inmobi/media/Ya;->K:I

    return-void
.end method

.method public setFriendlyViews(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "+",
            "Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->Q:Ljava/util/Map;

    return-void
.end method

.method public setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setFullScreenActivityContext "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 799
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    .line 801
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->x()V

    .line 802
    iget-boolean v0, p0, Lcom/inmobi/media/Ya;->e:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/inmobi/media/Ya;->y0:Lcom/inmobi/media/Pd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/Pd;->a()V

    .line 805
    :cond_1
    new-instance v0, Lcom/inmobi/media/Pd;

    iget-object v1, p0, Lcom/inmobi/media/Ya;->C0:Lcom/inmobi/media/Xa;

    iget-object v2, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    invoke-direct {v0, p1, v1, v2}, Lcom/inmobi/media/Pd;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Md;Lcom/inmobi/media/f5;)V

    iput-object v0, p0, Lcom/inmobi/media/Ya;->y0:Lcom/inmobi/media/Pd;

    :cond_2
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->H0:Z

    return-void
.end method

.method public setImpressionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->d:Ljava/lang/String;

    return-void
.end method

.method public final setLandingPageTelemetryControlInfoOnWebViewClient(Lcom/inmobi/media/t6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->o0:Lcom/inmobi/media/U3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, v0, Lcom/inmobi/media/U3;->i:Lcom/inmobi/media/t6;

    .line 3
    new-instance v1, Lcom/inmobi/media/q6;

    invoke-direct {v1, p1, v0}, Lcom/inmobi/media/q6;-><init>(Lcom/inmobi/media/t6;Lcom/inmobi/media/U3;)V

    iput-object v1, v0, Lcom/inmobi/media/U3;->j:Lcom/inmobi/media/q6;

    :goto_0
    return-void
.end method

.method public final setLandingScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->f:Ljava/lang/String;

    return-void
.end method

.method public final setMarkupTypeAdUnit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->D0:Ljava/lang/String;

    return-void
.end method

.method public final setOrientationProperties(Lcom/inmobi/media/K9;)V
    .locals 4

    const-string v0, "orientationProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setOrientationProperties "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1659
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/Ya;->r0:Lcom/inmobi/media/K9;

    .line 1661
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->x()V

    return-void
.end method

.method public final setPlacementId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/Ya;->L:J

    return-void
.end method

.method public final setPreloadView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->T:Z

    return-void
.end method

.method public setReferenceContainer(Lcom/inmobi/media/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->S:Lcom/inmobi/media/x;

    return-void
.end method

.method public final setRenderViewEventListener(Lcom/inmobi/media/ab;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setRenderViewEventListener "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_0
    iput-object p1, p0, Lcom/inmobi/media/Ya;->m:Lcom/inmobi/media/ab;

    return-void
.end method

.method public final setScrollable(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setScrollable "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 1318
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1319
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public final setShouldFireLandingPageBeacons(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->x0:Z

    return-void
.end method

.method public setTelemetryManagerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/inmobi/media/S0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ya;->A0:Ljava/util/Map;

    return-void
.end method

.method public final setUnloaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->z0:Z

    return-void
.end method

.method public final setUseCustomClose(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setUseCustomClose "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/inmobi/media/Ya;->x:Z

    return-void
.end method

.method public setViewTouchTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/Ya;->g:J

    return-void
.end method

.method public final setWatermark(Lcom/inmobi/ads/WatermarkData;)V
    .locals 3

    const-string v0, "watermarkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getWatermarkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/inmobi/ads/WatermarkData;->getWatermarkBase64EncodedString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "decode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/Ya;[BLcom/inmobi/ads/WatermarkData;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "Watermark disabled from config. ignoring..."

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final stopLoading()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "stopLoading "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1478
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "setFallbackImpressionType "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getAdType()Ljava/lang/String;

    move-result-object v0

    .line 1130
    const-string v1, "banner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "mAdConfig"

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getBannerImpressionType()B

    move-result v0

    goto :goto_3

    .line 1131
    :cond_2
    const-string v1, "audio"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getAudioImpressionType()B

    move-result v0

    goto :goto_3

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/Ya;->q:Lcom/inmobi/commons/core/configs/AdConfig;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getInterstitialImpressionType()B

    move-result v0

    .line 1133
    :goto_3
    iput-byte v0, p0, Lcom/inmobi/media/Ya;->j:B

    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "stopTrackingExposure "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 842
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->v0:Lcom/inmobi/media/I;

    if-eqz v0, :cond_2

    .line 844
    iget-object v1, v0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const-string v2, "AdExposureTracker"

    if-eqz v1, :cond_1

    .line 845
    new-instance v1, Lcom/inmobi/media/G;

    invoke-direct {v1, v0}, Lcom/inmobi/media/G;-><init>(Lcom/inmobi/media/I;)V

    invoke-static {v1}, Lcom/inmobi/media/z2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 851
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 852
    iget-object v0, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error stopping exposure tracking - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Exposure tracking is already stopped"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/x2;

    .line 2
    iget-boolean v1, p0, Lcom/inmobi/media/Ya;->x:Z

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/inmobi/media/Ya;->A:Z

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    .line 3
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/inmobi/media/x2;-><init>(Lcom/inmobi/media/Ya;ZZLcom/inmobi/media/f5;)V

    .line 5
    iget-object v1, p0, Lcom/inmobi/media/Ya;->M0:Lcom/inmobi/media/Nd;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/Nd;)V

    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/ab;->d(Lcom/inmobi/media/Ya;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "ad dismissed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0}, Lcom/inmobi/media/g5;->a()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->s0:Lcom/inmobi/media/n0;

    if-nez v0, :cond_2

    const-string v0, "adQualityManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    const-string v1, "session end is already triggered"

    invoke-virtual {v0, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, v0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    const-string v1, "config kill switch - false. ad quality will skip"

    invoke-virtual {v0, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/n0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-nez v1, :cond_5

    .line 15
    const-string v1, "setup not done. ignore trigger"

    invoke-virtual {v0, v1}, Lcom/inmobi/media/n0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/inmobi/media/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/inmobi/media/n0;->a(Z)V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 2
    const-string v2, "TAG"

    const-string v3, "updateActivitiesOrientationProperties "

    invoke-static {p0, v1, v2, v3}, Lcom/inmobi/media/Wa;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 806
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ya;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 808
    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz v1, :cond_2

    .line 809
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    iget-object v1, p0, Lcom/inmobi/media/Ya;->r0:Lcom/inmobi/media/K9;

    .line 810
    const-string v2, "orientationProperties"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    iget-object v0, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/R4;

    if-nez v0, :cond_1

    const-string v0, "orientationHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/inmobi/media/R4;->a(Lcom/inmobi/media/K9;)V

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    sget v0, Lcom/inmobi/media/m4;->a:I

    .line 2
    sget-object v0, Lcom/inmobi/media/m4;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    new-instance v1, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Ya$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Ya;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
