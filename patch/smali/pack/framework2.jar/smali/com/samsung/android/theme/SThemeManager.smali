.class public Lcom/samsung/android/theme/SThemeManager;
.super Ljava/lang/Object;
.source "SThemeManager.java"


# static fields
.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package"

.field private static final DBG:Z

.field public static final HOME_THEME_CHANGED:Ljava/lang/String; = "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SThemeManager"

.field private static mThemeItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCacheMap:Ljava/lang/Object;

.field private static sDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPackageIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageNameFromSettings:Z

.field private mThemePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->mThemeItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sStringCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sDrawableCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sCacheMap:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageNameFromSettings:Z

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadPackageIconMap()V

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->clearCaches()V

    return-void
.end method

.method private clearCaches()V
    .locals 1

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    sget-object v3, Lcom/samsung/android/theme/SThemeManager;->sCacheMap:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/theme/SThemeManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SThemeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get cached drawable state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/theme/SThemeManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    sget-object v3, Lcom/samsung/android/theme/SThemeManager;->sCacheMap:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/theme/SThemeManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SThemeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "return cached string for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v3

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/samsung/android/theme/SThemeManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v3

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadPackageIconMap()V
    .locals 3

    const-string v0, "SThemeManager"

    const-string v1, "Load theme icons for theme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.servicecentre.ServiceCentreActivity"

    const-string v2, "ic_02_servicecenter_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.groupcast.start.StartActivity"

    const-string v2, "ic_04_group_play_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.ncr.CardListActivity"

    const-string v2, "ic_05_business_card_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.moreservices.moreservices"

    const-string v2, "ic_06_more_service_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.sync.ui.SyncActivity"

    const-string v2, "ic_07_back_up_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d.app.Gallery"

    const-string v2, "ic_08_gallery_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.translator.MainActivity"

    const-string v2, "ic_09_s_translator_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.helphub.HelpHubActivity"

    const-string v2, "ic_10_help_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage.ClockPackage"

    const-string v2, "ic_11_clock_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.Settings"

    const-string v2, "ic_12_setting_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.vlingo.midas.gui.ConversationActivity"

    const-string v2, "ic_13_s_voice_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.snote.control.ui.filemanager.MainHomeActivity"

    const-string v2, "ic_14_s_note_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music.MusicActionTabActivity"

    const-string v2, "ic_15_music_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_16_music_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_17_video_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video.VideoMain"

    const-string v2, "ic_18_video_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes.ui.timeline.TimelineActivity"

    const-string v2, "ic_19_story_album_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.providers.downloads.ui.DownloadList"

    const-string v2, "ic_20_download_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.contacts.RecntcallEntryActivity"

    const-string v2, "ic_21_call_log_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    const-string v2, "ic_22_voice_recoder_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.myfiles.MainActivity"

    const-string v2, "ic_23_myfile_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_24_fm_radio_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.email.activity.Welcome"

    const-string v2, "ic_25_email_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.SearchActivity"

    const-string v2, "ic_26_search_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.autonavi.xmgd.navigator.keyboard.Start"

    const-string v2, "ic_27_navigation_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr.OCR"

    const-string v2, "ic_28_optical_reader_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.popupcalculator.Calculator"

    const-string v2, "ic_29_calculator_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.q1_penmemo.MemoListActivity"

    const-string v2, "ic_30_s_memo_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.calendar.AllInOneActivity"

    const-string v2, "ic_31_calender_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Camera"

    const-string v2, "ic_32_camera_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.firewall.VIPMainActivity"

    const-string v2, "ic_34_vipmode_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.security.mms.ui.PasswordActivity"

    const-string v2, "ic_35_security_mail_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    const-string v2, "ic_36_phone_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    const-string v2, "ic_37_contact_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "ic_38_message_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.themechooser.ThemeListActivity"

    const-string v2, "ic_41_theme_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.email.activity.MessageCompose"

    const-string v2, "ic_25_email_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.mms.ui.ComposeMessageMms"

    const-string v2, "ic_38_message_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.snote.control.ui.filemanager.CheckExecutionActivity"

    const-string v2, "ic_14_s_note_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putCachedIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sCacheMap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sDrawableCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCachedString(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sCacheMap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/theme/SThemeManager;->sStringCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validateCurrentTheme()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageNameFromSettings:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_theme_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous theme package is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new theme package is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From original package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Theme package has been changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->clearCaches()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Theme package name("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->validateCurrentTheme()V

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemColor(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->validateCurrentTheme()V

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "color"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0
.end method

.method public getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->validateCurrentTheme()V

    invoke-direct {p0, p1}, Lcom/samsung/android/theme/SThemeManager;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/theme/SThemeManager;->putCachedIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->validateCurrentTheme()V

    invoke-direct {p0, p1}, Lcom/samsung/android/theme/SThemeManager;->getCachedString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "string"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/theme/SThemeManager;->putCachedString(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setThemePackageName(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageNameFromSettings:Z

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/samsung/android/theme/SThemeManager;->mThemePackageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Theme package name("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public usingPackageNameFromSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageNameFromSettings:Z

    return v0
.end method
