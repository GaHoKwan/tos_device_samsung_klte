.class public final Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffDummy;
.super Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.source "AirViewOnOffDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I
    .locals 1
    .param p1, "deviceInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
    .param p2, "settingInfo"    # Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
