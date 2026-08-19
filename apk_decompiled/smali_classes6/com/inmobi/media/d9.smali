.class public final Lcom/inmobi/media/d9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static volatile d:Ljava/lang/ref/WeakReference;

.field public static e:Ljava/lang/ref/WeakReference;

.field public static f:I

.field public static g:I


# instance fields
.field public a:I

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/inmobi/media/j8;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-class v4, Lcom/inmobi/media/Ib;

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    .line 3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-class v6, Lcom/inmobi/media/Hb;

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x3

    .line 4
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-class v8, Lcom/inmobi/media/J7;

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x6

    .line 5
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const-class v10, Landroid/widget/ImageView;

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x7

    .line 6
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const-class v12, Lcom/inmobi/media/M8;

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x4

    .line 7
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const-class v14, Lcom/inmobi/media/P8;

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v14, 0x5

    .line 8
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    const-class v10, Landroid/widget/Button;

    invoke-static {v10, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v15, 0x8

    .line 9
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-class v15, Lcom/inmobi/media/t8;

    invoke-static {v15, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 10
    const-class v15, Lcom/inmobi/media/Ya;

    const/16 v16, 0x9

    .line 19
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/16 v15, 0xa

    .line 20
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    const-class v15, Lcom/inmobi/media/x4;

    invoke-static {v15, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/16 v15, 0xb

    new-array v15, v15, [Lkotlin/Pair;

    aput-object v1, v15, v0

    aput-object v3, v15, v2

    aput-object v5, v15, v4

    aput-object v7, v15, v6

    const/4 v0, 0x4

    aput-object v9, v15, v0

    const/4 v0, 0x5

    aput-object v11, v15, v0

    const/4 v0, 0x6

    aput-object v13, v15, v0

    const/4 v0, 0x7

    aput-object v10, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    aput-object v14, v15, v16

    const/16 v0, 0xa

    aput-object v12, v15, v0

    .line 21
    invoke-static {v15}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/inmobi/media/d9;->e:Ljava/lang/ref/WeakReference;

    .line 51
    sput v2, Lcom/inmobi/media/d9;->f:I

    .line 52
    sput v2, Lcom/inmobi/media/d9;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/inmobi/media/d9;->e:Ljava/lang/ref/WeakReference;

    .line 485
    new-instance v1, Lcom/inmobi/media/W8;

    invoke-direct {v1, v0}, Lcom/inmobi/media/W8;-><init>(Lcom/inmobi/media/d9;)V

    .line 498
    new-instance v2, Lcom/inmobi/media/S8;

    invoke-direct {v2, v0}, Lcom/inmobi/media/S8;-><init>(Lcom/inmobi/media/d9;)V

    .line 511
    new-instance v3, Lcom/inmobi/media/b9;

    invoke-direct {v3, v0}, Lcom/inmobi/media/b9;-><init>(Lcom/inmobi/media/d9;)V

    .line 531
    new-instance v4, Lcom/inmobi/media/X8;

    invoke-direct {v4, v0}, Lcom/inmobi/media/X8;-><init>(Lcom/inmobi/media/d9;)V

    .line 547
    new-instance v5, Lcom/inmobi/media/V8;

    invoke-direct {v5, v0}, Lcom/inmobi/media/V8;-><init>(Lcom/inmobi/media/d9;)V

    .line 572
    new-instance v6, Lcom/inmobi/media/U8;

    invoke-direct {v6, v0}, Lcom/inmobi/media/U8;-><init>(Lcom/inmobi/media/d9;)V

    .line 595
    new-instance v7, Lcom/inmobi/media/a9;

    invoke-direct {v7, v0}, Lcom/inmobi/media/a9;-><init>(Lcom/inmobi/media/d9;)V

    .line 620
    new-instance v8, Lcom/inmobi/media/Y8;

    invoke-direct {v8, v0}, Lcom/inmobi/media/Y8;-><init>(Lcom/inmobi/media/d9;)V

    .line 644
    new-instance v9, Lcom/inmobi/media/T8;

    invoke-direct {v9, v0}, Lcom/inmobi/media/T8;-><init>(Lcom/inmobi/media/d9;)V

    .line 668
    new-instance v10, Lcom/inmobi/media/Z8;

    invoke-direct {v10, v0}, Lcom/inmobi/media/Z8;-><init>(Lcom/inmobi/media/d9;)V

    .line 688
    new-instance v11, Lcom/inmobi/media/c9;

    invoke-direct {v11, v0}, Lcom/inmobi/media/c9;-><init>(Lcom/inmobi/media/d9;)V

    const/4 v12, 0x0

    .line 719
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-static {v13, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v13, 0x3

    .line 720
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v14, 0x1

    .line 721
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v15, 0x2

    .line 722
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-static {v13, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v13, 0x6

    .line 723
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v15, 0xa

    .line 724
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v13, 0x7

    .line 725
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-static {v15, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v15, 0x4

    .line 726
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v13, 0x5

    .line 727
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-static {v15, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x8

    .line 728
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-static {v13, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v13, 0x9

    .line 729
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v15, 0xb

    new-array v15, v15, [Lkotlin/Pair;

    aput-object v1, v15, v12

    aput-object v2, v15, v14

    const/4 v1, 0x2

    aput-object v3, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    aput-object v10, v15, v13

    const/16 v1, 0xa

    aput-object v11, v15, v1

    .line 730
    invoke-static {v15}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/media/d9;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/d9;Landroid/widget/Button;Lcom/inmobi/media/D7;)V
    .locals 6

    const-string v0, "event"

    const-string v1, "TAG"

    const-string v2, "d9"

    .line 1112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    iget-object p0, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1114
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeCtaAsset.NativeCtaAssetStyle"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/K7;

    .line 1115
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1116
    iget-object v4, p0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1117
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    .line 1118
    iget-object v5, p0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1119
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    .line 1120
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    iget-object p2, p2, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 1122
    instance-of v3, p2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget p2, p0, Lcom/inmobi/media/m8;->l:I

    .line 1124
    invoke-static {p2}, Lcom/inmobi/media/N8;->a(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v3, 0x1

    .line 1125
    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1129
    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 1130
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/m8;->n:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1133
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    sget-object v4, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v4, Lcom/inmobi/media/d2;

    invoke-direct {v4, v3}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 1135
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    sget-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v3, v4}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 1214
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1215
    const-string p2, "#00000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 1217
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/media/m8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1219
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, v3}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 1222
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 1301
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p2, 0x4

    .line 1303
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextAlignment(I)V

    const/16 p2, 0x11

    .line 1305
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1306
    iget-object p2, p0, Lcom/inmobi/media/m8;->o:Ljava/util/ArrayList;

    .line 1307
    invoke-static {p1, p2}, Lcom/inmobi/media/N8;->a(Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 1308
    invoke-static {p1, p0}, Lcom/inmobi/media/N8;->a(Landroid/view/View;Lcom/inmobi/media/E7;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/d9;Landroid/widget/ImageView;Lcom/inmobi/media/D7;)V
    .locals 8

    .line 1309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1310
    iget-object p0, p2, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 1311
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_11

    .line 1312
    iget-object v0, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1313
    iget-object v0, v0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1314
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/media/N8;->a(I)I

    move-result v0

    .line 1315
    iget-object v1, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1316
    iget-object v1, v1, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1317
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/media/N8;->a(I)I

    move-result v1

    .line 1318
    iget-object v2, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1319
    iget-object v2, v2, Lcom/inmobi/media/E7;->g:Ljava/lang/String;

    .line 1320
    const-string v3, "aspectFit"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1321
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 1323
    :cond_1
    const-string v3, "aspectFill"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1324
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 1327
    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1333
    :goto_1
    sget-object v2, Lcom/inmobi/media/d9;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    if-lez v0, :cond_a

    if-lez v1, :cond_a

    .line 1608
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v3

    move v5, v1

    :goto_2
    if-gt v1, v0, :cond_8

    if-nez v5, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    .line 1613
    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 1614
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    if-nez v5, :cond_6

    if-nez v6, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/2addr v0, v4

    .line 1907
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1908
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1910
    sget-object v0, Lcom/inmobi/media/R9;->a:Lcom/inmobi/media/R9;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/R9;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 1911
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 1915
    new-instance v1, Lcom/inmobi/media/Q8;

    invoke-direct {v1, v2, p1, p2}, Lcom/inmobi/media/Q8;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/media/D7;)V

    .line 1916
    invoke-virtual {v0, v1}, Lcom/inmobi/media/R9;->a(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.squareup.picasso.Callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/squareup/picasso/Callback;

    .line 1917
    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 1923
    const-string p0, "cross_button"

    .line 1924
    iget-object v0, p2, Lcom/inmobi/media/D7;->b:Ljava/lang/String;

    .line 1925
    invoke-static {p0, v0, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1926
    iget-object p0, p2, Lcom/inmobi/media/D7;->p:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 1927
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_a

    .line 1929
    :cond_9
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1930
    new-instance v0, Lcom/inmobi/media/O8;

    invoke-direct {v0, v2, p1}, Lcom/inmobi/media/O8;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    const-wide/16 v1, 0x7d0

    .line 1931
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1932
    :cond_a
    iget-object p0, p2, Lcom/inmobi/media/D7;->r:Lcom/inmobi/media/H7;

    if-eqz p0, :cond_10

    .line 1934
    iget-object v0, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1935
    iget-object v0, v0, Lcom/inmobi/media/E7;->e:Ljava/lang/String;

    .line 1936
    const-string v1, "line"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1937
    iget-object v0, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1938
    iget-object v1, v0, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1939
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1940
    iget-object v2, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1941
    iget-object v2, v2, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1942
    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_b

    move v1, v4

    goto :goto_6

    :cond_b
    move v1, v3

    .line 1943
    :goto_6
    iget-object v0, v0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1944
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/media/N8;->a(I)I

    move-result v0

    .line 1945
    iget-object v2, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1946
    iget-object v2, v2, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1947
    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/inmobi/media/N8;->a(I)I

    move-result v2

    .line 1948
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1949
    iget-object v5, v5, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1950
    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v5

    if-ne v0, v2, :cond_c

    move v0, v4

    goto :goto_7

    :cond_c
    move v0, v3

    .line 1951
    :goto_7
    iget-object v2, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1952
    iget-object v2, v2, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1953
    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/inmobi/media/N8;->a(I)I

    move-result v2

    .line 1954
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1955
    iget-object v5, v5, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1956
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    if-ne v2, v5, :cond_d

    move v2, v4

    goto :goto_8

    :cond_d
    move v2, v3

    .line 1957
    :goto_8
    iget-object v5, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1958
    iget-object v5, v5, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1959
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    .line 1960
    iget-object v6, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1961
    iget-object v6, v6, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1962
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Lcom/inmobi/media/N8;->a(I)I

    move-result v6

    .line 1963
    iget-object v7, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1964
    iget-object v7, v7, Lcom/inmobi/media/E7;->c:Landroid/graphics/Point;

    .line 1965
    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Lcom/inmobi/media/N8;->a(I)I

    move-result v7

    add-int/2addr v7, v6

    if-ne v5, v7, :cond_e

    move v3, v4

    .line 1966
    :cond_e
    iget-object p0, p0, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1967
    iget-object p0, p0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1968
    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Lcom/inmobi/media/N8;->a(I)I

    move-result p0

    .line 1969
    iget-object v5, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1970
    iget-object v5, v5, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1971
    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    if-ne p0, v5, :cond_f

    move p0, v3

    move v0, v4

    move v3, v0

    goto :goto_9

    :cond_f
    move p0, v3

    move v3, v1

    goto :goto_9

    :cond_10
    move p0, v3

    move v0, p0

    move v2, v0

    .line 1979
    :goto_9
    invoke-virtual {p1, v3, v2, v0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1980
    iget-object p0, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1981
    invoke-static {p1, p0}, Lcom/inmobi/media/N8;->a(Landroid/view/View;Lcom/inmobi/media/E7;)V

    :cond_11
    return-void
.end method

.method public static final a(Lcom/inmobi/media/d9;Landroid/widget/TextView;Lcom/inmobi/media/D7;)V
    .locals 7

    const-string v0, "event"

    const-string v1, "TAG"

    const-string v2, "d9"

    .line 1982
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1983
    iget-object p0, p2, Lcom/inmobi/media/D7;->d:Lcom/inmobi/media/E7;

    .line 1984
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTextAsset.NativeTextAssetStyle"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/m8;

    .line 1985
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 1986
    iget-object v4, p0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1987
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/N8;->a(I)I

    move-result v4

    .line 1988
    iget-object v5, p0, Lcom/inmobi/media/E7;->a:Landroid/graphics/Point;

    .line 1989
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/N8;->a(I)I

    move-result v5

    .line 1990
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1991
    iget-object p2, p2, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 1992
    instance-of v3, p2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1993
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1994
    iget-byte p2, p0, Lcom/inmobi/media/m8;->m:B

    const v3, 0x800013

    const/4 v4, 0x1

    if-nez p2, :cond_1

    .line 1995
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_1
    if-ne p2, v4, :cond_2

    const p2, 0x800015

    .line 1998
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    const/16 p2, 0x11

    .line 2001
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 2004
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 2005
    :goto_1
    iget p2, p0, Lcom/inmobi/media/m8;->l:I

    .line 2006
    invoke-static {p2}, Lcom/inmobi/media/N8;->a(I)I

    move-result p2

    int-to-float p2, p2

    .line 2007
    invoke-virtual {p1, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2011
    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 2012
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/m8;->n:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 2015
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    sget-object v5, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v5, Lcom/inmobi/media/d2;

    invoke-direct {v5, v3}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 2017
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2095
    sget-object v3, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v3, v5}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 2096
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2097
    const-string p2, "#00000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 2099
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/media/m8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 2101
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2103
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    new-instance v1, Lcom/inmobi/media/d2;

    invoke-direct {v1, v3}, Lcom/inmobi/media/d2;-><init>(Ljava/lang/Throwable;)V

    .line 2104
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2182
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 2183
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2185
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 2186
    iget-object p2, p0, Lcom/inmobi/media/m8;->o:Ljava/util/ArrayList;

    .line 2187
    invoke-static {p1, p2}, Lcom/inmobi/media/N8;->a(Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 2188
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2189
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 2190
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2191
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2192
    invoke-static {p1, p0}, Lcom/inmobi/media/N8;->a(Landroid/view/View;Lcom/inmobi/media/E7;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/q8;Lcom/inmobi/media/t8;)V
    .locals 1

    const-string v0, "$timerAsset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2264
    sget-object v0, Lcom/inmobi/media/d9;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2265
    iget-boolean p0, p0, Lcom/inmobi/media/q8;->y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2266
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/media/t8;->d()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/inmobi/media/t8;Lcom/inmobi/media/D7;)V
    .locals 6

    const/4 v0, 0x4

    .line 2241
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    const-string v0, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTimerAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/q8;

    .line 2243
    iget-object v0, p1, Lcom/inmobi/media/q8;->x:Lcom/inmobi/media/p8;

    .line 2244
    iget-object v1, v0, Lcom/inmobi/media/p8;->a:Lcom/inmobi/media/o8;

    .line 2245
    iget-object v0, v0, Lcom/inmobi/media/p8;->b:Lcom/inmobi/media/o8;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 2246
    :try_start_0
    invoke-virtual {v1}, Lcom/inmobi/media/o8;->a()J

    move-result-wide v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2247
    invoke-virtual {v0}, Lcom/inmobi/media/o8;->a()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 2249
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/t8;->setTimerValue(J)V

    .line 2250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/media/d9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/inmobi/media/d9$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/q8;Lcom/inmobi/media/t8;)V

    const/16 p0, 0x3e8

    int-to-long p0, p0

    mul-long/2addr v4, p0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2260
    :goto_2
    const-string p1, "d9"

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2261
    sget-object p1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 2262
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 2263
    sget-object p1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfig"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v3, "nativeAsset"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    instance-of v3, p2, Lcom/inmobi/media/H7;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 878
    move-object v3, p2

    check-cast v3, Lcom/inmobi/media/H7;

    .line 879
    iget-boolean v6, v3, Lcom/inmobi/media/H7;->C:Z

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 880
    :cond_0
    iget-boolean v6, v3, Lcom/inmobi/media/H7;->D:Z

    if-eqz v6, :cond_3

    .line 881
    iget-byte v3, v3, Lcom/inmobi/media/H7;->z:B

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_2
    :goto_0
    move v3, v5

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 882
    :cond_4
    iget-object v3, p2, Lcom/inmobi/media/D7;->c:Ljava/lang/String;

    .line 883
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "WEBVIEW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x9

    goto :goto_2

    :sswitch_1
    const-string v6, "VIDEO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_2
    const-string v6, "TIMER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_3
    const-string v6, "IMAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :sswitch_4
    const-string v6, "TEXT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v6, "ICON"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v6, "GIF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0xa

    goto :goto_2

    :sswitch_7
    const-string v6, "CTA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x5

    goto :goto_2

    :goto_1
    move v3, v4

    :goto_2
    const/4 v6, 0x0

    if-ne v4, v3, :cond_c

    .line 884
    const-string p1, "d9"

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6

    .line 888
    :cond_c
    iget-object v7, p0, Lcom/inmobi/media/d9;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/R8;

    if-eqz v3, :cond_e

    .line 889
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1100
    sput-object v0, Lcom/inmobi/media/d9;->e:Ljava/lang/ref/WeakReference;

    .line 1101
    iget-object v0, v3, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1102
    iget v0, v3, Lcom/inmobi/media/R8;->b:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/inmobi/media/R8;->b:I

    .line 1103
    invoke-virtual {v3, p1}, Lcom/inmobi/media/R8;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 1105
    :cond_d
    iget p1, v3, Lcom/inmobi/media/R8;->c:I

    add-int/2addr p1, v5

    iput p1, v3, Lcom/inmobi/media/R8;->c:I

    .line 1106
    iget-object p1, v3, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1108
    iget-object v0, v3, Lcom/inmobi/media/R8;->d:Lcom/inmobi/media/d9;

    .line 1109
    iget v1, v0, Lcom/inmobi/media/d9;->a:I

    add-int/2addr v1, v4

    .line 1110
    iput v1, v0, Lcom/inmobi/media/d9;->a:I

    :goto_3
    move-object v6, p1

    if-eqz v6, :cond_e

    .line 1111
    invoke-virtual {v3, v6, p2, p3}, Lcom/inmobi/media/R8;->a(Landroid/view/View;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)V

    :cond_e
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x105f0 -> :sswitch_7
        0x113a4 -> :sswitch_6
        0x223479 -> :sswitch_5
        0x273d2d -> :sswitch_4
        0x428b13b -> :sswitch_3
        0x4c20f25 -> :sswitch_2
        0x4de1c5b -> :sswitch_1
        0x73c6c7d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2193
    instance-of v0, p1, Lcom/inmobi/media/j8;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/inmobi/media/J7;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/d9;->b(Landroid/view/View;)V

    goto :goto_4

    .line 2220
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/J7;

    .line 2222
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2223
    invoke-virtual {p0, p1}, Lcom/inmobi/media/d9;->b(Landroid/view/View;)V

    goto :goto_4

    .line 2225
    :cond_2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 2226
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2228
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/J7;

    .line 2229
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ge v2, v1, :cond_4

    .line 2230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2232
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2233
    instance-of v3, v2, Lcom/inmobi/media/J7;

    if-eqz v3, :cond_3

    .line 2234
    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2236
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/inmobi/media/d9;->b(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2240
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/media/d9;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "TAG"

    const-string v3, "d9"

    if-ne v1, v0, :cond_1

    .line 3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/d9;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/R8;

    if-nez v0, :cond_2

    .line 7
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget v1, p0, Lcom/inmobi/media/d9;->a:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_5

    .line 12
    iget-object v1, p0, Lcom/inmobi/media/d9;->b:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/R8;

    .line 13
    iget-object v5, v4, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    .line 14
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 15
    iget-object v2, v4, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    move-object v3, v4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 16
    iget-object v1, v3, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 17
    iget-object v1, v3, Lcom/inmobi/media/R8;->a:Ljava/util/LinkedList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    :cond_5
    invoke-virtual {v0, p1}, Lcom/inmobi/media/R8;->a(Landroid/view/View;)V

    return-void
.end method
