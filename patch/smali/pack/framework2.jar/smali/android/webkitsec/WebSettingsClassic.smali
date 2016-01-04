.class public Landroid/webkitsec/WebSettingsClassic;
.super Landroid/webkitsec/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebSettingsClassic$1;,
        Landroid/webkitsec/WebSettingsClassic$EventHandler;,
        Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.1.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private isPopUpBrowserEnabled:Z

.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdvanceSelectionBgColor:J

.field private mAdvanceTextSelection:Z

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

.field private mDeskTopmode:Z

.field private mDisableAnimation:Z

.field private mDisableSelection:Z

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEditableSupport:Z

.field private mEmailPreviewMode:Z

.field private mEnableAdvanceCommands:Z

.field private mEnableDoubleTapBlockZoom:Z

.field private mEnableImideo:I

.field private mEnableMagnifier:Z

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFileSystemPath:Ljava/lang/String;

.field private mFileSystemPathHasBeenSet:Z

.field private mFilesystemEnabled:Z

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mHighResolutionDevice:Z

.field private mIsBrowserApp:Z

.field private mIsSetupViewportDisabled:Z

.field private mIsSkiaPictureEnabled:Z

.field private mIsSpellCheckEnabled:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mNewActionPopup:Z

.field private mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

.field private mOnewayScroll:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkitsec/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSearchEngineName:Ljava/lang/String;

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mSkipLayoutForHiddenHorizontalText:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportRssSniffing:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mTitleBarFixed:Z

.field private mTouchDebug:Z

.field private mUseDefaultClipboard:Z

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseEmailViewport:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWOFFEnabled:Z

.field private mWebGLEnabled:Z

.field private mWebView:Landroid/webkitsec/WebViewClassic;

.field private mWebnotificationDatabasePath:Ljava/lang/String;

