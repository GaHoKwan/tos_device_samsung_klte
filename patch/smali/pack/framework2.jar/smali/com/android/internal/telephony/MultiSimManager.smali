.class public Lcom/android/internal/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MultiSimManager$SimProfile;,
        Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;
    }
.end annotation


# static fields
.field public static final ACTION_MULTISIM_SIM_PROFILE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_CHANGED"

.field public static final ACTION_MULTISIM_SIM_PROFILE_LOADED:Ljava/lang/String; = "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_LOADED"

.field public static final ACTION_MULTISIM_SIM_PROFILE_SIMCARD_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_SIMCARD_CHANGED"

.field private static final APPEND_PROPERTY_SIMSLOT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPEND_SIMSLOT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURSOR:Ljava/lang/String; = "MULTISIMPROFILE_CURSOR"

.field private static final EMULATE_SIM_TOGGLE_PATH:Ljava/lang/String; = "/data/simslot_count"

.field static final ENG_BUILD:Z

.field private static final ICCID:Ljava/lang/String; = "MULTISIMPROFILE_ICCID"

.field private static final IMSI:Ljava/lang/String; = "MULTISIMPROFILE_IMSI"

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field private static final MAX_SIM_PROFILE_MAX:I = 0x5

.field public static final SEC_PRODUCT_FEATURE_END:I = 0x67

.field public static final SEC_PRODUCT_FEATURE_RIL_SIM_MULTI_APPS_SUPPORT:I = 0x65

.field public static final SEC_PRODUCT_FEATURE_RIL_STK_QMI_RIL:I = 0x66

.field public static final SEC_PRODUCT_FEATURE_START:I = 0x64

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static mCursor:I

.field private static mInsertedSimCount:I

