.class public final Lcom/inmobi/media/o6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/inmobi/media/p6;

.field public final c:Lcom/inmobi/media/c2;

.field public final d:Lcom/inmobi/media/Ra;

.field public final e:Lcom/inmobi/media/V1;

.field public final f:Lcom/inmobi/media/u6;

.field public final g:Lcom/inmobi/media/f5;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/p6;Lcom/inmobi/media/c2;Lcom/inmobi/media/Ra;Lcom/inmobi/media/Aa;Lcom/inmobi/media/u6;Lcom/inmobi/media/f5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landingPageState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectionValidator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/o6;->c:Lcom/inmobi/media/c2;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    .line 6
    check-cast p5, Lcom/inmobi/media/V1;

    iput-object p5, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/o6;->f:Lcom/inmobi/media/u6;

    .line 8
    iput-object p7, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    return-void
.end method

.method public static a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;ZI)Lcom/inmobi/media/m6;
    .locals 9

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p4, v1

    :cond_0
    and-int/lit8 p6, p6, 0x10

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p5, v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string p6, "api"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p6, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    const-string v3, "o6"

    if-eqz p6, :cond_2

    .line 78
    const-string v4, "processing URL - "

    invoke-static {v3, v2, v4, p3}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    check-cast p6, Lcom/inmobi/media/g5;

    invoke-virtual {p6, v3, v4}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p6, 0x1

    if-nez p4, :cond_4

    .line 81
    iget-object p4, p0, Lcom/inmobi/media/o6;->f:Lcom/inmobi/media/u6;

    if-eqz p4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 83
    iget-boolean v4, v4, Lcom/inmobi/media/p6;->a:Z

    if-nez v4, :cond_3

    if-nez p5, :cond_3

    .line 84
    new-instance p5, Lcom/inmobi/media/t6;

    invoke-static {p3}, Lcom/inmobi/media/l6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/inmobi/media/o6;->h:I

    add-int/2addr v5, p6

    iput v5, p0, Lcom/inmobi/media/o6;->h:I

    const/16 v6, 0x8

    invoke-direct {p5, p4, v4, v5, v6}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V

    move-object p4, p5

    goto :goto_0

    :cond_3
    move-object p4, v1

    .line 87
    :cond_4
    :goto_0
    sget-object p5, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    .line 88
    const-string v4, "funnelState"

    invoke-static {p5, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v5

    .line 89
    invoke-static {p5, p4, v1, v5}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    const/4 p5, 0x3

    const/4 v5, 0x2

    if-eqz p3, :cond_2d

    .line 90
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_b

    .line 97
    :cond_5
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_a

    .line 106
    :cond_6
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p5

    const-string v7, "inmobinativebrowser"

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 107
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_7

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string p6, "inmobi native browser scheme"

    invoke-virtual {p5, v3, p6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;

    move-result-object p0

    goto/16 :goto_c

    .line 110
    :cond_8
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p5

    const-string v7, "inmobideeplink"

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    .line 111
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_9

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string p6, "inmobi deeplink scheme"

    invoke-virtual {p5, v3, p6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;

    move-result-object p0

    goto/16 :goto_c

    .line 116
    :cond_a
    iget-object p5, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v8, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {p5, p3, v7, p1, v8}, Lcom/inmobi/media/j1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)Z

    move-result p5

    const-string v7, "EX_NATIVE"

    if-eqz p5, :cond_d

    .line 117
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_b

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v0, "appstore link"

    invoke-virtual {p5, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_c

    goto :goto_1

    .line 120
    :cond_c
    iput-object v7, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 121
    :goto_1
    sget-object p1, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 122
    invoke-static {p1, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p0

    .line 123
    invoke-static {p1, p4, v1, p0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 124
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-direct {p0, p6}, Lcom/inmobi/media/m6;-><init>(I)V

    goto/16 :goto_c

    .line 126
    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/inmobi/media/w2;->a(Landroid/net/Uri;)Z

    move-result p5

    if-eqz p5, :cond_25

    .line 127
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_e

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v6, "http link"

    invoke-virtual {p5, v3, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_e
    iget-object p5, p0, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 129
    iget-boolean v6, p5, Lcom/inmobi/media/p6;->a:Z

    if-eqz v6, :cond_f

    .line 130
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-direct {p0, v0}, Lcom/inmobi/media/m6;-><init>(I)V

    goto/16 :goto_c

    .line 131
    :cond_f
    iget-object p5, p5, Lcom/inmobi/media/p6;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v8, -0x79209ddf

    if-eq v6, v8, :cond_1d

    const v8, -0x29e166dd

    if-eq v6, v8, :cond_16

    const v0, 0x6b8cfcb

    if-eq v6, v0, :cond_11

    const v0, 0x18649471

    if-eq v6, v0, :cond_10

    goto/16 :goto_4

    :cond_10
    const-string v0, "IN_NATIVE"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1f

    goto/16 :goto_4

    :cond_11
    const-string v0, "IN_CUSTOM"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_12

    goto/16 :goto_4

    .line 138
    :cond_12
    iget-object p2, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_13

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p5, "open internal custom"

    invoke-virtual {p2, v3, p5}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_13
    iget-object p2, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_14

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p5, "In processOpenInternalCustomRequest"

    invoke-virtual {p2, v3, p5}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_14
    invoke-virtual {p0, p3, p1, p4}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result v0

    if-eqz v0, :cond_15

    if-ne v0, p6, :cond_21

    .line 141
    :cond_15
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_21

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Internal Custom handled successfully"

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 142
    :cond_16
    invoke-virtual {p5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_17

    goto :goto_4

    .line 144
    :cond_17
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_18

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v6, "open external native"

    invoke-virtual {p5, v3, v6}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_18
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_19

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v6, "In processOpenExternalNativeRequest"

    invoke-virtual {p5, v3, v6}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_19
    iget-object p5, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v8, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {p5, p3, v6, p1, v8}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)I

    move-result p5

    if-eqz p5, :cond_1b

    if-ne p5, p6, :cond_1a

    goto :goto_2

    .line 153
    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result v0

    goto :goto_5

    :cond_1b
    :goto_2
    if-nez p4, :cond_1c

    goto :goto_3

    .line 155
    :cond_1c
    iput-object v7, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 156
    :goto_3
    sget-object p5, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 157
    invoke-static {p5, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v6

    .line 158
    invoke-static {p5, p4, v1, v6}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_21

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "External Native handled successfully"

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 161
    :cond_1d
    const-string v0, "DEFAULT"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1f

    .line 176
    :goto_4
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_1e

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v0, "invalid scheme - open internal native"

    invoke-virtual {p5, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result v0

    goto :goto_5

    .line 178
    :cond_1f
    iget-object p5, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p5, :cond_20

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/inmobi/media/g5;

    const-string v0, "default - internal native"

    invoke-virtual {p5, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result v0

    :cond_21
    :goto_5
    if-eqz v0, :cond_24

    if-ne v0, p6, :cond_22

    goto :goto_7

    :cond_22
    if-nez p4, :cond_23

    goto :goto_6

    .line 189
    :cond_23
    iget-object p1, p0, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 190
    iget-object p1, p1, Lcom/inmobi/media/p6;->b:Ljava/lang/String;

    .line 191
    iput-object p1, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 192
    :goto_6
    sget-object p1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 193
    invoke-static {p1, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p0

    .line 194
    invoke-static {p1, p4, p2, p0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 195
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    goto/16 :goto_c

    .line 196
    :cond_24
    :goto_7
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-direct {p0, p6}, Lcom/inmobi/media/m6;-><init>(I)V

    goto/16 :goto_c

    .line 197
    :cond_25
    iget-object p5, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v6, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {p5, p3, v0, p1, v6}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)I

    move-result p5

    if-nez p4, :cond_26

    goto :goto_8

    .line 199
    :cond_26
    iput-object v7, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_8
    if-eqz p5, :cond_29

    if-ne p5, p6, :cond_27

    goto :goto_9

    .line 200
    :cond_27
    iget-object p6, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p6, :cond_28

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p6, Lcom/inmobi/media/g5;

    const-string v0, "In processOpenRequest else"

    invoke-virtual {p6, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object p1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 203
    invoke-static {p1, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p0

    .line 204
    invoke-static {p1, p4, p2, p0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 205
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    goto :goto_c

    .line 206
    :cond_29
    :goto_9
    sget-object p5, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 207
    invoke-static {p5, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v0

    .line 208
    invoke-static {p5, p4, v1, v0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_2a

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/g5;

    const-string p1, "Deeplink url handled successfully"

    invoke-virtual {p0, v3, p1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_2a
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-direct {p0, p6}, Lcom/inmobi/media/m6;-><init>(I)V

    goto :goto_c

    .line 212
    :cond_2b
    :goto_a
    iget-object p6, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p6, :cond_2c

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p6, Lcom/inmobi/media/g5;

    const-string v0, "url scheme is empty"

    invoke-virtual {p6, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_2c
    sget-object p6, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 214
    invoke-static {p6, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    .line 215
    invoke-static {p6, p4, v1, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    goto :goto_c

    .line 218
    :cond_2d
    :goto_b
    iget-object p6, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p6, :cond_2e

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p6, Lcom/inmobi/media/g5;

    const-string v0, "url is empty"

    invoke-virtual {p6, v3, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2e
    sget-object p6, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 220
    invoke-static {p6, v4, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v1

    .line 221
    invoke-static {p6, p4, v0, v1}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance p0, Lcom/inmobi/media/m6;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    :goto_c
    return-object p0
.end method

.method public static final a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Ljava/lang/Exception;)V
    .locals 4

    .line 6943
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 6944
    const-string v1, "TAG"

    const-string v2, "Error message in processing openExternal: "

    const-string v3, "o6"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p5

    .line 6945
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, p5}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6946
    :cond_0
    iget-object p5, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p5, :cond_1

    .line 6947
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot resolve URI ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6948
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6949
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .line 6950
    :catch_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6951
    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7496
    iget-object p5, p5, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    const-string v0, "openExternal"

    invoke-virtual {p5, p1, p2, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x0

    .line 7497
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/inmobi/media/o6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I
    .locals 12

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 5255
    :cond_0
    const-string v0, "IN_CUSTOM"

    .line 5256
    iput-object v0, p3, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 5257
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "TAG"

    const/4 v2, 0x2

    const-string v3, "funnelState"

    const-string v4, "o6"

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 5258
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "processOpenEmbeddedRequest failed due to empty URL"

    invoke-virtual {p1, v4, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5259
    :cond_1
    sget-object p1, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    .line 5260
    invoke-static {p1, v3, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p2

    .line 5261
    invoke-static {p1, p3, v5, p2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return v2

    .line 5262
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v7, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {v0, p1, v6, p2, v7}, Lcom/inmobi/media/j1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 5265
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "parse(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/inmobi/media/w2;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 5266
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    const-class v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5267
    const-string v0, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5268
    const-string v0, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5269
    iget-object v0, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    invoke-interface {v0}, Lcom/inmobi/media/Aa;->getViewTouchTimestamp()J

    move-result-wide v0

    const-string v4, "viewTouchTimestamp"

    invoke-virtual {p2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_4

    .line 5271
    iget-object v7, p3, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    iget-object v8, p3, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    iget v9, p3, Lcom/inmobi/media/t6;->c:I

    iget-wide v10, p3, Lcom/inmobi/media/t6;->d:J

    .line 5272
    const-string v0, "landingPageTelemetryMetaData"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlType"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/inmobi/media/t6;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;IJ)V

    .line 5273
    sget-object v1, Lcom/inmobi/media/h6;->d:Lcom/inmobi/media/h6;

    .line 5274
    iput v2, v0, Lcom/inmobi/media/t6;->f:I

    .line 5275
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_4
    move-object v0, v5

    :goto_1
    const-string v1, "lpTelemetryControlInfo"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5276
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    .line 5277
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5278
    sget-object v2, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "obj"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5279
    sget-object v4, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5280
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loggerCacheKey"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5282
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v0, :cond_6

    .line 5283
    const-string v1, "intent"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5844
    iget-object v1, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creativeId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5845
    iget-object v1, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "impressionId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5846
    iget-object v1, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v1}, Lcom/inmobi/media/Ya;->getPlacementId()J

    move-result-wide v1

    const-string v4, "placementId"

    invoke-virtual {p2, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5848
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    iget-object v0, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    .line 5849
    sput-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/Ya;

    .line 5850
    sget-object v1, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5851
    :cond_6
    sget-object p2, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 5852
    invoke-static {p2, v3, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v0

    .line 5853
    invoke-static {p2, p3, v5, v0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 5854
    iget-object p2, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p2, :cond_7

    .line 5855
    iget-object p2, p2, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-static {p2, v5, v5, p1}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p1, 0x1

    goto :goto_2

    .line 5856
    :cond_8
    iget-object p2, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_9

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Embedded request unable to handle "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v4, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 p1, 0xa

    :goto_2
    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 5237
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "o6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inMobiDeepLinkSchemeUrlHandled - url - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trackingUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_8

    .line 5238
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 5242
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v4, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {v0, p2, v3, p1, v4}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 5248
    :cond_2
    iget-object p2, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/g5;

    const-string p3, "InMobiDeepLinkScheme scheme applink/http url handling failed"

    invoke-virtual {p2, v2, p3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5249
    :cond_3
    :goto_0
    invoke-static {p3}, Lcom/inmobi/media/y2;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5250
    sget-object p1, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-virtual {p1, p3, p2, v0}, Lcom/inmobi/media/u2;->a(Ljava/lang/String;ZLcom/inmobi/media/f5;)V

    goto :goto_1

    .line 5252
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InMobiDeepLinkScheme scheme tracking url handling is invalid "

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5253
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InMobiDeepLinkScheme scheme applink/http url handled successfully"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_2
    return p1

    .line 5254
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_9

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InMobiDeepLinkScheme url is Empty or null"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x2

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Lcom/inmobi/media/g2;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "api"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "funnelState"

    const/4 v15, 0x1

    if-eqz v11, :cond_12

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 229
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 230
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x4

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 237
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inmobinativebrowser"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual/range {p0 .. p4}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;

    :cond_2
    :goto_0
    const/4 v13, 0x2

    goto/16 :goto_7

    .line 241
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inmobideeplink"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    invoke-virtual/range {p0 .. p4}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;

    move-result-object v0

    .line 244
    iget v0, v0, Lcom/inmobi/media/m6;->a:I

    if-ne v0, v15, :cond_f

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v3, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {v0, v11, v2, v10, v3}, Lcom/inmobi/media/j1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)Z

    move-result v0

    const-string v9, "EX_NATIVE"

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 246
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_5

    goto :goto_1

    .line 248
    :cond_5
    iput-object v9, v12, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 249
    :goto_1
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 250
    invoke-static {v0, v14, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    .line 251
    invoke-static {v0, v12, v8, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 252
    :cond_6
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lcom/inmobi/media/w2;->a(Landroid/net/Uri;)Z

    move-result v0

    const-string v7, "TAG"

    const-string v6, "o6"

    if-eqz v0, :cond_9

    .line 253
    const-string v0, "Partial tabs not supported: packageName - "

    .line 254
    :try_start_0
    iget-object v2, v1, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 255
    iget-boolean v2, v2, Lcom/inmobi/media/p6;->d:Z

    if-eqz v2, :cond_9

    if-eqz p5, :cond_9

    .line 256
    iget-object v2, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_8

    .line 257
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/N3;->g()B

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/J9;->a(B)Lcom/inmobi/media/I9;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/media/J9;->b(Lcom/inmobi/media/I9;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    const-class v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 259
    const-string v5, "setInitialActivityWidthPx"

    .line 260
    new-array v8, v15, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v4

    .line 261
    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_7
    const-class v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 267
    const-string v5, "setInitialActivityHeightPx"

    .line 268
    new-array v8, v15, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v4

    .line 269
    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :goto_2
    :try_start_2
    new-instance v0, Lcom/inmobi/media/h2;

    iget-object v5, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v8, v1, Lcom/inmobi/media/o6;->c:Lcom/inmobi/media/c2;

    iget-object v4, v1, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v19, v4

    move-object/from16 v4, p5

    move-object v13, v6

    move-object v6, v8

    move-object v8, v7

    move-object/from16 v7, v19

    move-object v15, v8

    move-object/from16 v8, p4

    move-object/from16 v18, v14

    move-object v14, v9

    move-object/from16 v9, p1

    :try_start_3
    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/h2;-><init>(Ljava/lang/String;Lcom/inmobi/media/g2;Landroid/content/Context;Lcom/inmobi/media/c2;Lcom/inmobi/media/Aa;Lcom/inmobi/media/t6;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/media/h2;->a()V

    const/4 v13, 0x5

    goto/16 :goto_7

    :catch_0
    :cond_8
    move-object v13, v6

    move-object v15, v7

    move-object/from16 v18, v14

    move-object v14, v9

    .line 273
    iget-object v3, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_a

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v13, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v6

    move-object v15, v7

    move-object/from16 v18, v14

    move-object v14, v9

    .line 277
    :goto_3
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_a

    .line 278
    const-string v3, "Error while opening partial tab: "

    invoke-static {v13, v15, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    invoke-static {v0, v3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 280
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v13, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v13, v6

    move-object v15, v7

    move-object/from16 v18, v14

    move-object v14, v9

    .line 281
    :cond_a
    :goto_4
    invoke-static/range {v16 .. v16}, Lcom/inmobi/media/w2;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v13, 0x3

    goto :goto_7

    .line 285
    :cond_b
    iget-object v0, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v3, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {v0, v11, v2, v10, v3}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)I

    move-result v0

    if-nez v12, :cond_c

    goto :goto_5

    .line 287
    :cond_c
    iput-object v14, v12, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_10

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    goto :goto_6

    .line 288
    :cond_d
    iget-object v0, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_e

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "CustomExpand handling failed"

    invoke-virtual {v0, v13, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_e
    sget-object v0, Lcom/inmobi/media/h6;->j:Lcom/inmobi/media/h6;

    move-object/from16 v2, v18

    .line 290
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    const/4 v3, 0x0

    .line 291
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    move/from16 v13, v17

    goto :goto_7

    :cond_10
    :goto_6
    move-object/from16 v2, v18

    const/4 v3, 0x0

    .line 292
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 294
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    .line 295
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 296
    iget-object v0, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "Deeplink url handled successfully"

    invoke-virtual {v0, v13, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_7
    return v13

    :cond_11
    :goto_8
    move-object v2, v14

    .line 297
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 299
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    .line 300
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x1

    return v3

    :cond_12
    :goto_9
    move-object v2, v14

    move v3, v15

    .line 301
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/o6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 303
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v2

    .line 304
    invoke-static {v0, v12, v4, v2}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;
    .locals 9

    .line 3026
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "o6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "In processInMobiDeepLinkScheme"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3028
    const-string v3, "primaryUrl"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3029
    const-string v4, "primaryTrackingUrl"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3030
    invoke-virtual {p0, p1, v3, v4}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "EX_NATIVE"

    const-string v5, "funnelState"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_8

    if-ne v3, v6, :cond_1

    goto/16 :goto_2

    .line 3037
    :cond_1
    const-string v3, "fallbackUrl"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3038
    const-string v8, "fallbackTrackingUrl"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3039
    invoke-virtual {p0, p1, v3, v0}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez p4, :cond_2

    goto :goto_0

    .line 3041
    :cond_2
    iput-object v4, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_6

    if-ne v0, v6, :cond_3

    goto :goto_1

    .line 3042
    :cond_3
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_4

    .line 3043
    const-string v3, "message"

    const-string v4, "Invalid URL"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3588
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p2, v4, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InMobiDeepLinkScheme Fallback Url handling failed"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    :cond_5
    sget-object p1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3591
    invoke-static {p1, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p3

    .line 3592
    invoke-static {p1, p4, p2, p3}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 3593
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    goto :goto_4

    .line 3594
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "InMobiDeepLinkScheme Fallback Url handled successfully"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    :cond_7
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 3596
    invoke-static {v0, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v1

    .line 3597
    invoke-static {v0, p4, v7, v1}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 3598
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3599
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-direct {p1, v6}, Lcom/inmobi/media/m6;-><init>(I)V

    goto :goto_4

    .line 3600
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_9

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "InMobiDeepLinkScheme Primary Url handled successfully"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez p4, :cond_a

    goto :goto_3

    .line 3602
    :cond_a
    iput-object v4, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 3603
    :goto_3
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 3604
    invoke-static {v0, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v1

    .line 3605
    invoke-static {v0, p4, v7, v1}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 3606
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-direct {p1, v6}, Lcom/inmobi/media/m6;-><init>(I)V

    :goto_4
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)Lcom/inmobi/media/m6;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "o6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "In processInMobiNativeBrowserScheme"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    const-string v4, "Invalid URL"

    const-string v5, "funnelState"

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    iget-object v6, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    iget-object v8, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    invoke-static {v6, v0, v7, p1, v8}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;Lcom/inmobi/media/f5;)I

    move-result v0

    if-nez p4, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    const-string v6, "EX_NATIVE"

    .line 13
    iput-object v6, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_0
    const/4 v6, 0x1

    if-eqz v0, :cond_6

    if-ne v0, v6, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_4

    .line 15
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p2, v4, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InmobiNativeBrowser scheme url handling failed"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_5
    sget-object p1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 563
    invoke-static {p1, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object p3

    .line 564
    invoke-static {p1, p4, p2, p3}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 565
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    goto :goto_2

    .line 566
    :cond_6
    :goto_1
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 567
    invoke-static {v0, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v3

    const/4 v4, 0x0

    .line 568
    invoke-static {v0, p4, v4, v3}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 569
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InmobiNativeBrowser scheme url handled successfully"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_7
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-direct {p1, v6}, Lcom/inmobi/media/m6;-><init>(I)V

    :goto_2
    return-object p1

    .line 572
    :cond_8
    :goto_3
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_9

    .line 573
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p2, v4, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "InMobiNativeBrowserScheme url is Empty or null"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_a
    sget-object p1, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/16 p2, 0x1f41

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1121
    invoke-static {p1, v5, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v0

    .line 1122
    invoke-static {p1, p4, p3, v0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1123
    new-instance p1, Lcom/inmobi/media/m6;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p3, p2}, Lcom/inmobi/media/m6;-><init>(ILjava/lang/Integer;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2753
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "o6"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " called with invalid url ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v1, 0x29

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, p3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_1

    .line 2755
    const-string v0, "message"

    const-string v1, "Invalid URL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3300
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p2, v1, p1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "o6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v3, "In processInternalNativeRequest"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/o6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_1

    .line 6
    const-string p4, "message"

    const-string v0, "Unexpected error"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    const-string p4, "open"

    invoke-virtual {p3, p2, v0, p4}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    const-string p2, "InMobi"

    const-string p3, "Failed to open URL SDK encountered unexpected error"

    const/4 p4, 0x1

    invoke-static {p4, p2, p3}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object p2, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_2

    .line 557
    const-string p3, "SDK encountered unexpected error in handling open() request from creative "

    invoke-static {v2, v1, p3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 558
    invoke-static {p1, p3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 832
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p1, 0x9

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/ab;->a()V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v2, "api"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    const-string v13, "TAG"

    const-string v14, "o6"

    if-eqz v2, :cond_0

    .line 2
    const-string v3, "processOpenCCTRequest - url - "

    invoke-static {v14, v13, v3, v11}, Lcom/inmobi/media/k6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v14, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v12, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    const-string v2, "IN_NATIVE"

    .line 391
    iput-object v2, v12, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_0
    const-string v15, "funnelState"

    if-eqz v11, :cond_d

    .line 392
    const-string v2, "http"

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {v11, v2, v9, v3, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 398
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 400
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/media/o6;->b:Lcom/inmobi/media/p6;

    .line 401
    iget-boolean v3, v3, Lcom/inmobi/media/p6;->c:Z

    if-eqz v2, :cond_5

    if-nez v3, :cond_3

    goto :goto_1

    .line 402
    :cond_3
    new-instance v16, Lcom/inmobi/media/h2;

    iget-object v5, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v6, v1, Lcom/inmobi/media/o6;->c:Lcom/inmobi/media/c2;

    iget-object v7, v1, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    const/4 v4, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    move/from16 v17, v9

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/h2;-><init>(Ljava/lang/String;Lcom/inmobi/media/g2;Landroid/content/Context;Lcom/inmobi/media/c2;Lcom/inmobi/media/Aa;Lcom/inmobi/media/t6;Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {v16 .. v16}, Lcom/inmobi/media/h2;->a()V

    .line 404
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_4

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Default and Internal Native handled successfully"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v14, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move/from16 v9, v17

    goto :goto_2

    .line 405
    :cond_5
    :goto_1
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_6

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ChromeCustomTab fallback to Embedded"

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v14, v3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_6
    invoke-virtual {v1, v11, v0, v12}, Lcom/inmobi/media/o6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v9

    .line 415
    :catch_0
    :try_start_1
    iget-object v2, v1, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    invoke-static {v2, v11, v3, v0}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 417
    :cond_7
    iget-object v3, v1, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v3, :cond_8

    .line 418
    iget-object v3, v3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-static {v3, v0, v10, v11}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/Ya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_8
    iget-object v0, v1, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, v0, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/ab;->a()V

    :cond_9
    if-nez v12, :cond_a

    goto :goto_3

    .line 421
    :cond_a
    const-string v0, "EX_NATIVE"

    .line 422
    iput-object v0, v12, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 423
    :goto_3
    sget-object v0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 424
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    new-instance v3, Lcom/inmobi/media/n6;

    invoke-direct {v3, v1}, Lcom/inmobi/media/n6;-><init>(Lcom/inmobi/media/o6;)V

    const/4 v4, 0x0

    invoke-static {v0, v12, v4, v3}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 966
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_b

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/g5;

    const-string v3, "Exception occurred while opening External "

    invoke-virtual {v2, v14, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    const/16 v2, 0x9

    :cond_c
    :goto_4
    return v2

    .line 967
    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_e

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " called with invalid url ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/inmobi/media/g5;

    invoke-virtual {v2, v14, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_e
    iget-object v2, v1, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz v2, :cond_f

    .line 969
    const-string v3, "message"

    const-string v4, "Invalid URL"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    iget-object v2, v2, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v2, v10, v4, v0}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_f
    sget-object v0, Lcom/inmobi/media/h6;->e:Lcom/inmobi/media/h6;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1516
    invoke-static {v0, v15, v1}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v4

    .line 1517
    invoke-static {v0, v12, v3, v4}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return v2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V
    .locals 7

    const-string v0, "funnelState"

    const-string v1, "openExternal"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/o6;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/inmobi/media/o6;->e:Lcom/inmobi/media/V1;

    invoke-static {v2, p2, v3, v1}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;)I

    .line 2
    sget-object v2, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 4
    invoke-static {v2, v0, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v3

    const/4 v4, 0x0

    .line 545
    invoke-static {v2, p4, v4, v3}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 546
    invoke-virtual {p0, v1, p1, p2}, Lcom/inmobi/media/o6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 554
    sget-object p3, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 555
    invoke-static {p3, v0, p0}, Lcom/inmobi/media/i6;->a(Lcom/inmobi/media/h6;Ljava/lang/String;Lcom/inmobi/media/o6;)Lcom/inmobi/media/n6;

    move-result-object v0

    .line 556
    invoke-static {p3, p4, v2, v0}, Lcom/inmobi/media/l6;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 557
    iget-object p3, p0, Lcom/inmobi/media/o6;->d:Lcom/inmobi/media/Ra;

    if-eqz p3, :cond_0

    .line 558
    const-string p4, "message"

    const-string v0, "Unexpected error"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    iget-object p3, p3, Lcom/inmobi/media/Ra;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p3, p1, v0, v1}, Lcom/inmobi/media/Ya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    const-string p1, "o6"

    const-string p3, "TAG"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 1105
    const-string v0, "Could not open URL SDK encountered an unexpected error"

    invoke-static {p4, p1, v0}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object p4, p0, Lcom/inmobi/media/o6;->g:Lcom/inmobi/media/f5;

    if-eqz p4, :cond_1

    .line 1110
    const-string v0, "SDK encountered unexpected error in handling openExternal() request from creative "

    invoke-static {p1, p3, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/inmobi/media/Ed;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 1111
    check-cast p4, Lcom/inmobi/media/g5;

    invoke-virtual {p4, p1, p2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1112
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1113
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1114
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/o6;->a(Lcom/inmobi/media/o6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
