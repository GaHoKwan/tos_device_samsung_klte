.class public Lcom/movial/ipphone/IPUtils;
.super Ljava/lang/Object;
.source "IPUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPUtils$EmergencyState;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVATE_IMS:Ljava/lang/String; = "com.movial.ACTION_ACTIVATE_IMS"

.field public static final ACTION_DEACTIVATE_IMS:Ljava/lang/String; = "com.movial.ACTION_DEACTIVATE_IMS"

.field public static final ACTION_RADIO_ON:Ljava/lang/String; = "com.movial.ACTION_RADIO_ON"

.field public static final ACTION_REREAD_ISIM:Ljava/lang/String; = "com.movial.ACTION_REREAD_ISIM"

.field public static final ACTION_TERMINATE_STACK:Ljava/lang/String; = "com.movial.ACTION_TERMINATE_STACK"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.movial.ACTION_UPDATE_NOTIFICATION"

.field public static final CS_PREFERRED:I = 0x0

.field public static final DIALOG_CALL_DROP_LOST_PACKETS:I = 0x7

.field public static final DIALOG_CALL_DROP_NO_SIGNAL:I = 0x6

.field public static final DIALOG_E911:I = 0x4

.field public static final DIALOG_FIRST_WFC:I = 0x5

.field public static final DIALOG_OOBE_WIFI_CONNECTED:I = 0x8

.field public static final DIALOG_OTHERS:Ljava/lang/String; = "dialog_others"

.field public static final DIALOG_ROVEOUT:I = 0x2

.field public static final DIALOG_SIMSWAP:I = 0x3

.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field public static final DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final DIALOG_WIFION:I = 0x1

.field public static final EVENT_CLEAR_CONNECTIONS:I = 0x2c

.field public static final EVENT_CONFERENCE_FINISHED:I = 0x2b

.field public static final EXTRA_CSS_PARMS:Ljava/lang/String; = "PARMS"

.field public static final EXTRA_NEED_RESTART:Ljava/lang/String; = "restart_service"

.field public static final EXTRA_UPDATE_INFO:Ljava/lang/String; = "extra_update_info"

.field public static final IMS_CELL_ONLY:I = 0x3

.field public static final IMS_CELL_PREF:I = 0x2

.field public static final IMS_LOWSIGNAL:Ljava/lang/String; = "com.movial.IMS_LOWSIGNAL"

.field public static final IMS_LOWSIGNAL_STATUS:Ljava/lang/String; = "IMS_LOWSIGNAL_STATUS"

.field public static final IMS_MOBILE:I = 0x2

.field public static final IMS_PREFERRED:I = 0x1

.field public static final IMS_REGISTRATION:Ljava/lang/String; = "com.movial.IMS_REGISTRATION"

.field public static final IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field public static final IMS_REG_TYPE:Ljava/lang/String; = "IMS_REG_TYPE"

.field public static final IMS_UNKNOWN:I = 0x0

.field public static final IMS_WIFI:I = 0x1

.field public static final IMS_WIFICALL:Ljava/lang/String; = "com.movial.IMS_WIFICALL"

.field public static final IMS_WIFI_ONLY:I = 0x1

.field public static final IMS_WIFI_PREF:I = 0x0

.field public static final IMS_WIFI_STATUS:Ljava/lang/String; = "IMS_WIFI_STATUS"

.field public static final IMS_WIFI_STATUS_STRING:Ljava/lang/String; = "IMS_WIFI_STATUS_STRING"

.field public static final INTENT_ACTION_CSS_METRIC:Ljava/lang/String; = "com.tmobile.comm.METRIC"

.field public static final INTENT_ACTION_SHUTDOWN:Ljava/lang/String; = "com.movial.ACTION_SHUTDDOWN"

.field public static final INTENT_EXTRA_IMS_CANCELED_BY_USER:Ljava/lang/String; = "canceled_by_user"

.field public static final INTENT_FORCE_EMERGENCY_CHANGED:Ljava/lang/String; = "com.movial.force_emergency_changed"

.field public static final INTENT_GBA_INIT:Ljava/lang/String; = "com.movial.gba_initialized"

.field public static final INTENT_IMS_EMERGENCY_FAIL:Ljava/lang/String; = "com.movial.ims_emergency_fail"

.field public static final INTENT_IMS_EMERGENCY_STARTED:Ljava/lang/String; = "com.movial.ims_emergency_start"

.field public static final INTENT_REG_CHECK:Ljava/lang/String; = "com.movial.reg_check"

.field public static final LISTEN_EVENT_NONE:I = 0x0

.field public static final LISTEN_EVENT_REG_STATUS:I = 0x1

.field public static final LISTEN_EVENT_WIFICALL_STATUS:I = 0x2

.field public static final MAX_SESSION:I = 0x7

.field public static final PERMISSION_RECEIVE_CSS_METRIC:Ljava/lang/String; = "com.tmobile.comm.RECEIVE_METRICS"

.field public static final PROPERTY_CS_EMERGENCY_TIMEOUT:Ljava/lang/String; = "gsm.ecc.timeout"

.field public static final WIFI_AIRPLANE_MODE_ON:I = 0x8

.field public static final WIFI_CELL_PREFERRED:I = 0x5

.field public static final WIFI_IMS_DEREGISTERED:I = 0xa

.field public static final WIFI_IMS_DISABLED:I = 0x1

.field public static final WIFI_IMS_DISABLING:I = 0x9

.field public static final WIFI_IMS_POOR_SIGNAL:I = 0x4

.field public static final WIFI_IMS_REGISTERED:I = 0x6

.field public static final WIFI_IMS_REGISTERING:I = 0x2

.field public static final WIFI_IMS_REG_FAILED:I = 0x3

.field public static final WIFI_NOT_CONNECTED:I = 0xc

.field public static final WIFI_OFF:I = 0x7

.field public static final WIFI_SIM_NOT_READY:I = 0xb

.field public static final WIFI_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method
