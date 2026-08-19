.class final Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ProtectedModeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/integrity/ProtectedModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;

    invoke-direct {v0}, Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;-><init>()V

    sput-object v0, Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;->INSTANCE:Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/facebook/appevents/integrity/ProtectedModeManager$defaultStandardParameterNames$2;->invoke()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x7c

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_currency"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    const-string v2, "_valueToSum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "fb_availability"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "fb_body_style"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "fb_checkin_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "fb_checkout_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "fb_city"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "fb_condition_of_vehicle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "fb_content_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 34
    const-string v2, "fb_content_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string v2, "fb_contents"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 36
    const-string v2, "fb_country"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 37
    const-string v2, "fb_currency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 38
    const-string v2, "fb_delivery_category"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 39
    const-string v2, "fb_departing_arrival_date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 40
    const-string v2, "fb_departing_departure_date"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 41
    const-string v2, "fb_destination_airport"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 42
    const-string v2, "fb_destination_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 43
    const-string v2, "fb_dma_code"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 44
    const-string v2, "fb_drivetrain"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 45
    const-string v2, "fb_exterior_color"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 46
    const-string v2, "fb_fuel_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 47
    const-string v2, "fb_hotel_score"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 48
    const-string v2, "fb_interior_color"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 49
    const-string v2, "fb_lease_end_date"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 50
    const-string v2, "fb_lease_start_date"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 51
    const-string v2, "fb_listing_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 52
    const-string v2, "fb_make"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 53
    const-string v2, "fb_mileage.unit"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 54
    const-string v2, "fb_mileage.value"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 55
    const-string v2, "fb_model"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 56
    const-string v2, "fb_neighborhood"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 57
    const-string v2, "fb_num_adults"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 58
    const-string v2, "fb_num_children"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 59
    const-string v2, "fb_num_infants"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 60
    const-string v2, "fb_num_items"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 61
    const-string v2, "fb_order_id"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 62
    const-string v2, "fb_origin_airport"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 63
    const-string v2, "fb_postal_code"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 64
    const-string v2, "fb_predicted_ltv"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 65
    const-string v2, "fb_preferred_baths_range"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 66
    const-string v2, "fb_preferred_beds_range"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 67
    const-string v2, "fb_preferred_neighborhoods"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 68
    const-string v2, "fb_preferred_num_stops"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 69
    const-string v2, "fb_preferred_price_range"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 70
    const-string v2, "fb_preferred_star_ratings"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 71
    const-string v2, "fb_price"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 72
    const-string v2, "fb_property_type"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 73
    const-string v2, "fb_region"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 74
    const-string v2, "fb_returning_arrival_date"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 75
    const-string v2, "fb_returning_departure_date"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 76
    const-string v2, "fb_state_of_vehicle"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 77
    const-string v2, "fb_suggested_destinations"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 78
    const-string v2, "fb_suggested_home_listings"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 79
    const-string v2, "fb_suggested_hotels"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 80
    const-string v2, "fb_suggested_jobs"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 81
    const-string v2, "fb_suggested_local_service_businesses"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 82
    const-string v2, "fb_suggested_location_based_items"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 83
    const-string v2, "fb_suggested_vehicles"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 84
    const-string v2, "fb_transmission"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 85
    const-string v2, "fb_travel_class"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 86
    const-string v2, "fb_travel_end"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 87
    const-string v2, "fb_travel_start"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 88
    const-string v2, "fb_trim"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 89
    const-string v2, "fb_user_bucket"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 90
    const-string v2, "fb_value"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 91
    const-string v2, "fb_vin"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 92
    const-string v2, "fb_year"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 93
    const-string v2, "lead_event_source"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 94
    const-string v2, "predicted_ltv"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 95
    const-string v2, "product_catalog_id"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 98
    const-string v2, "app_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 99
    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 100
    const-string v2, "_eventName"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 101
    const-string v2, "_eventName_md5"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 103
    const-string v2, "_implicitlyLogged"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 104
    const-string v2, "_inBackground"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 105
    const-string v2, "_isTimedEvent"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 106
    const-string v2, "_logTime"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 108
    const-string v2, "_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 109
    const-string v2, "_ui"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 111
    const-string v2, "_valueToUpdate"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 112
    const-string v2, "_is_fb_codeless"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 113
    const-string v2, "_is_suggested_event"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 114
    const-string v2, "_fb_pixel_referral_id"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 115
    const-string v2, "fb_pixel_id"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 116
    const-string/jumbo v2, "trace_id"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 117
    const-string/jumbo v2, "subscription_id"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 119
    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 120
    const-string v2, "_restrictedParams"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 121
    const-string v2, "_onDeviceParams"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 122
    const-string v2, "purchase_valid_result_type"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 123
    const-string v2, "core_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 124
    const-string v2, "login_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 125
    const-string/jumbo v2, "share_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 126
    const-string v2, "place_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 127
    const-string v2, "messenger_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 128
    const-string v2, "applinks_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 129
    const-string v2, "marketing_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 130
    const-string v2, "_codeless_action"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 131
    const-string v2, "sdk_initialized"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 132
    const-string v2, "billing_client_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 133
    const-string v2, "billing_service_lib_included"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 134
    const-string/jumbo v2, "user_data_keys"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 135
    const-string v2, "device_push_token"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 136
    const-string v2, "fb_mobile_pckg_fp"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 137
    const-string v2, "fb_mobile_app_cert_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 138
    const-string v2, "aggregate_id"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 139
    const-string v2, "anonymous_id"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 140
    const-string v2, "campaign_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 143
    const-string v2, "fb_post_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 144
    const-string v2, "receipt_data"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 147
    const-string v2, "ad_type"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 148
    const-string v2, "fb_content"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 149
    const-string v2, "fb_content_id"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 152
    const-string v2, "fb_description"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 153
    const-string v2, "fb_level"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 154
    const-string v2, "fb_max_rating_value"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 157
    const-string v2, "fb_payment_info_available"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 158
    const-string v2, "fb_registration_method"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 160
    const-string v2, "fb_success"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 161
    const-string v2, "pm"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 162
    const-string v2, "_audiencePropertyIds"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 163
    const-string v2, "cs_maca"

    aput-object v2, v0, v1

    .line 24
    invoke-static {v0}, Lkotlin/collections/SetsKt;->hashSetOf([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