.field private mWebnotificationEnabled:Z

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x3

    sput v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/16 v6, 0x64

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    invoke-direct {p0}, Landroid/webkitsec/WebSettings;-><init>()V

    .line 60
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    .line 70
    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    .line 72
    iput v6, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    .line 73
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 77
    const-string v1, "cursive"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 78
    const-string v1, "fantasy"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 83
    iput v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    .line 84
    iput v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 85
    iput v7, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    .line 86
    const/16 v1, 0xd

    iput v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 87
    iput v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    .line 88
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 89
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 91
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 92
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 93
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 94
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 95
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 96
    sget-object v1, Landroid/webkitsec/WebSettings$PluginState;->OFF:Landroid/webkitsec/WebSettings$PluginState;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    .line 98
    sget-object v1, Landroid/webkitsec/WebSettings$NotificationState;->ON:Landroid/webkitsec/WebSettings$NotificationState;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    .line 100
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 101
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDoubleTree:Z

    .line 102
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    .line 103
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 104
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 106
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 107
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 109
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 110
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 111
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 112
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    .line 113
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 114
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 115
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 117
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 119
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 122
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 123
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 127
    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    .line 128
    sget-object v1, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    .line 130
    iput v6, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    .line 131
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    .line 132
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 133
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    .line 135
    const-string v1, "GOOGLE"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    .line 137
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 138
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 139
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    .line 140
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    .line 141
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 142
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 143
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 144
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    .line 145
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    .line 146
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 147
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 148
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z

    .line 149
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z

    .line 151
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    .line 152
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    .line 153
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    .line 154
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    .line 155
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    .line 156
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    .line 159
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    .line 162
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    .line 163
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    .line 164
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    .line 165
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    .line 166
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceSelectionBgColor:J

    .line 167
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    .line 170
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    .line 173
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    .line 177
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    .line 178
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPath:Ljava/lang/String;

    .line 179
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    .line 182
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    .line 183
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    .line 187
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    .line 189
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    .line 193
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    .line 196
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    .line 199
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z

    .line 203
    iput v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    .line 253
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 267
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    .line 270
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    .line 2282
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    .line 2342
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    .line 2343
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    .line 2344
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    .line 365
    new-instance v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkitsec/WebSettingsClassic$EventHandler;-><init>(Landroid/webkitsec/WebSettingsClassic;Landroid/webkitsec/WebSettingsClassic$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    .line 366
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    .line 367
    iput-object p2, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 368
    const v1, 0x1040119

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 371
    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 375
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 376
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 377
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 379
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 384
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v7, :cond_1

    .line 386
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 387
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 390
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_password"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 379
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/BrowserFrame;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/WebSettingsClassic;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkitsec/WebSettingsClassic;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/WebSettingsClassic;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebSettingsClassic;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 463
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 440
    if-nez p0, :cond_1

    .line 441
    const/4 p0, 0x0

    .line 453
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 443
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const-string p0, "he"

    goto :goto_0

    .line 446
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    const-string p0, "id"

    goto :goto_0

    .line 449
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    sget-object v3, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 414
    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 418
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 420
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Web_SetUserAgent"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    const-string v2, "en-US;q=0.2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 414
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 425
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v1    # "locale":Ljava/util/Locale;
    :cond_1
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    :cond_2
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 476
    :try_start_1
    sget-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 477
    .local v0, "locale":Ljava/util/Locale;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :try_start_2
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/webkitsec/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 477
    .end local v0    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 475
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v11, 0x0

    .line 493
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 495
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 496
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 497
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 499
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 512
    invoke-static {v4}, Landroid/webkitsec/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 515
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 525
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 528
    .local v6, "model":Ljava/lang/String;
    const/4 v7, 0x0

    .line 530
    .local v7, "tempModelName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Web_UseTempModelName"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 534
    :goto_2
    if-eqz v7, :cond_6

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 535
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    .end local v6    # "model":Ljava/lang/String;
    .end local v7    # "tempModelName":Ljava/lang/String;
    :cond_1
    :goto_3
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 544
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 545
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "mobile":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "base":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 503
    .end local v0    # "base":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "mobile":Ljava/lang/String;
    :cond_3
    const-string v9, "4.1.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 507
    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 520
    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 538
    .restart local v6    # "model":Ljava/lang/String;
    .restart local v7    # "tempModelName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 539
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 531
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 2212
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 2217
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 2214
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 2215
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 2223
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 2224
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    :cond_0
    monitor-exit p0

    return-void

    .line 2223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1536
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1537
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1545
    :cond_0
    return-void
.end method


# virtual methods
.method public enableDoubleTapBlockZoom()Z
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    return v0
.end method

.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method forceSetAdvancedCopyPasteFeature(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 939
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    .line 940
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    .line 941
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 942
    return-void
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 2077
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1957
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1958
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1959
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1960
    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1961
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1963
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1964
    :try_start_2
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1963
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1957
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAdvanceCommands()Z
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    return v0
.end method

.method public getAdvancedCopyPasteFeature()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    return v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1826
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1818
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 2133
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 2144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1511
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 2014
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1756
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1460
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1440
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1900
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisableAnimation()Z
    .locals 1

    .prologue
    .line 1093
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    return v0
.end method

.method public getDisableSelection()Z
    .locals 1

    .prologue
    .line 1028
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    return v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1740
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 2159
    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public getEditableSupport()Z
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    return v0
.end method

.method public getEnableMagnifier()Z
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1605
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImideoDebugMode()I
    .locals 1

    .prologue
    .line 2445
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    return v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1881
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1810
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1492
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1983
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public getNewActionPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 959
    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    if-ne v1, v0, :cond_0

    .line 962
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getNotificationState()Landroid/webkitsec/WebSettings$NotificationState;
    .locals 1

    .prologue
    .line 2326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnewayScrollEnabled()Z
    .locals 1

    .prologue
    .line 2411
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkitsec/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1843
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1835
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    sget-object v1, Landroid/webkitsec/WebSettings$PluginState;->ON:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1852
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPopUpBrowserState()Z
    .locals 1

    .prologue
    .line 2382
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2178
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 875
    const-string/jumbo v0, "websettings.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside the getSearchEngineName function of WebSettings.java - returning value as"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1623
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseDefaultClipboard()Z
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    return v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getUseEmailViewPort()Z
    .locals 1

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 2047
    invoke-virtual {p0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 1200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, 0x1

    .line 1181
    :goto_0
    monitor-exit p0

    return v0

    .line 1176
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    const/4 v0, 0x2

    goto :goto_0

    .line 1178
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1179
    const/4 v0, 0x0

    goto :goto_0

    .line 1181
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1933
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1936
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1952
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1939
    :cond_1
    const/4 v1, 0x0

    .line 1940
    .local v1, "doPostSync":Z
    :try_start_1
    sget-object v3, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1941
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1942
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1943
    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1944
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1945
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1946
    const/4 v1, 0x1

    .line 1948
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1949
    if-eqz v1, :cond_3

    .line 1950
    :try_start_3
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 1952
    :cond_3
    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1948
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1933
    .end local v1    # "doPostSync":Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getWebGLEnabled()Z
    .locals 1

    .prologue
    .line 2250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBrowserApp()Z
    .locals 1

    .prologue
    .line 2351
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    return v0
.end method

.method public isDefaultZoomChanged()Z
    .locals 3

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "isDefaultZoomChanged":Z
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    iget v1, v1, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 866
    const/4 v0, 0x1

    .line 867
    :cond_0
    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 2402
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    return v0
.end method

.method public isEmailPreviewMode()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    return v0
.end method

.method public isHighResolutionDevice()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    return v0
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1968
    invoke-virtual {p0}, Landroid/webkitsec/WebSettingsClassic;->getLayoutAlgorithm()Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method public isSetupViewportDisabled()Z
    .locals 1

    .prologue
    .line 2432
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    return v0
.end method

.method isSkiaPictureEnabled()Z
    .locals 1

    .prologue
    .line 2358
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    return v0
.end method

.method isSkipLayoutForHiddenHorizontalText()Z
    .locals 1

    .prologue
    .line 2365
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    return v0
.end method

.method public isTitleBarFixed()Z
    .locals 1

    .prologue
    .line 2392
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 2208
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setActualHeightHack(Z)V
    .locals 1
    .param p1, "actualHeightHack"    # Z

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setActualHeightHack(Z)V

    .line 2421
    return-void
.end method

.method public setAdvanceCommands(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1066
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    .line 1067
    return-void
.end method

.method public setAdvancedCopyPasteFeature(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 924
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    if-eq v0, p1, :cond_3

    .line 925
    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 932
    :cond_2
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    .line 933
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 935
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    .line 664
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 647
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    .line 648
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1584
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1585
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 1586
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :cond_0
    monitor-exit p0

    return-void

    .line 1584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1573
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1574
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 1575
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    :cond_0
    monitor-exit p0

    return-void

    .line 1573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1683
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1684
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 1685
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    :cond_0
    monitor-exit p0

    return-void

    .line 1683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .param p1, "appCacheMaxSize"    # J

    .prologue
    .line 1707
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1708
    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 1709
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    :cond_0
    monitor-exit p0

    return-void

    .line 1707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1696
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 1698
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    :cond_0
    monitor-exit p0

    return-void

    .line 1696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2118
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2119
    .local v0, "autoFillEnabled":Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 2120
    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 2121
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    :cond_0
    monitor-exit p0

    return-void

    .line 2118
    .end local v0    # "autoFillEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    .prologue
    .line 2137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 2138
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    .line 2139
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    :cond_0
    monitor-exit p0

    return-void

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1500
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1501
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 1502
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    :cond_0
    monitor-exit p0

    return-void

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1519
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1520
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 1521
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->verifyNetworkAccess()V

    .line 1522
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    :cond_0
    monitor-exit p0

    return-void

    .line 1519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBlockRequestLayout(Z)V
    .locals 1
    .param p1, "blockRequestLayout"    # Z

    .prologue
    .line 2416
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setBlockRequestLayout(Z)V

    .line 2417
    return-void
.end method

.method setBrowserApp(Z)V
    .locals 0
    .param p1, "isBrowserApp"    # Z

    .prologue
    .line 2347
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    .line 2348
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2349
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 614
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2003
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 2004
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    .line 2005
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2007
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1350
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 1352
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    :cond_0
    monitor-exit p0

    return-void

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1718
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1719
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 1720
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    :cond_0
    monitor-exit p0

    return-void

    .line 1718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1659
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1660
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 1662
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    :cond_0
    monitor-exit p0

    return-void

    .line 1659
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1448
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1449
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1450
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 1451
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :cond_0
    monitor-exit p0

    return-void

    .line 1448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1428
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1429
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1430
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    .line 1431
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_0
    monitor-exit p0

    return-void

    .line 1428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1889
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1891
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    :cond_0
    monitor-exit p0

    return-void

    .line 1889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultViewport(I)V
    .locals 1
    .param p1, "defaultViewport"    # I

    .prologue
    .line 2424
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setDefaultViewport(I)V

    .line 2425
    return-void
.end method

.method public setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V
    .locals 2
    .param p1, "zoom"    # Landroid/webkitsec/WebSettings$ZoomDensity;

    .prologue
    .line 844
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 845
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    .line 846
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v1, p1, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->adjustDefaultZoomDensity(I)V

    .line 848
    :cond_0
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 0
    .param p1, "bDesktopMode"    # Z

    .prologue
    .line 2397
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    .line 2398
    return-void
.end method

.method public setDisableAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1084
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    .line 1085
    return-void
.end method

.method public setDisableSelection(Z)Z
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 1021
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    return p1
.end method

.method public setDisableSetupViewport(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 2428
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    .line 2429
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 631
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 632
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1729
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1730
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 1731
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    :cond_0
    monitor-exit p0

    return-void

    .line 1729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 2163
    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 2164
    sput p1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 2166
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    .line 2169
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .param p1, "doubleTapZoom"    # I

    .prologue
    .line 825
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 826
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    .line 827
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->updateDoubleTapZoom(I)V

    .line 829
    :cond_0
    return-void
.end method

.method public setEditableSupport(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1048
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    .line 1049
    return-void
.end method

.method public setEmailPreviewMode(Z)V
    .locals 0
    .param p1, "previewMode"    # Z

    .prologue
    .line 1102
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    .line 1103
    return-void
.end method

.method public setEnableDoubleTapBlockZoom(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2096
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    .line 2097
    return-void
.end method

.method public setEnableMagnifier(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 997
    if-ne v2, p1, :cond_2

    .line 999
    const-string v0, "com.android.browser"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec_container_1.com.android.browser"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    :cond_0
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 1005
    :cond_2
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    goto :goto_0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 696
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1369
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 1371
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :cond_0
    monitor-exit p0

    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileSystemPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 2260
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 2261
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPath:Ljava/lang/String;

    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    .line 2263
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    :cond_0
    monitor-exit p0

    return-void

    .line 2260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFilesystemEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2273
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    .line 2274
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    :cond_0
    monitor-exit p0

    return-void

    .line 2272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1293
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 1295
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    :cond_0
    monitor-exit p0

    return-void

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2085
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2086
    monitor-exit p0

    return-void

    .line 2085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1671
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1674
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    :cond_0
    monitor-exit p0

    return-void

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1777
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1778
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 1779
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    :cond_0
    monitor-exit p0

    return-void

    .line 1777
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1595
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1596
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 1597
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    :cond_0
    monitor-exit p0

    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighResolutionDevice(Z)V
    .locals 0
    .param p1, "resolutionType"    # Z

    .prologue
    .line 1120
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    .line 1121
    return-void
.end method

.method public declared-synchronized setImideoDebugMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2441
    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    .line 2442
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    monitor-exit p0

    return-void

    .line 2441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsContinousSpellCheck(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2127
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    .line 2128
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2130
    :cond_0
    monitor-exit p0

    return-void

    .line 2126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1870
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1871
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1872
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    :cond_0
    monitor-exit p0

    return-void

    .line 1870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1561
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1562
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 1563
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 1564
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->updateJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    :cond_0
    monitor-exit p0

    return-void

    .line 1561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkitsec/WebSettings$LayoutAlgorithm;)V
    .locals 2
    .param p1, "l"    # Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-ne p1, v0, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebViewClassic does not support TEXT_AUTOSIZING layout mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1255
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_1

    .line 1256
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    .line 1257
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 895
    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1799
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1800
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 1801
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    :cond_0
    monitor-exit p0

    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .param p1, "overview"    # Z

    .prologue
    .line 679
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 680
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1481
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1482
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 1483
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :cond_0
    monitor-exit p0

    return-void

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 2036
    iget-wide v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2037
    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 2038
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2040
    :cond_0
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 595
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 596
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 598
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1388
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1389
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 1390
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    .line 1391
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    :cond_0
    monitor-exit p0

    return-void

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1409
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 1410
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 1411
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    :cond_0
    monitor-exit p0

    return-void

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 561
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    .line 562
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1976
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1977
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 1979
    :cond_0
    return-void
.end method

.method public setNewActionPopup(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 955
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    .line 956
    return-void
.end method

.method public declared-synchronized setNotificationState(Landroid/webkitsec/WebSettings$NotificationState;)V
    .locals 1
    .param p1, "state"    # Landroid/webkitsec/WebSettings$NotificationState;

    .prologue
    .line 2334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    if-eq v0, p1, :cond_0

    .line 2335
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    .line 2336
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    :cond_0
    monitor-exit p0

    return-void

    .line 2334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnewayScrollEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 2407
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z

    .line 2408
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1468
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1469
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1470
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1471
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    .line 1472
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    :cond_2
    monitor-exit p0

    return-void

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkitsec/WebSettings$PluginState;)V
    .locals 1
    .param p1, "state"    # Landroid/webkitsec/WebSettings$PluginState;

    .prologue
    .line 1640
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1641
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    .line 1642
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    :cond_0
    monitor-exit p0

    return-void

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1632
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebSettings$PluginState;->ON:Landroid/webkitsec/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setPluginState(Landroid/webkitsec/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    monitor-exit p0

    return-void

    .line 1632
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkitsec/WebSettings$PluginState;->OFF:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginsPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1652
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setPopUpBrowserState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2374
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    .line 2375
    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2062
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2063
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 2067
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 2069
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    :cond_0
    monitor-exit p0

    return-void

    .line 2062
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2172
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 2175
    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkitsec/WebSettings$RenderPriority;)V
    .locals 3
    .param p1, "priority"    # Landroid/webkitsec/WebSettings$RenderPriority;

    .prologue
    .line 1991
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1992
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    .line 1993
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    :cond_0
    monitor-exit p0

    return-void

    .line 1991
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRssSniffing(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 910
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    if-eq v0, p1, :cond_0

    .line 911
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    .line 912
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_0
    monitor-exit p0

    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1312
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1314
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    :cond_0
    monitor-exit p0

    return-void

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    .line 739
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 754
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    .line 755
    return-void
.end method

.method public setSearchEngineName(Ljava/lang/String;)V
    .locals 3
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 883
    const-string/jumbo v0, "websettings.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "now setting the mSearchEngineName inside websettings.java as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    .line 886
    return-void
.end method

.method public setSelectionBgColor(J)V
    .locals 0
    .param p1, "color"    # J

    .prologue
    .line 969
    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceSelectionBgColor:J

    .line 970
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 971
    return-void
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 2436
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V

    .line 2437
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1331
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 1333
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    :cond_0
    monitor-exit p0

    return-void

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1613
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1614
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 1615
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    :cond_0
    monitor-exit p0

    return-void

    .line 1613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .param p1, "shrink"    # Z

    .prologue
    .line 2024
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 2025
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 2026
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2028
    :cond_0
    return-void
.end method

.method setSkiaPictureEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2354
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    .line 2355
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2356
    return-void
.end method

.method setSkipLayoutForHiddenHorizontalText(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2361
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    .line 2362
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    .line 2363
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 1274
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 1276
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :cond_0
    monitor-exit p0

    return-void

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 1228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 1229
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 1230
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    :cond_0
    monitor-exit p0

    return-void

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    .line 579
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 580
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2111
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 2112
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    :cond_0
    monitor-exit p0

    return-void

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    .line 777
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    .line 778
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_0
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitleBarFixed(Z)V
    .locals 0
    .param p1, "bTitleBarFixed"    # Z

    .prologue
    .line 2387
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    .line 2388
    return-void
.end method

.method public declared-synchronized setTouchDebug(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    if-eq v0, p1, :cond_0

    .line 2285
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    .line 2287
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    sput-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    .line 2288
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    .line 2289
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    :cond_0
    monitor-exit p0

    return-void

    .line 2284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseDefaultClipboard(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 979
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    .line 980
    return-void
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1038
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUseEmailViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1208
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    if-eq v0, p1, :cond_0

    .line 1209
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    .line 1210
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->setUseWideViewPort(Z)V

    .line 1211
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :cond_0
    monitor-exit p0

    return-void

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .param p1, "view"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 713
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 1190
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    .line 1191
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :cond_0
    monitor-exit p0

    return-void

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .param p1, "ua"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1149
    monitor-enter p0

    const/4 v0, 0x0

    .line 1150
    .local v0, "uaString":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1151
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1154
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 1165
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1156
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1157
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1160
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1162
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 1908
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1909
    :cond_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1910
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1911
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1912
    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1913
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1915
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1916
    :try_start_2
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1917
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 1922
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1923
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1924
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1926
    :cond_2
    monitor-exit p0

    return-void

    .line 1915
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1908
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1919
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWOFFEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2151
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2152
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    .line 2153
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    :cond_0
    monitor-exit p0

    return-void

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebGLEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2239
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2240
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    .line 2241
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    :cond_0
    monitor-exit p0

    return-void

    .line 2239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebNotificationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 2301
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2303
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    .line 2304
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    :cond_0
    monitor-exit p0

    return-void

    .line 2301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebnotificationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 2312
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2313
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    .line 2314
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    :cond_0
    monitor-exit p0

    return-void

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1766
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1767
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    .line 1768
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    :cond_0
    monitor-exit p0

    return-void

    .line 1766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1789
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1790
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 1791
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    :cond_0
    monitor-exit p0

    return-void

    .line 1789
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 1239
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkitsec/BrowserFrame;)V
    .locals 4
    .param p1, "frame"    # Landroid/webkitsec/BrowserFrame;

    .prologue
    .line 2187
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    .line 2192
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2194
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget v1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 2195
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 2198
    :cond_0
    iget v1, p1, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebSettingsClassic;->nativeSync(I)V

    .line 2199
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    .line 2200
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$900(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    monitor-exit p0

    return-void

    .line 2187
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
