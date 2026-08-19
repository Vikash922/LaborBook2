.class Lcom/razorpay/s$SSss;
.super Ljava/lang/Object;
.source "CustomViews.java"


# direct methods
.method private static $sS$$__s$S$(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 62
    new-instance v7, Landroid/widget/GridLayout;

    invoke-direct {v7, p0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 63
    invoke-virtual {v7, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/16 v0, 0xc

    .line 65
    invoke-static {p0, v0}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x10

    .line 66
    invoke-static {p0, v1}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x6

    .line 67
    invoke-static {p0, v2}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 69
    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v4, -0x2

    .line 70
    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    .line 71
    iput v5, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 72
    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/razorpay/customui/lib/R$drawable;->razorpay_card:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sub-int v1, p2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 84
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    sget v1, Lcom/razorpay/customui/lib/R$layout;->apps_display_grid_element:I

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/razorpay/s$SSss;->$sS$$__s$S$(Landroid/view/ViewGroup;ILandroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method private static $sS$$__s$S$(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 96
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 101
    invoke-static {p0, v1}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 102
    invoke-static {p0, v1}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x6

    .line 103
    invoke-static {p0, v3}, Lcom/razorpay/BaseUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v3

    .line 105
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/razorpay/customui/lib/R$drawable;->razorpay_card:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    sget v1, Lcom/razorpay/customui/lib/R$layout;->app_display_list_heading_tv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 116
    sget v1, Lcom/razorpay/customui/lib/R$id;->text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    :cond_0
    sget v1, Lcom/razorpay/customui/lib/R$layout;->apps_display_list_element:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/razorpay/s$SSss;->$sS$$__s$S$(Landroid/view/ViewGroup;ILandroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method private static $sS$$__s$S$(Landroid/view/ViewGroup;ILandroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/ViewGroup$LayoutParams;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    .line 132
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 133
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 149
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 150
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/razorpay/ApplicationDetails;

    .line 151
    invoke-virtual {v7}, Lcom/razorpay/ApplicationDetails;->getIconBase64()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 152
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v5

    :goto_1
    if-ge v4, v2, :cond_8

    .line 162
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/razorpay/ApplicationDetails;

    if-nez v6, :cond_2

    move-object v7, p0

    move/from16 v10, p1

    goto/16 :goto_3

    .line 168
    :cond_2
    invoke-virtual {v6}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v6}, Lcom/razorpay/ApplicationDetails;->getIconBase64()Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {v6}, Lcom/razorpay/ApplicationDetails;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move/from16 v10, p1

    .line 172
    invoke-virtual {v3, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 173
    sget v11, Lcom/razorpay/customui/lib/R$id;->app_logo:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 174
    sget v12, Lcom/razorpay/customui/lib/R$id;->app_name:I

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v7, :cond_7

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x1

    if-eqz v8, :cond_5

    .line 182
    const-string v14, ","

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 184
    array-length v14, v8

    invoke-static {v8, v5, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    :cond_5
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v9, v13}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v6, p5

    .line 198
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_6

    .line 201
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const v7, 0x101030e

    .line 204
    filled-new-array {v7}, [I

    move-result-object v7

    move-object/from16 v8, p2

    .line 205
    invoke-virtual {v8, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 206
    invoke-virtual {v7, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 207
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, p0

    .line 209
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    :goto_2
    move-object v7, p0

    :goto_3
    move-object/from16 v8, p2

    move-object/from16 v6, p5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;ZI",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 41
    invoke-static/range {v0 .. v5}, Lcom/razorpay/s$SSss;->getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;ZI",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/razorpay/s$SSss;->$sS$$__s$S$(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 53
    :cond_2
    :goto_0
    invoke-static {p0, p1, p3, p4, p5}, Lcom/razorpay/s$SSss;->$sS$$__s$S$(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
