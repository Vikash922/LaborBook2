.class public Lcom/razorpay/AppSelectorFragment;
.super Landroid/app/Fragment;
.source "AppSelectorFragment.java"


# instance fields
.field private $sS$$__s$S$:Landroid/view/View$OnClickListener;

.field filteredUpiPackageToAppDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation
.end field

.field finalOthersApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;

.field otherAppsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field preferredAppsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field remainingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rootView:Landroid/view/View;

.field private s$SSss:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field urlData:Ljava/lang/String;


# direct methods
.method private $sS$$__s$S$()Landroid/view/View;
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/razorpay/AppSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/razorpay/customui/lib/R$layout;->upi_intent_no_apps_found:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 267
    sget v1, Lcom/razorpay/customui/lib/R$id;->btn_go_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 268
    new-instance v2, Lcom/razorpay/AppSelectorFragment$3;

    invoke-direct {v2, p0}, Lcom/razorpay/AppSelectorFragment$3;-><init>(Lcom/razorpay/AppSelectorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private $sS$$__s$S$(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/ApplicationDetails;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 285
    iget-object v3, p0, Lcom/razorpay/AppSelectorFragment;->filteredUpiPackageToAppDetails:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/razorpay/ApplicationDetails;

    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {v3}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {v3}, Lcom/razorpay/ApplicationDetails;->getIconBase64()Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcom/razorpay/AppSelectorFragment$1;

    invoke-direct {v0, p0}, Lcom/razorpay/AppSelectorFragment$1;-><init>(Lcom/razorpay/AppSelectorFragment;)V

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, Lcom/razorpay/AppSelectorFragment$2;

    invoke-direct {v0, p0}, Lcom/razorpay/AppSelectorFragment$2;-><init>(Lcom/razorpay/AppSelectorFragment;)V

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->s$SSss:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private _Ssss$()V
    .locals 3

    .line 315
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 320
    const-string v2, "url_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    const-string v1, "merchant_preferred_upi_apps_order"

    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    const-string v1, "merchant_other_upi_apps_order"

    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    const-string v1, "list_remaining_apps"

    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_3
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CUSTOM_UI_CUSTOM_APP_CHOOSER_SHOWN:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getJSONResponse(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private s$SSss()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->filteredUpiPackageToAppDetails:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/razorpay/ApplicationDetails;

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v2}, Lcom/razorpay/ApplicationDetails;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/razorpay/AppSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/razorpay/OnAppSelectedListener;

    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    invoke-virtual {p0}, Lcom/razorpay/AppSelectorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    const-string v0, "url_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    .line 153
    const-string v0, "merchant_preferred_upi_apps_order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    .line 154
    const-string v0, "merchant_other_upi_apps_order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    .line 155
    const-string v0, "list_remaining_apps"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    .line 158
    const-string v0, "upi_app_details_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/razorpay/AppSelectorFragment;->filteredUpiPackageToAppDetails:Ljava/util/HashMap;

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/razorpay/ApplicationDetails;

    .line 162
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->filteredUpiPackageToAppDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/razorpay/ApplicationDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 176
    invoke-virtual {p0}, Lcom/razorpay/AppSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    sget p3, Lcom/razorpay/customui/lib/R$layout;->upi_intent_activity_selector:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 179
    sget p2, Lcom/razorpay/customui/lib/R$id;->ll_curtain_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 181
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->urlData:Ljava/lang/String;

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->filteredUpiPackageToAppDetails:Ljava/util/HashMap;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_5

    .line 189
    :cond_1
    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 193
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v6, 0x1

    if-eqz p3, :cond_5

    .line 195
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 197
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    .line 199
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 200
    iget-object v1, p0, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$:Landroid/view/View$OnClickListener;

    invoke-static {v0, p3, v6, v3, v1}, Lcom/razorpay/s$SSss;->getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 203
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 206
    iget-object v4, p0, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$:Landroid/view/View$OnClickListener;

    invoke-static {v0, p3, v1, v3, v4}, Lcom/razorpay/s$SSss;->getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 209
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    move v1, v2

    .line 214
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    .line 216
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_6

    .line 218
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->otherAppsOrder:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    if-eqz p3, :cond_7

    .line 221
    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 224
    :cond_6
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_7

    .line 225
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/razorpay/AppSelectorFragment;->remainingApps:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_7
    :goto_2
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->preferredAppsOrder:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_8

    .line 231
    const-string p3, "OTHER APPS"

    goto :goto_3

    .line 234
    :cond_8
    const-string p3, ""

    :goto_3
    move-object v5, p3

    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_9

    .line 235
    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->finalOthersApps:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    .line 237
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    .line 238
    iget-object v4, p0, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$:Landroid/view/View$OnClickListener;

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/razorpay/s$SSss;->getViewToDisplayAppList(Landroid/content/Context;Ljava/util/ArrayList;ZILandroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 241
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    move v6, v1

    :cond_a
    :goto_4
    if-nez v6, :cond_b

    .line 248
    invoke-direct {p0}, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 251
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lcom/razorpay/AppSelectorFragment;->s$SSss:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->rootView:Landroid/view/View;

    .line 255
    invoke-direct {p0}, Lcom/razorpay/AppSelectorFragment;->_Ssss$()V

    return-object p1

    .line 186
    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/razorpay/AppSelectorFragment;->$sS$$__s$S$()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method setAppSelectListener(Lcom/razorpay/OnAppSelectedListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/razorpay/AppSelectorFragment;->onAppSelectedListener:Lcom/razorpay/OnAppSelectedListener;

    return-void
.end method
