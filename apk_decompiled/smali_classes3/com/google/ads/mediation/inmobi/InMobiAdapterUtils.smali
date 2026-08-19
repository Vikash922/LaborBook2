.class public Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;
.super Ljava/lang/Object;
.source "InMobiAdapterUtils.java"


# static fields
.field public static final COPPA:Ljava/lang/String; = "coppa"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "accountid"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementid"

.field public static final PROTOCOL_RTB:Ljava/lang/String; = "c_google"

.field public static final PROTOCOL_WATERFALL:Ljava/lang/String; = "c_admob"

.field public static final THIRD_PARTY_KEY:Ljava/lang/String; = "tp"

.field public static final THIRD_PARTY_VERSION:Ljava/lang/String; = "tp-ver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureGlobalTargeting(Landroid/os/Bundle;)V
    .locals 8

    if-nez p0, :cond_0

    .line 74
    sget-object p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Bundle extras are null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    const-string v7, "AREA_CODE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    invoke-static {v6}, Lcom/inmobi/sdk/InMobiSdk;->setAreaCode(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v7, "AGE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setAge(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 94
    sget-object v6, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v7, "Please Set age properly"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    :cond_3
    const-string v7, "POSTAL_CODE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-static {v6}, Lcom/inmobi/sdk/InMobiSdk;->setPostalCode(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v7, "LANGUAGE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    invoke-static {v6}, Lcom/inmobi/sdk/InMobiSdk;->setLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_5
    const-string v7, "CITY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v2, v6

    goto :goto_0

    .line 106
    :cond_6
    const-string v7, "STATE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v3, v6

    goto :goto_0

    .line 108
    :cond_7
    const-string v7, "COUNTRY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v4, v6

    goto/16 :goto_0

    .line 110
    :cond_8
    const-string v7, "AGE_GROUP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v6, :cond_1

    .line 112
    invoke-static {v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getAgeGroup(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 114
    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V

    goto/16 :goto_0

    .line 117
    :cond_9
    const-string v7, "EDUCATION"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_1

    .line 119
    invoke-static {v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getEducation(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Education;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 121
    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V

    goto/16 :goto_0

    .line 124
    :cond_a
    const-string v7, "LOGLEVEL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v6, :cond_b

    .line 126
    invoke-static {v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->getLogLevel(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    goto/16 :goto_0

    .line 128
    :cond_b
    sget-object v5, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->NONE:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    goto/16 :goto_0

    .line 130
    :cond_c
    const-string v7, "INTERESTS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-static {v6}, Lcom/inmobi/sdk/InMobiSdk;->setInterests(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_d
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 137
    invoke-static {v2, v3, v4}, Lcom/inmobi/sdk/InMobiSdk;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static findClosestBannerSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 4

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MediationUtils;->findClosestSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method static getAgeGroup(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    .locals 2

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BETWEEN_18_AND_24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "BETWEEN_35_AND_44"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "BETWEEN_30_AND_34"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "BETWEEN_45_AND_54"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "BETWEEN_25_AND_29"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "BELOW_18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "ABOVE_65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "BETWEEN_55_AND_65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :pswitch_0
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_18_AND_24:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 172
    :pswitch_1
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_35_AND_44:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 170
    :pswitch_2
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_30_AND_34:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 174
    :pswitch_3
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_45_AND_54:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 168
    :pswitch_4
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_25_AND_29:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 164
    :pswitch_5
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BELOW_18:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 162
    :pswitch_6
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->ABOVE_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    .line 176
    :pswitch_7
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_55_AND_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fd40ed1 -> :sswitch_7
        -0x70cccd3f -> :sswitch_6
        -0x6fb1eeeb -> :sswitch_5
        -0x3ca15c4c -> :sswitch_4
        -0x14187df2 -> :sswitch_3
        0x503d3274 -> :sswitch_2
        0x57a312ee -> :sswitch_1
        0x66bdbb4b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getEducation(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Education;
    .locals 2

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "EDUCATION_HIGHSCHOOLORLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "EDUCATION_POSTGRADUATEORABOVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "EDUCATION_COLLEGEORGRADUATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 187
    :pswitch_0
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$Education;->HIGH_SCHOOL_OR_LESS:Lcom/inmobi/sdk/InMobiSdk$Education;

    return-object p0

    .line 189
    :pswitch_1
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$Education;->POST_GRADUATE_OR_ABOVE:Lcom/inmobi/sdk/InMobiSdk$Education;

    return-object p0

    .line 185
    :pswitch_2
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$Education;->COLLEGE_OR_GRADUATE:Lcom/inmobi/sdk/InMobiSdk$Education;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x789ee812 -> :sswitch_2
        0x4da71bf8 -> :sswitch_1
        0x5abd40e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getLogLevel(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$LogLevel;
    .locals 1

    .line 196
    const-string v0, "LOGLEVEL_DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    return-object p0

    .line 199
    :cond_0
    const-string v0, "LOGLEVEL_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 200
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->ERROR:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    return-object p0

    .line 202
    :cond_1
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->NONE:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    return-object p0
.end method

.method public static getMediationErrorCode(Lcom/inmobi/ads/InMobiAdRequestStatus;)I
    .locals 1

    .line 224
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils$1;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x63

    return p0

    :pswitch_0
    const/16 p0, 0x14

    return p0

    :pswitch_1
    const/16 p0, 0x13

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0xf

    return p0

    :pswitch_6
    const/16 p0, 0xe

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x7

    return p0

    :pswitch_e
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_13
    const/4 p0, 0x1

    return p0

    :pswitch_14
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPlacementId(Landroid/os/Bundle;)J
    .locals 4

    .line 57
    const-string v0, "placementid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    sget-object p0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Missing or invalid Placement ID."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Invalid Placement ID."

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v1
.end method

.method public static isValidNativeAd(Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;)Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdCtaText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/google/ads/mediation/inmobi/InMobiNativeWrapper;->getAdTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setIsAgeRestricted()V
    .locals 1

    .line 155
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;-><init>()V

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->setIsAgeRestricted(Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;)V

    return-void
.end method

.method static setIsAgeRestricted(Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->setIsAgeRestricted(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiSdkWrapper;->setIsAgeRestricted(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public static validateInMobiAdLoadParams(Ljava/lang/String;J)Lcom/google/android/gms/ads/AdError;
    .locals 2

    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const/16 p0, 0x64

    .line 284
    const-string p1, "Missing or invalid Account ID or Placement ID for this ad source instance in the AdMob or Ad Manager UI."

    invoke-static {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p0

    .line 287
    sget-object p1, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
