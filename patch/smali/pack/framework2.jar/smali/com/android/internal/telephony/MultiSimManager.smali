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

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-array v0, v5, [Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    .line 86
    sput v3, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    .line 88
    sput-boolean v3, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    .line 89
    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    .line 100
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

    .line 103
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

    .line 106
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

    .line 113
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

    .line 158
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

    .line 233
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "rild"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MultiSimManager;->APPEND_SOCKET_NAME_SIMSLOT_LIST:Ljava/util/List;

    .line 245
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

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 471
    move-object v0, p0

    .line 473
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 449
    move-object v0, p0

    .line 451
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static appendSocketNameSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 492
    move-object v0, p0

    .line 494
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method private static booleanFeatureBuildCarrier(II)Z
    .locals 5
    .param p0, "feature"    # I
    .param p1, "simSlot"    # I

    .prologue
    const/4 v4, 0x1

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "result":Z
    const-string/jumbo v2, "ro.product.name"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "buildcarrier":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 576
    const/4 v1, 0x0

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 550
    :pswitch_0
    const/4 v1, 0x1

    .line 551
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

    .line 559
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 563
    :pswitch_1
    const/4 v1, 0x1

    .line 564
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

    .line 572
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkSimChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v7, 0x1

    .line 833
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

    .line 835
    const-string/jumbo v4, "ril.isSimProfileFinished"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "isSimProfileFinished":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 884
    :goto_0
    return-void

    .line 840
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    new-instance v5, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-direct {v5, p1, p2}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, p3

    .line 841
    const-string v4, "MultiSimManager"

    const-string v5, "checkSimChanged()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    .line 846
    .local v3, "simNum":I
    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mInsertedSimCount:I

    if-eq v3, v4, :cond_1

    .line 847
    const-string v4, "MultiSimManager"

    const-string/jumbo v5, "not yet..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->loadSimProfileTable(Landroid/content/Context;)V

    .line 853
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->loadSimProfileIdx(Landroid/content/Context;)V

    .line 855
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->processSimProfile()Z

    move-result v4

    if-ne v4, v7, :cond_3

    .line 856
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->saveSimProfileTable(Landroid/content/Context;)V

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 859
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsChanged:Z

    if-ne v4, v7, :cond_2

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 863
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

    .line 858
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    .end local v0    # "i":I
    :cond_3
    const-string v4, "MultiSimManager"

    const-string v5, "already have."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_4
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->saveSimProfileIdx(Landroid/content/Context;)V

    .line 872
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_6

    .line 873
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mOldSimSlotIndex:[I

    aget v4, v4, v0

    sget-object v5, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_5

    .line 874
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_SIMCARD_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "simSlot"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 877
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

    .line 872
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 881
    :cond_6
    const-string v4, "MultiSimManager"

    const-string v5, "loaded simprofile finish."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_MULTISIM_SIM_PROFILE_LOADED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private static containsSimProfile(Lcom/android/internal/telephony/MultiSimManager$SimProfile;)I
    .locals 3
    .param p0, "simProfile"    # Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    .prologue
    .line 785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 786
    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsInserted:Z

    .line 791
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 785
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static featureSimSlot(II)Z
    .locals 1
    .param p0, "feature"    # I
    .param p1, "simSlot"    # I

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 517
    .local v0, "result":Z
    packed-switch p0, :pswitch_data_0

    .line 525
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    .line 519
    :pswitch_0
    const/4 v0, 0x1

    .line 520
    goto :goto_0

    .line 522
    :pswitch_1
    const/4 v0, 0x1

    .line 523
    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getActivatedSimNum()I
    .locals 6

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 347
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v3

    .line 348
    .local v3, "simState":I
    const-string v4, "gsm.network.type"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "network_type":Ljava/lang/String;
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "Unknown:0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 346
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "network_type":Ljava/lang/String;
    .end local v3    # "simState":I
    :cond_1
    return v0
.end method

.method public static getActivatedSimNum(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 363
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    add-int/lit8 v0, v0, 0x1

    .line 362
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static getDefaultSimSlot()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static getIndexSimProfile(I)I
    .locals 4
    .param p0, "simSlot"    # I

    .prologue
    const/4 v1, -0x1

    .line 775
    const-string/jumbo v2, "ril.isSimProfileFinished"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "isSimProfileFinished":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    const-string v2, "MultiSimManager"

    const-string/jumbo v3, "ril.isSimProfileFinished property not set"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
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

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 334
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static getIsSIMOn(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 655
    .local v0, "simActive":I
    if-ne v0, v1, :cond_0

    .line 658
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLogicalSimSlot(I)I
    .locals 4
    .param p0, "simSlot"    # I

    .prologue
    .line 426
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_2

    .line 427
    :cond_0
    const/4 v0, -0x1

    .line 435
    :cond_1
    :goto_0
    return v0

    .line 429
    :cond_2
    const-string/jumbo v2, "ril.MSIMM"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "masterSim":I
    sub-int v0, p0, v1

    .line 431
    .local v0, "logicalSimSlot":I
    if-gez v0, :cond_1

    .line 432
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static getPhysicalSimSlot(I)I
    .locals 6
    .param p0, "simSlot"    # I

    .prologue
    .line 406
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-lt p0, v3, :cond_2

    .line 407
    :cond_0
    const/4 v2, -0x1

    .line 422
    :cond_1
    :goto_0
    return v2

    .line 409
    :cond_2
    const-string/jumbo v3, "ril.MSIMM"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, "masterSim":I
    add-int v2, p0, v1

    .line 412
    .local v2, "physicalSimSlot":I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 413
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 415
    :cond_3
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, p0}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "iccType":Ljava/lang/String;
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

    .line 417
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSimCardIcon(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 621
    .local v0, "simIcon":I
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

    .line 622
    if-gez v0, :cond_0

    .line 623
    packed-switch p1, :pswitch_data_0

    .line 640
    const/4 v0, 0x0

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 625
    :pswitch_0
    const/4 v0, 0x0

    .line 626
    goto :goto_0

    .line 628
    :pswitch_1
    const/4 v0, 0x1

    .line 629
    goto :goto_0

    .line 631
    :pswitch_2
    const/4 v0, 0x2

    .line 632
    goto :goto_0

    .line 634
    :pswitch_3
    const/4 v0, 0x3

    .line 635
    goto :goto_0

    .line 637
    :pswitch_4
    const/4 v0, 0x4

    .line 638
    goto :goto_0

    .line 623
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "simName":Ljava/lang/String;
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

    .line 588
    if-nez v0, :cond_0

    .line 589
    packed-switch p1, :pswitch_data_0

    .line 606
    const-string v0, "SIM 1"

    .line 611
    :cond_0
    :goto_0
    return-object v0

    .line 591
    :pswitch_0
    const-string v0, "SIM 1"

    .line 592
    goto :goto_0

    .line 594
    :pswitch_1
    const-string v0, "SIM 2"

    .line 595
    goto :goto_0

    .line 597
    :pswitch_2
    const-string v0, "SIM 3"

    .line 598
    goto :goto_0

    .line 600
    :pswitch_3
    const-string v0, "SIM 4"

    .line 601
    goto :goto_0

    .line 603
    :pswitch_4
    const-string v0, "SIM 5"

    .line 604
    goto :goto_0

    .line 589
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

    .prologue
    const/4 v2, 0x1

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "simslot_count":I
    sget-boolean v1, Lcom/android/internal/telephony/MultiSimManager;->ENG_BUILD:Z

    if-nez v1, :cond_0

    .line 288
    const-string/jumbo v1, "ro.multisim.simslotcount"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 290
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    if-ne v1, v2, :cond_1

    .line 291
    sget v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotToggleFile()I

    move-result v0

    .line 294
    sput-boolean v2, Lcom/android/internal/telephony/MultiSimManager;->mReadFromFile:Z

    .line 296
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 297
    const-string/jumbo v1, "ro.multisim.simslotcount"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    .line 299
    :cond_2
    sget v1, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    goto :goto_0
.end method

.method public static getSimSlotGPIO()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "simslotCount":I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    .line 241
    return v0
.end method

.method public static getSimSlotToggleFile()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "simslotCount":I
    const/4 v0, 0x0

    .line 255
    .local v0, "buf":Ljava/io/BufferedReader;
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

    .line 256
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-nez v1, :cond_2

    .line 269
    if-eqz v1, :cond_0

    .line 270
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v0, v1

    .line 280
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v4

    .line 272
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 274
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 258
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 259
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

    .line 260
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    if-eqz v1, :cond_3

    .line 270
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    :cond_3
    sput v3, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    .line 280
    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotCount:I

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 272
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 274
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 272
    :catch_3
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 272
    :catch_5
    move-exception v2

    .line 273
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 269
    :goto_3
    if-eqz v0, :cond_4

    .line 270
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 274
    :cond_4
    throw v5

    .line 272
    :catch_6
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "MultiSimManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 264
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 261
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public static getTelephonyManagerFromDataPrefer()Landroid/telephony/TelephonyManager;
    .locals 4

    .prologue
    .line 439
    const-string/jumbo v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, "dataPreferSimSlot":I
    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v1

    .line 441
    .local v1, "logicalSimSlot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 442
    const/4 v1, 0x1

    .line 445
    :cond_0
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    return-object v2
.end method

.method public static isActivatedSimSlot(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x0

    .line 385
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "iccType":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInsertedSimSlot(I)Z
    .locals 4
    .param p0, "simSlot"    # I

    .prologue
    const/4 v1, 0x0

    .line 373
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "iccType":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMultiSimSlot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
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

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 317
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "iccType":Ljava/lang/String;
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

    .line 319
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    .line 316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 324
    const/4 v3, 0x1

    .line 327
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSimProfileFinished()Z
    .locals 3

    .prologue
    .line 766
    const-string/jumbo v1, "ril.isSimProfileFinished"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "isSimProfileFinished":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const/4 v1, 0x0

    .line 771
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static loadSimProfileIdx(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 735
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 738
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 740
    .local v2, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 741
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

    .line 742
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

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
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

    .line 746
    return-void
.end method

.method private static loadSimProfileTable(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 699
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 702
    .local v3, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    .line 703
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

    .line 704
    .local v0, "iccId":Ljava/lang/String;
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

    .line 705
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 706
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    new-instance v5, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 702
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "iccId":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_1
    const-string v4, "MULTISIMPROFILE_CURSOR"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    .line 710
    return-void
.end method

.method private static processSimProfile()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 795
    const/4 v2, 0x0

    .line 796
    .local v2, "isChangeSimProfile":Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    .line 798
    .local v3, "simNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 799
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/internal/telephony/MultiSimManager;->containsSimProfile(Lcom/android/internal/telephony/MultiSimManager$SimProfile;)I

    move-result v0

    .line 800
    .local v0, "containsIndex":I
    if-ne v0, v7, :cond_1

    .line 802
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

    .line 803
    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    goto :goto_1

    .line 806
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    iput-boolean v8, v4, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIsChanged:Z

    .line 807
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->setTableIndex(I)V

    .line 808
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    aput v5, v4, v1

    .line 809
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

    .line 810
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

    .line 811
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileTable:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    sget v5, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    sget-object v6, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v6, v6, v1

    aput-object v6, v4, v5

    .line 812
    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    sput v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    .line 814
    const/4 v2, 0x1

    .line 798
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 816
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimProfileSimSlot:[Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->setTableIndex(I)V

    .line 817
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aput v0, v4, v1

    .line 818
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

    .line 819
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

    .line 823
    .end local v0    # "containsIndex":I
    :cond_2
    move v1, v3

    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 824
    sget-object v4, Lcom/android/internal/telephony/MultiSimManager;->mSimSlotIndex:[I

    aput v7, v4, v1

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 827
    :cond_3
    const-string/jumbo v4, "ril.isSimProfileFinished"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return v2
.end method

.method private static saveSimProfileIdx(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 751
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 753
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, ""

    .line 755
    .local v3, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "simSlot":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 756
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

    .line 757
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

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 762
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

    .line 763
    return-void
.end method

.method private static saveSimProfileTable(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 717
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "simSlot":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 719
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

    .line 722
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

    .line 724
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

    .line 718
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    :cond_1
    const-string v3, "MULTISIMPROFILE_CURSOR"

    sget v4, Lcom/android/internal/telephony/MultiSimManager;->mCursor:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 732
    return-void
.end method

.method public static setIsSIMOn(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 662
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

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/android/internal/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimCardIcon(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "icon"    # I

    .prologue
    .line 649
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

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    return-void
.end method

.method public static setSimCardName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 616
    return-void
.end method
