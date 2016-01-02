.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_POLL:I = 0x21035

.field private static final ACTIVITY_CHECK_START:I = 0x21033

.field private static final ACTIVITY_CHECK_STOP:I = 0x21034

.field public static final AUTO_NETWORK_SWITCH_TURNED_ON_SCAN_DEFER_DURATION:J = 0x2ee0L

.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_MODE:I = 0xb

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_MODE:I = 0xe

.field private static final CAPTIVE_PORTAL_CHECK_NONE_MODE:I = 0xd

.field private static final CAPTIVE_PORTAL_CHECK_STATE:I = 0x2102a

.field static final CAPTIVE_PORTAL_EVENT_AUTHENTICATED:I = 0x2101c

.field static final CAPTIVE_PORTAL_EVENT_DETECTED:I = 0x2101a

.field static final CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE:I = 0x2101b

.field static final CAPTIVE_PORTAL_EVENT_EXPIRED:I = 0x2101e

.field private static final CAPTIVE_PORTAL_RESULT_DETECTED:I = 0x1

.field private static final CAPTIVE_PORTAL_RESULT_NONE:I = 0x0

.field private static final CAPTIVE_PORTAL_RESULT_NO_INTERNET:I = 0x2

.field private static final CAPTIVE_PORTAL_RESULT_TIMEOUT:I = 0x3

.field static final CAPTIVE_PORTAL_STATE_EVENT:I = 0x21019

.field private static final CHECK_CAPTIVE_PORTAL:I = 0x2102b

.field private static final CMD_QUALITY_CHECK:I = 0x21020

.field private static final CMD_QUALITY_RECHECK:I = 0x2100c

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final CMD_RTT_204_TEST:I = 0x21021

.field private static final CMD_RTT_GOOGLE_TEST:I = 0x21022

.field private static final CONNECT_CAPTIVE_PORTAL:I = 0x2102d

.field private static final DATA_RATE_THRESHOLD:I = 0x5

.field private static DBG:Z = false

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0xbb8

.field private static final DEFAULT_GOOD_RX_PACKETS_BASE:I = 0x1e

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_MSS:I = 0x596

.field private static final DEFAULT_NO_RX_PACKETS_LIMIT:I = 0x2

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x2

.field private static final DEFAULT_PACKET_SIZE:I = 0x5cc

.field private static final DEFAULT_PASS_PACKETS:I = 0x5

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final DEFAULT_POOR_RX_PACKETS_LIMIT:I = 0xf

.field private static final DEFAULT_QC_REPEAT:I = 0x1

.field private static final DEFAULT_QC_SETS:I = 0x2

.field private static final DEFAULT_QC_TIMEOUT_SEC:I = 0x1

.field private static final DEFAULT_URL:Ljava/lang/String; = "http://www.google.com"

.field private static final DEFAULT_URL_STRING:Ljava/lang/String; = "www.google.com"

.field private static final DELAYED_QUALITY_CHECK:I = 0x2101f

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0x0

.field private static final DNS_START_DELAY_MS:I = 0x64

.field private static final EVENT_AUTHENTICATION_COMPLETE:I = 0x21047

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_DHCP_SESSION_COMPLETE:I = 0x21045

.field private static final EVENT_DHCP_SESSION_STARTED:I = 0x21044

.field private static final EVENT_ENABLE_HIPRI:I = 0x21042

.field private static final EVENT_MOBILE_CONNECTED:I = 0x2103f

.field private static final EVENT_MOBILE_HIPRI_CONNECTED:I = 0x21040

.field private static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x21043

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCAN_COMPLETE:I = 0x2103e

.field private static final EVENT_SCAN_STARTED:I = 0x2103d

.field private static final EVENT_SCAN_TIMEOUT:I = 0x21046

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_SWITCH_TIMEOUT:I = 0x21041

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field private static FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D = 0.0

.field private static FD_DISCONNECT_THRESHOLD:D = 0.0

.field private static FD_EMA_ALPHA:I = 0x0

.field private static FD_EVAL_LEAD_TIME:I = 0x0

.field private static FD_EVAULATE_COUNT:I = 0x0

.field private static FD_MA_UNIT:I = 0x0

.field private static FD_MA_UNIT_SAMPLE_COUNT:I = 0x0

.field private static FD_RAW_RSSI_SIZE:I = 0x0

.field private static FD_RSSI_LOW_THRESHOLD:I = 0x0

.field private static FD_RSSI_SLOPE_EXP_COEFFICIENT:D = 0.0

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.2

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final L2_CONNECTED:I = 0x4

.field private static final L2_CONNECTING:I = 0x2

.field private static final L2_DISCONNECTED:I = 0x1

.field private static final L2_RECONNECTING:I = 0x3

.field static final LINK_DETECTION_DISABLED:I = 0x21017

.field private static LINK_MONITORING_SAMPLING_INTERVAL_MS:J = 0x0L

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static LINK_SAMPLING_INTERVAL_MS:J = 0x0L

.field public static final LINK_STATUS_EXTRA_INFO_CAPTIVE_PORTAL:I = 0x1

.field public static final LINK_STATUS_EXTRA_INFO_NONE:I = 0x0

.field public static final LINK_STATUS_EXTRA_INFO_NO_INTERNET:I = 0x3

.field public static final LINK_STATUS_EXTRA_INFO_POOR_LINK:I = 0x2