.field private static mOldSimSlotIndex:[I

.field public static final mPhoneOnKey:[Ljava/lang/String;

.field private static mReadFromFile:Z

.field public static final mSimIconKey:[Ljava/lang/String;

.field public static final mSimNameKey:[Ljava/lang/String;

.field private static mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

.field private static mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

.field private static mSimSlotCount:I

.field private static mSimSlotIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    sput v3, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    sput-boolean v3, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "select_name_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_name_2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_name_3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "select_name_4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "select_name_5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "select_icon_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_icon_2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_icon_3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "select_icon_4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "select_icon_5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "phone1_on"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone2_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone3_on"

    aput-object v1, v0, v6

    const-string/jumbo v1, "phone4_on"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "phone5_on"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "phone"

    aput-object v1, v0, v3

    const-string v1, "iphonesubinfo"

    aput-object v1, v0, v4

    const-string/jumbo v1, "simphonebook"

    aput-object v1, v0, v6

    const-string/jumbo v1, "telephony.registry"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "isms"

    aput-object v2, v0, v1

    const-string/jumbo v1, "phoneext"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content://icc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content://telephony/carriers/preferapn_no_update"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content://telephony/carriers/preferapn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "apn_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "gsm.STK_SETUP_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "settings_simtab"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.intent.action.stk.start_main_activity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DCT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GsmSST"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GSMPhone"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "UiccCard"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "IccCardProxy"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UiccController"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SIMRecords"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GsmCallTracker"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PhoneProxy"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "mobile_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "data_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "mms"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "gsm.sim.operator.numeric"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "gsm.operator.isroaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "gsm.sim.state"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "current"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ril.ICC_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "content://telephony/carriers/restore"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "content://telephony/carriers/current"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SIMSLOT_LIST:Ljava/util/List;

    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.current.phone-type"

    aput-object v1, v0, v3

    const-string v1, "gsm.operator.alpha"

    aput-object v1, v0, v4

    const-string v1, "gsm.operator.numeric"

    aput-object v1, v0, v6

    const-string v1, "gsm.operator.isroaming"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "gsm.operator.iso-country"

    aput-object v2, v0, v1

    const-string v1, "gsm.sim.state"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "gsm.sim.operator.numeric"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gsm.sim.operator.alpha"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gsm.sim.operator.iso-country"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "persist.radio.networktype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gsm.network.type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ro.telephony.call_ring.multiple"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "ro.telephony.call_ring.delay"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ro.ril.wake_lock_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ril.cdma.inecmmode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "ro.cdma.otaspnumschema"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "persist.radio.icc.cb.lang"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "persist.radio.icc.cb.list"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "persist.radio.icc.cb.count"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "ro.telephony.disable-call"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "gsm.airplain.gsm"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gsm.version.baseband"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "gsm.airplain.cdma"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gsm.sim.unknownready"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "ril.ecclist"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "ril.ecclist0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ril.ecclist1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "ro.ril.ecclist"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "ril.ICC_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "ril.setSub"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "ril.servicestate"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ril.initPB"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "current"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "network_selection_key"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "network_selection_name_key"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "clir_key"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "vm_number_key"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "vm_sim_imsi_key"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "key_iccid"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "ril.isIccChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "cf_imsikey"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "cf_iconkey_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "cf_iconkey_video"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "gsm.sim.roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IMSI"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "ril.simprofileIdx"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "fdn_internet"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "area_code_value"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "area_code_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "gsm.sim.VMumberCSC"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "gsm.sim.newCheck"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "gsm.sim.availability"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "gsm.sim.pplock"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "gsm.sim.cardnoti"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "gsm.sim.cardname"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "gsm.sim.icon"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "gsm.sim.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "gsm.sim.currentcardstatus"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "gsm.sim.active"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "ril.cardnoti"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "gsm.voice.network.type"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_PROPERTY_SIMSLOT_LIST:Ljava/util/List;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "rild"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List;

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MultiSimManager;->ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    move-object v0, p0

    return-object v0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    move-object v0, p0

    return-object v0
.end method

.method public static appendSocketNameSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    move-object v0, p0

    return-object v0
.end method

.method private static booleanFeatureBuildCarrier(II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.product.name"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    const-string v2, "h3gduoszn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq p1, v4, :cond_8

    :cond_1
    const-string v2, "h3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p1, v4, :cond_8

    :cond_2
    const-string v2, "ja3gchnduos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p1, v4, :cond_8

    :cond_3
    const-string v2, "ja3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eq p1, v4, :cond_8

    :cond_4
    const-string/jumbo v2, "vikal3gduoszn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq p1, v4, :cond_8

    :cond_5
    const-string/jumbo v2, "vikal3gzm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eq p1, v4, :cond_8

    :cond_6
    const-string/jumbo v2, "montblanc3gctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eq p1, v4, :cond_8

    :cond_7
    const-string v2, "k3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v4, :cond_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    const-string v2, "h3gduoszn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eq p1, v4, :cond_10

    :cond_9
    const-string v2, "h3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq p1, v4, :cond_10

    :cond_a
    const-string v2, "ja3gchnduos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eq p1, v4, :cond_10

    :cond_b
    const-string v2, "ja3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eq p1, v4, :cond_10

    :cond_c
    const-string/jumbo v2, "vikal3gduoszn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eq p1, v4, :cond_10

    :cond_d
    const-string/jumbo v2, "vikal3gzm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eq p1, v4, :cond_10

    :cond_e
    const-string/jumbo v2, "montblanc3gctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eq p1, v4, :cond_10

    :cond_f
    const-string v2, "k3gduosctc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v4, :cond_0

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkSimChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "called checkSimChanged() method, simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ril.isSimProfileFinished"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    new-instance v5, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-direct {v5, p1, p2}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, p3

    const-string v4, "MultiSimManager"

    const-string v5, "checkSimChanged()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    if-eq v3, v4, :cond_1

    const-string v4, "MultiSimManager"

    const-string/jumbo v5, "not yet..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->loadSimProfileTable(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->loadSimProfileIdx(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->processSimProfile()Z

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->saveSimProfileTable(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsChanged:Z

    if-ne v4, v7, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "MultiSimManager"

    const-string v5, "already have."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->saveSimProfileIdx(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    aget v4, v4, v0

    sget-object v5, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_SIMCARD_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "simcard changed simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string v4, "MultiSimManager"

    const-string v5, "loaded simprofile finish."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_LOADED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private static containsSimProfile(Lcom/android/internal/telephony/MultiSimManager$SimProfile;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsInserted:Z

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static featureSimSlot(II)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getActivatedSimNum()I
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v3

    const-string v4, "gsm.network.type"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "Unknown:0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getActivatedSimNum(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getDefaultSimSlot()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getIndexSimProfile(I)I
    .locals 4

    const/4 v1, -0x1

    const-string/jumbo v2, "ril.isSimProfileFinished"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MultiSimManager"

    const-string/jumbo v3, "ril.isSimProfileFinished property not set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "ril.simprofileIdx"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getInsertedSimNum()I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getIsSIMOn(Landroid/content/Context;I)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLogicalSimSlot(I)I
    .locals 4

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, "ril.MSIMM"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v0, p0, v1

    if-gez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static getPhysicalSimSlot(I)I
    .locals 6

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-lt p0, v3, :cond_2

    :cond_0
    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string/jumbo v3, "ril.MSIMM"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int v2, p0, v1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, p0}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhysicalSimSlot() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSimCardIcon(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "SIM 1"

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIM 1"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIM 2"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIM 3"

    goto :goto_0

    :pswitch_3
    const-string v0, "SIM 4"

    goto :goto_0

    :pswitch_4
    const-string v0, "SIM 5"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimSlotCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/internal/telephony/MultiSimManager;->ENG_BUILD:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "ro.multisim.simslotcount"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotToggleFile()I

    move-result v0

    sput-boolean v2, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "ro.multisim.simslotcount"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    :cond_2
    sget v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    goto :goto_0
.end method

.method public static getSimSlotGPIO()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    return v0
.end method

.method public static getSimSlotToggleFile()I
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/simslot_count"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return v4

    :catch_0
    move-exception v2

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim slot count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    sput v3, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_1
    :try_start_4
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v2

    :goto_2
    :try_start_6
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    throw v5

    :catch_6
    move-exception v2

    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_8
    move-exception v2

    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static getTelephonyManagerFromDataPrefer()Landroid/telephony/TelephonyManager;
    .locals 4

    const-string/jumbo v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    return-object v2
.end method

.method public static isActivatedSimSlot(Landroid/content/Context;I)Z
    .locals 4

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInsertedSimSlot(I)Z
    .locals 4

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMultiSimSlot()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSIM()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoSIM() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSimProfileFinished()Z
    .locals 3

    const-string/jumbo v1, "ril.isSimProfileFinished"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static loadSimProfileIdx(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ril.simprofileIdx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[simSlot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "MultiSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSimProfileIdx(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loadSimProfileTable(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTISIMPROFILE_ICCID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTISIMPROFILE_IMSI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    new-instance v5, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "MULTISIMPROFILE_CURSOR"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    return-void
.end method

.method private static processSimProfile()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/internal/telephony/MultiSimManager;->containsSimProfile(Lcom/android/internal/telephony/MultiSimManager$SimProfile;)I

    move-result v0

    if-ne v0, v7, :cond_1

    :goto_1
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsInserted:Z

    if-ne v4, v8, :cond_0

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    iput-boolean v8, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsChanged:Z

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->setTableIndex(I)V

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    aput v5, v4, v1

    const-string/jumbo v4, "ril.simprofileIdx"

    invoke-static {v4, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processSimProfile() if : mSimProfileSimSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].setTableIndex() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    sget-object v6, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v6, v6, v1

    aput-object v6, v4, v5

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->setTableIndex(I)V

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aput v0, v4, v1

    const-string/jumbo v4, "ril.simprofileIdx"

    invoke-static {v4, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processSimProfile() else : mSimProfileSimSlot["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].setTableIndex() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v4, "ril.isSimProfileFinished"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static saveSimProfileIdx(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, ""

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ril.simprofileIdx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aget v5, v5, v1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[simSlot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "MultiSimManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveSimProfileIdx(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static saveSimProfileTable(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIccId:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mImsi:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MULTISIMPROFILE_ICCID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MULTISIMPROFILE_IMSI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mImsi:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "MULTISIMPROFILE_CURSOR"

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIsSIMOn(Landroid/content/Context;IZ)V
    .locals 3

    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 1 change the set turned on or off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimCardIcon(Landroid/content/Context;II)V
    .locals 3

    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSimCardName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