.field private static final LIST1:[Ljava/lang/String;

.field private static final LIST2:[Ljava/lang/String;

.field private static final LIST3:[Ljava/lang/String;

.field private static final MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field private static final MAX_PAUSE_TIME:I = 0x1b7740

.field private static final MONITORING_TIMEOUT:I = 0x1e

.field static final NEED_FETCH_RSSI_AND_LINKSPEED:I = 0x21018

.field private static final PATH_OF_RESULT:Ljava/lang/String; = "/data/log/"

.field private static final POLICY_AFTER_CONNECTION:I = 0x2

.field private static final POLICY_BEFORE_CONNECTION:I = 0x1

.field private static final POLICY_DISABLED:I = 0x0

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final QC_CONNECTION_TIMEOUT_SEC:I = 0x3

.field private static final QC_FAILED_BY_HIGH_LOSS:I = 0x21031

.field private static final QC_FAIL_CAPTIVE_PORTAL:I = 0x9

.field private static final QC_FAIL_DNS_CAPTIVE_PORTAL:I = 0x6

.field private static final QC_FAIL_DNS_CHECK_FAIL:I = 0x5

.field private static final QC_FAIL_DNS_NO_DNS_LIST:I = 0x3

.field private static final QC_FAIL_DNS_NO_RESOLVED_URL:I = 0x1

.field private static final QC_FAIL_DNS_PRIVATE_IP:I = 0x2

.field private static final QC_FAIL_DNS_RESOLVED_IP_NOT_IPV4:I = 0x4

.field private static final QC_FAIL_DNS_TIMEOUT:I = 0x7

.field private static final QC_FAIL_TCP_CONNECT_TIMEOUT:I = 0x8

.field private static final QC_FAIL_TRAFFIC_LOW_RSSI:I = 0xc

.field private static final QC_FAIL_TRAFFIC_NO_INTERNET:I = 0xa

.field private static final QC_FAIL_TRAFFIC_POOR_LINK:I = 0xb

.field private static final QC_GOOD_RX_DETECTED:I = 0x21028

.field private static final QC_HANDLER_NUM:I = 0x1

.field private static final QC_HISTORY_COUNT_MAX:I = 0x1e

.field private static final QC_HTTP_GET_BUFFER_SIZE:I = 0x1400

.field private static final QC_INIT_ID:I = 0x1

.field private static final QC_REDIRECT:I = 0x21029

.field private static final QC_RESOLVE_HOSTNAME_TIMEOUT:I = 0x21025

.field private static final QC_RESULT_RECEIVED:I = 0x21027

.field private static final QC_RETRY_LIMIT:I = 0x3

.field private static final QC_STEP_CAPTIVE_PORTAL:I = 0x3

.field private static final QC_STEP_DNS:I = 0x1

.field private static final QC_STEP_TCP_HS:I = 0x2

.field private static final QC_STEP_TRAFFIC:I = 0x4

.field private static final QC_TRIGGER_BAD_QUALITY:I = 0x5

.field private static final QC_TRIGGER_CAPTIVE_PORTAL:I = 0x4

.field private static final QC_TRIGGER_RECHECK_BAD_QUALITY:I = 0x9

.field private static final QC_TRIGGER_RECHECK_DNS_FAILURE:I = 0x8

.field private static final QC_TRIGGER_RECHECK_NO_DNS_LIST:I = 0x7

.field private static final QC_TRIGGER_RECHECK_NO_SYNACK:I = 0x6

.field private static final QC_TRIGGER_VERIFYING_FAIL_BAD_QUALITY:I = 0x3

.field private static final QC_TRIGGER_VERIFYING_FAIL_DNS:I = 0x2

.field private static final QC_TRIGGER_VERIFYING_NORMAL:I = 0x1

.field private static final QUALITY_CHECK_RESULT_NO_INTERNET:I = 0x0

.field private static final QUALITY_CHECK_RESULT_SKIP:I = -0x1

.field private static final QUALITY_CHECK_RESULT_TIMEOUT:I = 0x1

.field private static final QUALITY_CHECK_START:I = 0x21026

.field private static final QUALITY_CHECK_TIMEOUT:I = 0x21024

.field private static final REPORT_QC_RESULT:I = 0x21023

.field static final REQUEST_POWER_SAVE_OFF:I = 0x21013

.field static final REQUEST_POWER_SAVE_ON:I = 0x21014

.field private static final RESULT_CAPTIVE_PORTAL:I = 0x2102c

.field private static final RESUME_CAPTIVE_PORTAL_CHECK:I = 0x21030

.field private static final RSSI_THRESHOLD:I = -0x50

.field private static final SCAN_TIMEOUT:I = 0x1388

.field private static SMARTCM_DBG:Z = false

.field private static final SMARTCM_VALUE_FILE:Ljava/lang/String; = "/data/misc/wifi/.smartCM"

.field private static final STATUS_CODE_CAPTIVE_PORTAL:I = 0x2102e

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final TCP_HEADER_SIZE:I = 0x36

.field private static final TEST_LIST:[Ljava/lang/String;

.field private static final TIMEOUT_CAPTIVE_PORTAL:I = 0x2102f

.field private static final USE_PUBLIC_DNS:Z = false

.field private static final VERIFYING_STATE_PASS_PACKETS:I = 0xf

.field private static final VERSION:I = 0x1

.field private static final WLANQCPATH_PROP_NAME:Ljava/lang/String; = "wlan.qc.path"

.field private static bUpdateLinkMonitor:I

.field private static lock:Ljava/lang/Object;

.field private static mCurrentApDefault:Z

.field private static final mIgnorableApMASK:[I

.field private static mRawRssiEMA:D

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private bSetQcResult:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptivePortalCheckMode:I

.field private mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

.field private mCaptivePortalSocket:Ljava/net/Socket;

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCouldNotIdentifyCaptivePortalState:Z

.field private mCountryIso:Ljava/lang/String;

.field private mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLinkSpeed:I

.field private mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mCurrentRssi:I

.field private mCurrentSignalLevel:I

.field private mDataRateThreshold:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mDnsNumPings:I

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEvaluationLevelStayed:I

.field private mFirstRequest:Z

.field private mGoodRxPacketsBase:I

.field private mGoodRxThreshold:I

.field private mHostAddress:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsFmcNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsMobileConnected:Z

.field private mIsMobileHipriConnected:Z

.field private mIsScanning:Z

.field private mIsScreenOn:Z

.field private mIsUsingProxy:Z

.field private mIsWaitingSwitchToHipri:Z

.field private mL2State:I

.field private mLastCheckTimeByRssi:J

.field private mLastQualityCheckTimeByActivity:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMinDnsResponses:I

.field private mMobilePolicyDataEnable:Z

.field private mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

.field private mNoRxPacketsLimit:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPassBytes:I

.field private mPassBytesVerifyingState:I

.field private mPauseStartTime:J

.field private mPoorNetworkAvoidanceEnabled:Z

.field private mPoorNetworkAvoidanceEnabledTime:J

.field private mPoorNetworkDetectionEnabled:Z

.field private mPoorRxPacketsLimit:I

.field private mPropertiesModelName:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mPublicDnsAvailable:Z

.field private mQCRepeat:I

.field private mQCRetry:I

.field private mQCSets:I

.field private mQCSocket:Ljava/net/Socket;

.field private mQCTimeoutMs:I

.field private mQcDumpVer:Ljava/lang/String;

.field mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mQcHistoryHead:I

.field private mQcHistoryTotal:I

.field private mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

.field private mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

.field private mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

.field mRawRssi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedLinkStatusType:I

.field private mRssiFetchToken:I

.field private mRssiThreshold:I

.field private mSwitchFailCount:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnidentifiedCount:I

.field mUrlList:[Ljava/lang/String;

.field private mUserAgentModelName:Ljava/lang/String;

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    .line 225
    const-wide/16 v3, 0x3e8

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    .line 226
    const-wide/16 v3, 0x1f4

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_MONITORING_SAMPLING_INTERVAL_MS:J

    .line 227
    const/16 v0, -0x50

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    .line 228
    sput v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT:I

    .line 229
    const/4 v0, 0x6

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 230
    sput v7, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAL_LEAD_TIME:I

    .line 231
    const/4 v0, 0x6

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    .line 232
    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    sget v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    add-int/2addr v0, v3

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    .line 233
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    .line 235
    const-wide v3, 0x3fc999999999999aL    # 0.2

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    .line 236
    const/16 v0, 0x9

    sput v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EMA_ALPHA:I

    .line 237
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    .line 240
    const-wide/high16 v3, -0x3f97000000000000L    # -200.0

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 241
    sput v2, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    .line 343
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sget-wide v5, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    long-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    sput-wide v3, Landroid/net/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    .line 430
    new-array v0, v9, [Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v4, 0x1b7740

    invoke-direct {v3, v1, v8, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v1

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x5

    const v5, 0x493e0

    invoke-direct {v3, v8, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x6

    const/16 v5, 0xa

    const v6, 0xea60

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v7

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v4, 0x9

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 448
    new-array v0, v8, [Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x1b7740

    const/16 v5, -0xc8

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v1

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x493e0

    const/16 v5, -0x46

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v4, -0x37

    invoke-direct {v3, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v7

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 466
    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 485
    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    .line 541
    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    .line 1700
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "http://www.msn.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.yahoo.com"

    aput-object v3, v0, v2

    const-string v3, "http://www.amazon.com"

    aput-object v3, v0, v7

    const-string v3, "http://www.youtube.com"

    aput-object v3, v0, v8

    const-string v3, "http://www.google.com"

    aput-object v3, v0, v9

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST1:[Ljava/lang/String;

    .line 1707
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "http://www.qq.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.taobao.com"

    aput-object v3, v0, v2

    const-string v3, "http://www.hao123.com"

    aput-object v3, v0, v7

    const-string v3, "http://www.google.com"

    aput-object v3, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;

    .line 1713
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "http://www.naver.com"

    aput-object v3, v0, v1

    const-string v3, "http://www.daum.net"

    aput-object v3, v0, v2

    const-string v3, "http://www.nate.com"

    aput-object v3, v0, v7

    const-string v3, "http://www.google.com"

    aput-object v3, v0, v8

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;

    .line 1720
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "http://www.samsung.com"

    aput-object v3, v0, v1

    const-string v1, "http://d2uzsrnmmf6tds.cloudfront.net/50KB.txt"

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->TEST_LIST:[Ljava/lang/String;

    .line 3564
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    return-void

    :cond_0
    move v0, v2

    .line 145
    goto/16 :goto_0

    .line 3564
    nop

    :array_0
    .array-data 4
        0x2ba8c0
        0xa14ac
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 662
    const-string v5, "WifiWatchdogStateMachine"

    invoke-direct {p0, v5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    .line 461
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 469
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    .line 470
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    .line 472
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    .line 473
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    .line 474
    iput v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    .line 478
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 479
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 480
    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    .line 481
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    .line 482
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    .line 486
    const/4 v5, 0x2

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    .line 487
    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    .line 488
    const/16 v5, -0x50

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    .line 489
    const/4 v5, 0x5

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    .line 490
    const/16 v5, 0x1cfc

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    .line 491
    const/16 v5, 0x56f4

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I

    .line 492
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    .line 493
    const/4 v5, 0x2

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I

    .line 494
    const/16 v5, 0xf

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I

    .line 495
    const/16 v5, 0x1e

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I

    .line 496
    const/16 v5, 0x3e8

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    .line 497
    const/4 v5, 0x2

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    .line 498
    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    .line 499
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I

    .line 500
    const-string v5, "216.137.52.194"

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    .line 501
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    .line 502
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    .line 503
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    .line 504
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    .line 505
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    .line 506
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    .line 512
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    .line 513
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    .line 514
    iput-wide v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    .line 515
    iput-wide v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    .line 516
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    .line 519
    new-instance v5, Landroid/util/LruCache;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Landroid/util/LruCache;-><init>(I)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    .line 521
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 526
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mEvaluationLevelStayed:I

    .line 529
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 530
    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 538
    iput v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    .line 544
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 545
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 546
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 547
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 548
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 549
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 550
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    .line 551
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 552
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    .line 553
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 554
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    .line 586
    const-string v5, "1.0"

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    .line 587
    iput v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 588
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    .line 589
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    .line 648
    const/16 v5, 0x1e

    new-array v5, v5, [Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    .line 649
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    .line 2118
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    .line 3051
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    .line 3052
    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    .line 3053
    iput-boolean v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    .line 3054
    const/16 v5, 0xb

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    .line 4661
    iput v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    .line 4662
    iput-wide v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    .line 4789
    iput v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    .line 5320
    iput-wide v11, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 663
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 665
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 666
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 671
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string v7, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v5, p0, v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 676
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 677
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 678
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 679
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 680
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 681
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 682
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 683
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 684
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 685
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 686
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 688
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 693
    :goto_0
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    .line 694
    invoke-virtual {p0, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    .line 697
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "NetworkStatsThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 698
    .local v2, "networkStatsThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 699
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    .line 701
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "QualityResultHandlerThread_0"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 702
    .local v3, "qualityResultThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 703
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6, v9}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .line 705
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "QualitySocketHandlerThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 706
    .local v4, "qualitySocketThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 707
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    .line 709
    new-instance v0, Landroid/os/HandlerThread;

    const-string v5, "CaptivePortalHandlerThread"

    invoke-direct {v0, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "captivePortalThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 711
    new-instance v5, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .line 713
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v5}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    .line 716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v5, 0x1e

    if-ge v1, v5, :cond_1

    .line 717
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    new-instance v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v6, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    aput-object v6, v5, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    .end local v0    # "captivePortalThread":Landroid/os/HandlerThread;
    .end local v1    # "i":I
    .end local v2    # "networkStatsThread":Landroid/os/HandlerThread;
    .end local v3    # "qualityResultThread":Landroid/os/HandlerThread;
    .end local v4    # "qualitySocketThread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 720
    .restart local v0    # "captivePortalThread":Landroid/os/HandlerThread;
    .restart local v1    # "i":I
    .restart local v2    # "networkStatsThread":Landroid/os/HandlerThread;
    .restart local v3    # "qualityResultThread":Landroid/os/HandlerThread;
    .restart local v4    # "qualitySocketThread":Landroid/os/HandlerThread;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    return v0
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide v0
.end method

.method static synthetic access$10902(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$11002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return p1
.end method

.method static synthetic access$11008(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return v0
.end method

.method static synthetic access$12000()D
    .locals 2

    .prologue
    .line 142
    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    return-wide v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return p1
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    return v0
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I

    return v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$13002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return v0
.end method

.method static synthetic access$13202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return p1
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13302(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return v0
.end method

.method static synthetic access$13402(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return p1
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return v0
.end method

.method static synthetic access$13502(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return p1
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    return v0
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$14102(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LIST1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxPacketsBase:I

    return v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNoRxPacketsLimit:I

    return v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorRxPacketsLimit:I

    return v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return v0
.end method

.method static synthetic access$16002(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide v0
.end method

.method static synthetic access$16102(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide p1
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return v0
.end method

.method static synthetic access$16202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return p1
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z

    move-result v0

    return v0
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    return v0
.end method

.method static synthetic access$16602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    return p1
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v0

    return v0
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V

    return-void
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    return v0
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    return-object v0
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    return v0
.end method

.method static synthetic access$1902(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19700()J
    .locals 2

    .prologue
    .line 142
    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21400()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return v0
.end method

.method static synthetic access$21402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return p0
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    return-void
.end method

.method static synthetic access$22000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    return-void
.end method

.method static synthetic access$23000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23100()J
    .locals 2

    .prologue
    .line 142
    sget-wide v0, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_MONITORING_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$23200()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return v0
.end method

.method static synthetic access$23202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 142
    sput p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return p0
.end method

.method static synthetic access$23300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23400()I
    .locals 1

    .prologue
    .line 142
    sget v0, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    return v0
.end method

.method static synthetic access$23500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    return-void
.end method

.method static synthetic access$24000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24500(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$24600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$24800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$25000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26000()[D
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$26002([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    .line 142
    sput-object p0, Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$26100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26400()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$26500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$2702(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return p1
.end method

.method static synthetic access$3102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    return p1
.end method

.method static synthetic access$3202(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    return p1
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$3302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setL2State(I)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$5202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 142
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$6002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return p1
.end method

.method static synthetic access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I

    return v0
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return p1
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return v0
.end method

.method static synthetic access$6502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return p1
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return v0
.end method

.method static synthetic access$6902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return v0
.end method

.method static synthetic access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    return v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$9204(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    return v0
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    return v0
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    return-object v0
.end method

.method static synthetic access$9802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I

    return p1
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private authenticationComplete()V
    .locals 1

    .prologue
    .line 4855
    const v0, 0x21047

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 4856
    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 4761
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 4762
    .local v0, "signalLevel":I
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v1, :cond_0

    .line 4763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4764
    :cond_0
    return v0
.end method

.method private captivePortalCheckException()Z
    .locals 4

    .prologue
    .line 5360
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 5361
    .local v0, "ssid":Ljava/lang/String;
    :goto_0
    const-string v1, "\"VerizonWiFi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DCM"

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\"docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0000docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0001docomo\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string v1, "KDI"

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\"au_Wi-Fi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"au_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2premium_club\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"UQ_Wi-Fi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Wi2premium\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"wifi_square\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"[Wi2]\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "SBM"

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\"0001softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"0002softbank\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"mobilepoint\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"FON_FREE_INTERNET\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "\"gogoinflight\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\"Carnival-WiFi\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5378
    :cond_3
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", no need to check whether or not it is a captive portal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    :cond_4
    const/4 v1, 0x1

    .line 5381
    :goto_1
    return v1

    .line 5360
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5381
    .restart local v0    # "ssid":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 5386
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_version"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5389
    .local v3, "mWatchdogVersionFromSettings":I
    const/high16 v9, -0x10000

    and-int/2addr v9, v3

    ushr-int/lit8 v6, v9, 0x10

    .line 5390
    .local v6, "storedOSver":I
    const v9, 0xffff

    and-int v5, v3, v9

    .line 5392
    .local v5, "storedFileRev":I
    const/4 v8, 0x0

    .line 5393
    .local v8, "updatingOSver":I
    const/4 v7, 0x1

    .line 5395
    .local v7, "updatingFileRev":I
    const-string v9, "ro.build.version.release"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5396
    .local v4, "propertyOsVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 5397
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5398
    shl-int/lit8 v9, v8, 0x4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    add-int v8, v9, v10

    .line 5396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5401
    :cond_1
    if-nez v8, :cond_3

    .line 5402
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Cannot retrieve version info from SystemProperties."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    .end local v1    # "i":I
    .end local v3    # "mWatchdogVersionFromSettings":I
    .end local v4    # "propertyOsVersion":Ljava/lang/String;
    .end local v5    # "storedFileRev":I
    .end local v6    # "storedOSver":I
    .end local v7    # "updatingFileRev":I
    .end local v8    # "updatingOSver":I
    :cond_2
    :goto_1
    return-void

    .line 5406
    .restart local v1    # "i":I
    .restart local v3    # "mWatchdogVersionFromSettings":I
    .restart local v4    # "propertyOsVersion":Ljava/lang/String;
    .restart local v5    # "storedFileRev":I
    .restart local v6    # "storedOSver":I
    .restart local v7    # "updatingFileRev":I
    .restart local v8    # "updatingOSver":I
    :cond_3
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_4

    .line 5407
    const-string v9, "WifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkVersion - Current version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 5418
    .local v2, "mAutoNetworkSwitchEnabled":Z
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 5436
    :cond_6
    :goto_2
    :sswitch_0
    shl-int/lit8 v9, v8, 0x10

    add-int/lit8 v9, v9, 0x1

    if-eq v3, v9, :cond_2

    .line 5437
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Version chaged. Updating the version..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_version"

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5441
    .end local v1    # "i":I
    .end local v2    # "mAutoNetworkSwitchEnabled":Z
    .end local v3    # "mWatchdogVersionFromSettings":I
    .end local v4    # "propertyOsVersion":Ljava/lang/String;
    .end local v5    # "storedFileRev":I
    .end local v6    # "storedOSver":I
    .end local v7    # "updatingFileRev":I
    .end local v8    # "updatingOSver":I
    :catch_0
    move-exception v0

    .line 5442
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "checkVersion - failed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5420
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "mAutoNetworkSwitchEnabled":Z
    .restart local v3    # "mWatchdogVersionFromSettings":I
    .restart local v4    # "propertyOsVersion":Ljava/lang/String;
    .restart local v5    # "storedFileRev":I
    .restart local v6    # "storedOSver":I
    .restart local v7    # "updatingFileRev":I
    .restart local v8    # "updatingOSver":I
    :sswitch_1
    if-eqz v2, :cond_6

    .line 5421
    :try_start_1
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Resetting Watchdog related settings parameters..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_poor_connection_warning"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5423
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5424
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_internet_service_check_warning"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5418
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x422 -> :sswitch_0
    .end sparse-switch
.end method

.method private getL2State()I
    .locals 3

    .prologue
    .line 5453
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getL2State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    return v0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4872
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private initCurrentQcFailRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 5304
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 5305
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 5306
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 5307
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 5308
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 5309
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 5310
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 5311
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 5312
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-boolean v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 5313
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-boolean v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 5314
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 5315
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 5316
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 5317
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 5318
    return-void
.end method

.method private isEnterpriseAP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3592
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    .line 3606
    :cond_0
    :goto_0
    return v1

    .line 3593
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3594
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3596
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 3597
    goto :goto_0

    .line 3598
    :cond_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 3599
    goto :goto_0

    .line 3600
    :cond_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 3601
    goto :goto_0

    .line 3602
    :cond_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 3603
    goto :goto_0

    .line 3605
    :cond_5
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "It\'s not a eap AP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isIgnorableAP()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 3566
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 3572
    .local v4, "ssid":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3575
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    :cond_0
    :goto_1
    return v5

    .line 3566
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3578
    .restart local v4    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v6, "\"gogoinflight\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "\"Carnival-WiFi\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3579
    :cond_3
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "SNS/CaptivePortal not applicable AP."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3582
    :cond_4
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_6

    aget v3, v0, v1

    .line 3583
    .local v3, "mask":I
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    if-ne v6, v3, :cond_5

    .line 3584
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3582
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3588
    .end local v3    # "mask":I
    :cond_6
    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    goto :goto_1
.end method

.method private isInEvaluationLevel()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3559
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 3560
    .local v0, "ret":Z
    :goto_0
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    :cond_1
    return v0

    .end local v0    # "ret":Z
    :cond_2
    move v0, v1

    .line 3559
    goto :goto_0
.end method

.method private isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 5534
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5535
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 5536
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5537
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5538
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKTCMWifiSettingScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5539
    :cond_1
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.kt.wificm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5543
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 5211
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5212
    const/4 v0, 0x0

    .line 5213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 949
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 951
    .local v0, "ret":Z
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 952
    :cond_0
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 725
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 727
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 732
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v3, :cond_1

    .line 738
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 741
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 742
    .local v2, "wwsm":Landroid/net/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    .line 743
    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkVersion(Landroid/content/Context;)V

    .line 744
    return-object v2

    .end local v2    # "wwsm":Landroid/net/wifi/WifiWatchdogStateMachine;
    :cond_0
    move v3, v5

    .line 727
    goto :goto_0

    .line 736
    :cond_1
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 4888
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qualityCheckRequest(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 3535
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    if-le p1, v1, :cond_1

    .line 3536
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "QC already requested as much as mQCSets!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    :goto_0
    return-void

    .line 3539
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v0

    .line 3540
    .local v0, "ongoingId":I
    if-lez v0, :cond_2

    .line 3541
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The previous evaluation set - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] isn\'t finished!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3543
    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-eq v1, v2, :cond_5

    .line 3544
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "qualityCheckRequest is called during scan or DHCP session -> Cancel and reschedule the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    goto :goto_0

    .line 3549
    :cond_5
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[qualityCheckRequest] id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    const v2, 0x21020

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 867
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 874
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 877
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 880
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 883
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 851
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 858
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 861
    return-void
.end method

.method private reportQCResult(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "avg"    # I

    .prologue
    .line 3554
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportQCResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 3555
    :cond_0
    const v0, 0x21023

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3556
    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 3
    .param p1, "isGood"    # Z

    .prologue
    .line 4768
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "########################################"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4769
    :cond_0
    if-eqz p1, :cond_3

    .line 4770
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4771
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_1

    .line 4772
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4774
    :cond_1
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Good link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4782
    :cond_2
    :goto_0
    return-void

    .line 4776
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4777
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_4

    .line 4778
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4780
    :cond_4
    const-string v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendLinkStatusNotification(ZI)V
    .locals 8
    .param p1, "isGood"    # Z
    .param p2, "extraInfo"    # I

    .prologue
    const v7, 0x21016

    const v6, 0x21015

    const/4 v5, 0x0

    .line 4791
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "########################################"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4792
    :cond_0
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    .line 4793
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendLinkStatusNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    :cond_1
    if-eqz p1, :cond_4

    .line 4796
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4797
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_2

    .line 4798
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4800
    :cond_2
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4847
    :cond_3
    :goto_0
    return-void

    .line 4803
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v2, :cond_d

    .line 4804
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 4805
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4806
    .local v0, "hipriInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4808
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v6, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4809
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_7

    .line 4810
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4812
    :cond_7
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4814
    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v2, v3, :cond_a

    .line 4815
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v3, 0x2

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4816
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_9

    .line 4817
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4819
    :cond_9
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification with POOR_LINK is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4827
    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    .line 4828
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 4829
    :cond_b
    const v2, 0x21042

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 4830
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "enableHIPRI"

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 4833
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "[sendLinkStatusNotification] FEATURE_ENABLE_HIPRI"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4834
    :cond_c
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    .line 4835
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    goto/16 :goto_0

    .line 4840
    .end local v0    # "hipriInfo":Landroid/net/NetworkInfo;
    .end local v1    # "mobileInfo":Landroid/net/NetworkInfo;
    :cond_d
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v6, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4841
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_e

    .line 4842
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$25802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 4844
    :cond_e
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setEvaluationParameters()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x0

    .line 3468
    const/4 v0, 0x0

    .line 3470
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/.smartCM"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3471
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3473
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3474
    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_6

    :goto_0
    sput-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    .line 3475
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    .line 3476
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    .line 3477
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3478
    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v7, :cond_0

    .line 3479
    const-string v7, "http://www.samsung.com"

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/net/wifi/WifiWatchdogStateMachine;->TEST_LIST:[Ljava/lang/String;

    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    .line 3481
    :cond_0
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    .line 3482
    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    .line 3483
    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    .line 3484
    const/4 v7, 0x7

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3485
    .local v4, "sets":I
    if-le v4, v6, :cond_1

    move v4, v6

    .end local v4    # "sets":I
    :cond_1
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    .line 3486
    const/16 v6, 0x8

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    .line 3487
    const/16 v6, 0x9

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    .line 3489
    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    .line 3490
    const/16 v6, 0xb

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    .line 3491
    const/16 v6, 0xc

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    .line 3492
    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sput-wide v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    .line 3493
    const/16 v6, 0xe

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 3494
    const/16 v6, 0xf

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    .line 3495
    const/16 v6, 0x10

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3500
    :cond_2
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_3

    .line 3501
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMARTCM_DBG : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDnsNumPings : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMinDnsResponses : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUrlString : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRssiThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dBm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataRateThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCRepeat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCSets : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCTimeoutMs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHostAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserAgentModelName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPassBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGoodRxThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_EVAULATE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    :cond_3
    if-eqz v1, :cond_4

    .line 3522
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_1
    move-object v0, v1

    .line 3528
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "values":[Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-void

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_6
    move v7, v8

    .line 3474
    goto/16 :goto_0

    .line 3497
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "values":[Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 3498
    .local v3, "ignore":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3500
    :cond_7
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v6, :cond_8

    .line 3501
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMARTCM_DBG : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDnsNumPings : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMinDnsResponses : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUrlString : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRssiThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dBm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDataRateThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Mbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCRepeat : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCSets : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQCTimeoutMs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHostAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserAgentModelName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPassBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGoodRxThreshold : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FD_EVAULATE_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    :cond_8
    if-eqz v0, :cond_5

    .line 3522
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 3523
    :catch_1
    move-exception v2

    .line 3524
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Failed to close .smartCM file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3500
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v7, :cond_9

    .line 3501
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMARTCM_DBG : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDnsNumPings : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMinDnsResponses : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUrlString : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    aget-object v8, v10, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRssiThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dBm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataRateThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDataRateThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mbps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCRepeat : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCSets : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQCTimeoutMs : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHostAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUserAgentModelName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPassBytes : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGoodRxThreshold : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FD_EVAULATE_COUNT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const-string v7, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/net/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    :cond_9
    if-eqz v0, :cond_a

    .line 3522
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3500
    :cond_a
    :goto_5
    throw v6

    .line 3523
    :catch_2
    move-exception v2

    .line 3524
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "Failed to close .smartCM file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3523
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "values":[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 3524
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Failed to close .smartCM file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3500
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "values":[Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 3497
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private setL2State(I)V
    .locals 3
    .param p1, "newL2State"    # I

    .prologue
    .line 5447
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setL2State: orig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5448
    :cond_0
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    .line 5449
    return-void
.end method

.method private declared-synchronized setQcFailHistory()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v7, -0x1

    .line 5229
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5231
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 5300
    :goto_0
    monitor-exit p0

    return-void

    .line 5234
    :cond_0
    :try_start_1
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    if-ne v5, v7, :cond_6

    .line 5235
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 5239
    :goto_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    .line 5240
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 5241
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 5242
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 5243
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 5244
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    if-eq v5, v7, :cond_4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 5245
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 5246
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 5247
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    iput-boolean v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 5248
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    iput-boolean v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 5249
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_5

    .line 5250
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 5251
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 5252
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 5254
    :cond_5
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 5256
    const-string v1, ""

    .local v1, "dateToOutput":Ljava/lang/String;
    const-string v2, ""

    .line 5257
    .local v2, "hexSsid":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd hh:mm:ss SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5258
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 5259
    const-string v2, ""

    .line 5261
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 5262
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5261
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5237
    .end local v1    # "dateToOutput":Ljava/lang/String;
    .end local v2    # "hexSsid":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v5, v5, 0x1e

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 5229
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 5264
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "dateToOutput":Ljava/lang/String;
    .restart local v2    # "hexSsid":Ljava/lang/String;
    .restart local v3    # "j":I
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5266
    sget-boolean v5, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** QC HISTORY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5268
    :cond_8
    :try_start_3
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [s]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [t]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", [e]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_a

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v8

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 5289
    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dl] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5294
    :cond_9
    :goto_4
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    .line 5295
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 5296
    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    .line 5298
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->initCurrentQcFailRecord()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 5268
    :cond_a
    :try_start_5
    const-string v5, ""
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 5290
    :catch_0
    move-exception v5

    goto :goto_4
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 748
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 833
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 834
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 845
    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v2, 0x21007

    .line 4734
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4737
    :cond_0
    if-nez p1, :cond_5

    .line 4738
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_3

    .line 4758
    :cond_1
    :goto_1
    return-void

    .line 4734
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 4739
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 4740
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4741
    :cond_4
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 4746
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4749
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 4750
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_7

    .line 4751
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 4752
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4756
    :cond_7
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4757
    :cond_8
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1
.end method

.method private updatePoorNetworkParameters()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5157
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 5158
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 5160
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 5161
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5163
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5167
    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 5168
    .local v1, "mPreviousPoorNetworkAvoidanceEnabled":Z
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 5173
    .local v2, "simState":I
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 5176
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "mobile_data"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_6

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 5180
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5181
    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_7

    if-ne v2, v9, :cond_7

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 5185
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 5187
    if-nez v1, :cond_3

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_3

    .line 5188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 5189
    const-string v3, "WifiWatchdogStateMachine"

    const-string v6, "ANS turned on. Do not start scan for a while."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    :cond_3
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_4

    .line 5193
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePoorNetworkAvoidance - Poor Network Test Enabled / !mIsFmcNetwork : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v3, :cond_a

    move v3, v4

    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " - mPoorNetworkAvoidanceEnabled:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v3, :cond_b

    const-string v3, "enabled"

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / !mIsFmcNetwork : \n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "airplane_mode_on"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_c

    move v3, v4

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "mobile_data"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v2, v9, :cond_e

    move v3, v4

    :goto_a
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v7, :cond_f

    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mPoorNetworkDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v3, :cond_10

    const-string v3, "enabled"

    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    :cond_4
    return-void

    .line 5164
    .end local v1    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 5165
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiWatchdogStateMachine"

    const-string v6, "updatePoorNetworkParameters - Exception while retrieving ConnectionManager"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .restart local v2    # "simState":I
    :cond_5
    move v3, v5

    .line 5173
    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 5176
    goto/16 :goto_2

    :cond_7
    move v3, v5

    .line 5181
    goto/16 :goto_3

    :cond_8
    move v3, v5

    .line 5185
    goto/16 :goto_4

    :cond_9
    move v3, v5

    .line 5193
    goto/16 :goto_5

    :cond_a
    move v3, v5

    goto/16 :goto_6

    :cond_b
    const-string v3, "disabled"

    goto/16 :goto_7

    :cond_c
    move v3, v5

    .line 5197
    goto :goto_8

    :cond_d
    move v3, v5

    goto :goto_9

    :cond_e
    move v3, v5

    goto :goto_a

    :cond_f
    move v4, v5

    goto :goto_b

    :cond_10
    const-string v3, "disabled"

    goto :goto_c
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const v4, 0x21017

    const/4 v3, 0x0

    .line 956
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Updating secure settings"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 959
    :cond_0
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v1, :cond_2

    .line 960
    const-string v1, "Disabling poor network avoidance for wi-fi only device"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 961
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 964
    :cond_2
    const/4 v0, 0x0

    .line 965
    .local v0, "defaultValue":I
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V

    .line 966
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 967
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_3

    .line 968
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 969
    iput-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 973
    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_4

    .line 974
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V

    goto :goto_0

    .line 976
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 977
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 978
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkDnsQuery()V
    .locals 1

    .prologue
    .line 4851
    const v0, 0x2100c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 4852
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 886
    const-string v1, ""

    .local v1, "dateToOutput":Ljava/lang/String;
    const-string v2, ""

    .line 887
    .local v2, "hexSsid":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd hh:mm:ss SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 889
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 890
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiInfo: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLinkProperties: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSignalLevel: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPoorNetworkAvoidanceEnabled: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mL2State: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQcHistoryTotal: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], mQcDumpVer: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    const-string v6, "info: l2"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const-string v6, "info: fd"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDnsServerList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    if-nez v6, :cond_0

    .line 946
    :goto_0
    return-void

    .line 905
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 906
    :try_start_0
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x1e

    if-ge v6, v8, :cond_1

    const/4 v3, 0x0

    .line 907
    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    .line 909
    .local v4, "j":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    const/16 v6, 0x1e

    if-ge v0, v6, :cond_5

    .line 911
    :try_start_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->time:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 912
    const-string v2, ""

    .line 913
    const/4 v4, 0x0

    :goto_3
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 906
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    :try_start_2
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v3, v6, 0x1e
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 916
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]:  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [s]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [t]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", [e]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget-boolean v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x10

    if-le v6, v9, :cond_4

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v6, v6, v8

    iget-object v6, v6, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 938
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[dl] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistory:[Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_3
    add-int/lit8 v6, v3, 0x1

    rem-int/lit8 v3, v6, 0x1e

    .line 909
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 916
    :cond_4
    const-string v6, ""
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 945
    :cond_5
    :try_start_4
    monitor-exit v7

    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 941
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method public fastDisconnectClear()V
    .locals 3

    .prologue
    .line 5525
    const/4 v0, 0x0

    .line 5526
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5527
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 5526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5529
    :cond_0
    const-wide/high16 v1, -0x3f97000000000000L    # -200.0

    sput-wide v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 5530
    return-void
.end method

.method public fastDisconnectEvaluate()Z
    .locals 20

    .prologue
    .line 5467
    const/4 v1, 0x0

    .line 5468
    .local v1, "count":I
    const-wide/high16 v12, -0x8000000000000000L

    .line 5469
    .local v12, "total":D
    const-wide/high16 v10, -0x3f97000000000000L    # -200.0

    .line 5470
    .local v10, "oldestMARssi":D
    const-wide/high16 v8, -0x3f97000000000000L    # -200.0

    .line 5471
    .local v8, "latestMARssi":D
    const-wide/high16 v2, -0x3f97000000000000L    # -200.0

    .line 5472
    .local v2, "currentMARssi":D
    const-wide/high16 v4, -0x3f97000000000000L    # -200.0

    .line 5474
    .local v4, "diffMARssi":D
    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "fastDisconnectEvaluate: Enter."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    sget v15, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    if-ge v14, v15, :cond_2

    .line 5477
    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_1

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "Not enough data to evaluate FD."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    :cond_1
    const/4 v14, 0x0

    .line 5521
    :goto_0
    return v14

    .line 5482
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    if-ge v6, v14, :cond_6

    .line 5484
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    if-ge v7, v14, :cond_3

    .line 5485
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    add-int v15, v7, v1

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    add-double/2addr v12, v14

    .line 5484
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5487
    :cond_3
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_MA_UNIT_SAMPLE_COUNT:I

    int-to-double v14, v14

    div-double v2, v12, v14

    .line 5490
    if-nez v6, :cond_5

    .line 5491
    move-wide v8, v2

    .line 5495
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 5496
    const-wide/16 v12, 0x0

    .line 5482
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5492
    :cond_5
    sget v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_EVAULATE_COUNT:I

    add-int/lit8 v14, v14, -0x1

    if-ne v6, v14, :cond_4

    .line 5493
    move-wide v10, v2

    goto :goto_3

    .line 5498
    .end local v7    # "j":I
    :cond_6
    sub-double v4, v10, v8

    .line 5499
    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_7

    const-string v14, "WifiWatchdogStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fastDisconnectEvaluate: oldest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", latest="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", diff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-double v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    :cond_7
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    const-wide/high16 v16, -0x3f97000000000000L    # -200.0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_9

    .line 5503
    sput-wide v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 5508
    :goto_4
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_THRESHOLD:D

    cmpl-double v14, v4, v14

    if-lez v14, :cond_a

    .line 5509
    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_8

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "A sharp fall! Disconnect!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 5505
    :cond_9
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    mul-double/2addr v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sget-wide v18, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    sub-double v16, v16, v18

    sget-wide v18, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    mul-double v16, v16, v18

    add-double v14, v14, v16

    sput-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    goto :goto_4

    .line 5512
    :cond_a
    sget-wide v14, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    sget-wide v16, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_c

    .line 5513
    sget-boolean v14, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_b

    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "A sharp fall trend! Disconnect!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 5521
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public fastDisconnectUpdateRssi(I)V
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 5459
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastDisconnectUpdateRssi: Enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Landroid/net/wifi/WifiWatchdogStateMachine;->FD_RAW_RSSI_SIZE:I

    if-lt v0, v1, :cond_1

    .line 5461
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 5463
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5464
    return-void
.end method

.method isUsingStaticIp()Z
    .locals 1

    .prologue
    .line 3611
    const/4 v0, 0x0

    return v0
.end method

.method public scanStarted()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1388

    const v6, 0x21046

    const v5, 0x2103d

    .line 5323
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 5324
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v1, :cond_1

    .line 5325
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 5328
    :cond_0
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "startScan is cancelled. NetworkInfo.State.CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5357
    :cond_1
    :goto_0
    return-void

    .line 5329
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2ee0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 5334
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScan is cancelled. ANS is turned on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5338
    :cond_4
    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-eqz v1, :cond_5

    .line 5339
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "startScan but already in scanning state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5341
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    .line 5342
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_6

    .line 5343
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 5344
    invoke-virtual {p0, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 5346
    :cond_6
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    .line 5347
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    .line 5348
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5350
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 5351
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 5218
    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    .line 5219
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5220
    const/4 v1, 0x1

    .line 5223
    :goto_0
    return v1

    .line 5221
    :catch_0
    move-exception v0

    .line 5222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "setIsFmcNetwork - Exception while setting isFmcNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    const/4 v1, 0x0

    goto :goto_0
.end method
