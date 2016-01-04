.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final BT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "type"

.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x0

.field private static final DEV_TYPE_TABLET:I = 0x1

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final INVALID_POSITION:I = -0x1

.field private static final LIST_UPDATE_DURATION:I = 0x3e8

.field private static final NET_TYPE_BT:I = 0x1

.field private static final NET_TYPE_WIFIDIRECT:I = 0x0

.field private static final SCAN_TIME_DURATION:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_LIST:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mApplyResolverAdv:Z

.field private mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

.field private mBottomBezelState:Z

.field private mButtonView:Landroid/widget/ImageView;

.field private mCallback:Lcom/samsung/android/sconnect/extern/ISconnectCallback;

.field private mContext:Landroid/content/Context;

.field private mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

.field private mDeviceIndex:I

.field private mDeviceName:Ljava/lang/String;

.field private final mDeviceScanRunnable:Ljava/lang/Runnable;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private mGridDevice:Landroid/widget/ExpandableHeightGridView;

.field private mHandler:Landroid/os/Handler;

.field private mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIsDeviceDefault:Z

.field private mIsGridType:Z

.field private mIsLightTheme:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMaxColumns:I

.field private mNoApplication:Ljava/lang/CharSequence;

.field private mOnceButton:Landroid/widget/Button;

.field private mOrigIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRegistered:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mShowExtended:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 126
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    .line 154
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    .line 155
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceIndex:I

    .line 156
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPhoneNumber:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceName:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    .line 163
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mBottomBezelState:Z

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 183
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1105
    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRefreshButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1160
    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    .line 1387
    new-instance v0, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mServiceConn:Landroid/content/ServiceConnection;

    .line 1419
    new-instance v0, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/samsung/android/sconnect/extern/ISconnectCallback;

    .line 1653
    return-void
.end method

.method private DeviceListUpdate()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1186
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initDeviceList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/ResolverActivity;Lcom/samsung/android/sconnect/extern/ISconnect;)Lcom/samsung/android/sconnect/extern/ISconnect;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/samsung/android/sconnect/extern/ISconnect;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ExpandableHeightGridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/ISconnectCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mCallback:Lcom/samsung/android/sconnect/extern/ISconnectCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->DeviceListUpdate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceIndex:I

    return v0
.end method

.method static synthetic access$1808(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceIndex:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/app/ResolverActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getDevType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getNetType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->clearDeviceList(Z)V

    return-void
.end method

.method private addApplicationGridView(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020423

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1579
    .local v0, "text":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1580
    const v1, 0x1040b5a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1581
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1583
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020424

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    .line 1584
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1585
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1586
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1587
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 1590
    return-void
.end method

.method private addDeviceGridView(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020420

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1594
    .local v12, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v12}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1595
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040b5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1596
    .local v6, "cText":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1598
    invoke-direct {p0, v12}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1600
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->addRefreshButton()V

    .line 1602
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    .line 1604
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    .line 1605
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1608
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1609
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1611
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1612
    .local v13, "view":Landroid/view/View;
    const v0, 0x1020417

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1613
    .local v7, "icon":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1614
    .local v8, "iconLp":Landroid/view/ViewGroup$LayoutParams;
    const v0, 0x1020014

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1615
    .local v10, "text":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1617
    .local v11, "textLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_0

    if-eqz v11, :cond_0

    .line 1618
    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int v9, v0, v1

    .line 1619
    .local v9, "itemHeight":I
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableHeightGridView;->setItemHeight(I)V

    .line 1622
    .end local v9    # "itemHeight":I
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createLoadingProgress()V

    .line 1623
    return-void
.end method

.method private addRefreshButton()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020421

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mButtonView:Landroid/widget/ImageView;

    .line 1301
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mButtonView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRefreshButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mButtonView:Landroid/widget/ImageView;

    const v1, 0x1080b7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mButtonView:Landroid/widget/ImageView;

    const v1, 0x1080b7e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private applyResolverAdv(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1274
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    .line 1275
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 1276
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->checkThemeType()V

    .line 1280
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->startSconnect()V

    .line 1282
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109011a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1283
    .local v0, "layout":Landroid/widget/ScrollView;
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1285
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addApplicationGridView(Landroid/content/Intent;)V

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addDeviceGridView(Landroid/content/Intent;)V

    .line 1288
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 1289
    return-void
.end method

.method private checkBtWifiStatus(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1220
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1222
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const-string v2, "com.sec.android.app.FileShareClient.DeviceSelectActivity"

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    const-string v2, "ResolverActivity"

    const-string v3, "checkBtWifiStatus: notify to SConnect for Wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    if-eqz v2, :cond_0

    .line 1226
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sconnect/extern/ISconnect;->notifyShareVia(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v1

    .line 1228
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1231
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1232
    const-string v2, "ResolverActivity"

    const-string v3, "checkBtWifiStatus: notify to SConnect for BT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    if-eqz v2, :cond_0

    .line 1235
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sconnect/extern/ISconnect;->notifyShareVia(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1236
    :catch_1
    move-exception v1

    .line 1237
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private checkThemeType()V
    .locals 2

    .prologue
    .line 1292
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getThemeResId()I

    move-result v0

    const v1, 0x1030348

    if-ne v0, v1, :cond_0

    .line 1293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_0
.end method

.method private clearDeviceList(Z)V
    .locals 2
    .param p1, "bClearAll"    # Z

    .prologue
    .line 1143
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1150
    :cond_1
    return-void
.end method

.method private createLoadingProgress()V
    .locals 4

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1158
    return-void
.end method

.method private deviceItemClick(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    .line 1852
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    if-nez v9, :cond_1

    .line 1853
    const-string v9, "ResolverActivity"

    const-string v10, "mGridDevice.onItemClick : mDeviceAdapter is null, finish "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getItemViewType(I)I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getItemViewType(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 1863
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 1865
    .local v0, "deviceInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v0, :cond_3

    .line 1866
    :cond_2
    const-string v9, "ResolverActivity"

    const-string v10, "mGridDevice.onItemClick : info is null, finish "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1871
    :cond_3
    iget v9, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->getIntentFromNetType(I)Landroid/content/Intent;

    move-result-object v3

    .line 1873
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "ResolverActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGridDevice.onItemClick : deviceName= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " deviceId= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " netType= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mime= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1877
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1881
    if-eqz v8, :cond_4

    .line 1882
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1883
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    const-string v9, "ResolverActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGridDevice.onItemClick : uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1887
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v9, "ResolverActivity"

    const-string v10, "mGridDevice.onItemClick : uris = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1892
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-interface {v12, v9, v10, v11}, Lcom/samsung/android/sconnect/extern/ISconnect;->sendFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1895
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v1

    .line 1896
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1899
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1900
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1902
    .restart local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1904
    .local v4, "stream":Landroid/net/Uri;
    if-eqz v4, :cond_8

    .line 1905
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1908
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    const-string v9, "ResolverActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGridDevice.onItemClick :stream = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1912
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 1913
    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v6, :cond_9

    .line 1914
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "text://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1917
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    const-string v9, "ResolverActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mGridDevice.onItemClick :text = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1921
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v9, "ResolverActivity"

    const-string v10, "mGridDevice.onItemClick : extra empty!!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1927
    :try_start_1
    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity;->mISconnect:Lcom/samsung/android/sconnect/extern/ISconnect;

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-interface {v12, v9, v10, v11}, Lcom/samsung/android/sconnect/extern/ISconnect;->sendFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1930
    :catch_1
    move-exception v1

    .line 1931
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 1935
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "stream":Landroid/net/Uri;
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_b
    const-string v9, "ResolverActivity"

    const-string v10, "mGridDevice.onItemClick : Action is wrong!!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private disableBottomBezelState()V
    .locals 5

    .prologue
    .line 1244
    const-string v2, "BezelInteractionService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1246
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-nez v2, :cond_0

    .line 1247
    invoke-static {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-eqz v2, :cond_1

    .line 1252
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    invoke-interface {v2}, Lcom/samsung/android/bezelinteraction/IBezelManager;->getEnableBezelInteraction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mBottomBezelState:Z

    .line 1253
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBottomBezel mBottomBezelState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mBottomBezelState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/bezelinteraction/IBezelManager;->enableBezelInteraction(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :cond_1
    :goto_0
    return-void

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling disableBottomBezel\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDevType(I)I
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 1213
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1214
    const/4 v0, 0x1

    .line 1216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetType(I)I
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 1200
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    .line 1201
    const/4 v0, 0x1

    .line 1203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDeviceList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1125
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040b5d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v2, v7}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->setLoading(Z)V

    .line 1128
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->setEmpty(Z)V

    .line 1130
    :cond_0
    iput v6, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceIndex:I

    .line 1131
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1133
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020420

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1134
    .local v1, "titleText":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b5b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1135
    .local v0, "cText":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1137
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1139
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->createLoadingProgress()V

    .line 1140
    return-void
.end method

.method private isSupportResolverAdv(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 1360
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    .line 1361
    return v0
.end method

.method private isSupportSConnect()Z
    .locals 4

    .prologue
    .line 1366
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1367
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.sconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    return-object v0
.end method

.method private openPhoto(J)V
    .locals 13
    .param p1, "contactId"    # J

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1546
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1547
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1549
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1550
    const/4 v4, 0x0

    .line 1551
    .local v4, "mask":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1552
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1554
    .local v3, "mPhoto":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080bc6

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1557
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1559
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1561
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1562
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v3, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1564
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1565
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1566
    invoke-virtual {v1, v4, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1567
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1569
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    .line 1574
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "mPhoto":Landroid/graphics/Bitmap;
    .end local v4    # "mask":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 1571
    :cond_0
    const-string v7, "ResolverActivity"

    const-string/jumbo v8, "openPhoto:  input has no photo"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iput-object v12, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private restoreBottomBezelState()V
    .locals 4

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-eqz v1, :cond_0

    .line 1264
    :try_start_0
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBottomBezelState mBottomBezelState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mBottomBezelState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBezelManager:Lcom/samsung/android/bezelinteraction/IBezelManager;

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mBottomBezelState:Z

    invoke-interface {v1, v2}, Lcom/samsung/android/bezelinteraction/IBezelManager;->enableBezelInteraction(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling restoreBottomBezelState\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSubtitleBackground(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1319
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1320
    .local v1, "pL":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1321
    .local v3, "pT":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1322
    .local v2, "pR":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 1324
    .local v0, "pB":I
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v4, :cond_0

    .line 1325
    const v4, 0x1080bc2

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1330
    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1331
    return-void

    .line 1327
    :cond_0
    const v4, 0x1080bc1

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleColor(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1316
    :goto_0
    return-void

    .line 1314
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private startSconnect()V
    .locals 3

    .prologue
    .line 1375
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "startSconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sconnect.central_START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1378
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1379
    return-void
.end method

.method private stopSconnect()V
    .locals 3

    .prologue
    .line 1382
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "stopSconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sconnect.central_START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1385
    return-void
.end method


# virtual methods
.method protected GetContactInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1506
    const-string v7, "Unknown"

    .line 1508
    .local v7, "name":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1541
    :goto_0
    return-object v3

    .line 1511
    :cond_0
    const-string v0, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetContactInfo: phone -  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1514
    .local v1, "lookupUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "number"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1516
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mDrawableIcon:Landroid/graphics/drawable/Drawable;

    .line 1521
    const-string v0, "ResolverActivity"

    const-string v2, "GetContactInfo:  getCount is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 1525
    goto :goto_0

    .line 1529
    :cond_1
    const-string v0, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone+equals"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "number"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->openPhoto(J)V

    .line 1535
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1536
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1539
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 1541
    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 401
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 406
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 402
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getIntentFromNetType(I)Landroid/content/Intent;
    .locals 11
    .param p1, "netType"    # I

    .prologue
    .line 1814
    const/4 v5, 0x0

    .line 1816
    .local v5, "netDri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getNetType(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1817
    const-string v6, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    .line 1822
    .local v6, "netTypeString":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v8, v8, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 1823
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v8, v8, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1824
    .local v2, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    iget-object v8, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1825
    .local v0, "actInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1826
    move-object v5, v2

    .line 1832
    .end local v0    # "actInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v5, :cond_5

    .line 1833
    new-instance v4, Landroid/content/Intent;

    iget-object v8, v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v8, :cond_4

    iget-object v8, v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1835
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    .line 1836
    .local v7, "selectorIntent":Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 1837
    move-object v4, v7

    .line 1839
    :cond_2
    const/high16 v8, 0x3000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1841
    iget-object v8, v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1842
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1847
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "selectorIntent":Landroid/content/Intent;
    :goto_2
    return-object v4

    .line 1819
    .end local v6    # "netTypeString":Ljava/lang/String;
    :cond_3
    const-string v6, "com.sec.android.app.FileShareClient.DeviceSelectActivity"

    .restart local v6    # "netTypeString":Ljava/lang/String;
    goto :goto_0

    .line 1833
    :cond_4
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    goto :goto_1

    .line 1847
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    goto :goto_2
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 413
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 414
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v4, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 415
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 435
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return-object v1

    .line 413
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 414
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 419
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_4

    .line 420
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 421
    if-nez v1, :cond_0

    .line 425
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 426
    .local v3, "iconRes":I
    if-eqz v3, :cond_5

    .line 427
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 428
    if-nez v1, :cond_0

    .line 435
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ResolverActivity"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 553
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x1020398

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 555
    return-void

    .line 553
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040688

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x1030348

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 221
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 231
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 241
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 242
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_2

    .line 245
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 250
    :goto_2
    const/16 v17, 0x0

    .line 253
    .local v17, "type":I
    :try_start_2
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    .line 258
    :goto_3
    packed-switch v17, :pswitch_data_0

    .line 268
    :goto_4
    const/16 v16, 0x0

    .line 271
    .local v16, "theme":I
    :try_start_3
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    .line 276
    :goto_5
    packed-switch v16, :pswitch_data_1

    .line 291
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 293
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 297
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 299
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 300
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 301
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 303
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v13

    .line 306
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 391
    :cond_1
    :goto_7
    return-void

    .line 225
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v13    # "count":I
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "theme":I
    .end local v17    # "type":I
    :catch_0
    move-exception v14

    .line 226
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 232
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 233
    .restart local v14    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 234
    const-string v2, "ResolverActivity"

    const-string v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v15    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    goto/16 :goto_2

    .line 261
    .restart local v17    # "type":I
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    .line 264
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    .line 279
    .restart local v16    # "theme":I
    :pswitch_2
    const v2, 0x1030347

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 285
    :pswitch_3
    const v2, 0x1030347

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 288
    :pswitch_4
    const v2, 0x1030348

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 310
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v13    # "count":I
    :cond_3
    const/4 v2, 0x1

    if-le v13, v2, :cond_b

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportResolverAdv(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->applyResolverAdv(Landroid/content/Intent;)V

    goto :goto_7

    .line 317
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_9

    .line 318
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_8

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 323
    :goto_8
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020397

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    .line 335
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 339
    if-eqz p6, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_5

    .line 342
    const v2, 0x1040955

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 344
    const v2, 0x1040956

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 348
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_6

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 368
    :cond_6
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 370
    if-eqz p6, :cond_1

    .line 371
    const v2, 0x10202f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 372
    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-nez v2, :cond_7

    if-nez v12, :cond_e

    .line 373
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 385
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getInitialHighlight()I

    move-result v5

    .line 386
    .local v5, "initialHighlight":I
    if-ltz v5, :cond_1

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 388
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_7

    .line 321
    .end local v5    # "initialHighlight":I
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto/16 :goto_8

    .line 325
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_a

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 330
    :goto_c
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102039a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    goto/16 :goto_9

    .line 328
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_c

    .line 351
    :cond_b
    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    if-eqz v2, :cond_c

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity;->checkBtWifiStatus(Landroid/content/Intent;)V

    .line 358
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 364
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040690

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 365
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 377
    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_e
    if-eqz v12, :cond_f

    .line 378
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const v2, 0x1020398

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 380
    const v2, 0x1020399

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    goto/16 :goto_b

    .line 382
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_b

    .line 272
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    .end local v13    # "count":I
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 254
    .end local v16    # "theme":I
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 276
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 29
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 570
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 576
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 577
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 578
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    .end local v12    # "cat":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 584
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 585
    .local v15, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    .line 586
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 587
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 589
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 600
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 603
    :cond_3
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v22

    .line 608
    .local v22, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v22, :cond_5

    .line 609
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v28

    .line 610
    .local v28, "ssp":Ljava/lang/String;
    :cond_4
    if-eqz v28, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 611
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PatternMatcher;

    .line 612
    .local v21, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 613
    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 618
    .end local v21    # "p":Landroid/os/PatternMatcher;
    .end local v28    # "ssp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 619
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_7

    .line 620
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 621
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 622
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 623
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v24

    .line 624
    .local v24, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v24, :cond_b

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v24    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v22

    .line 631
    if-eqz v22, :cond_9

    .line 632
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 633
    .local v23, "path":Ljava/lang/String;
    :cond_8
    if-eqz v23, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 634
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PatternMatcher;

    .line 635
    .restart local v21    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 636
    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 644
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v21    # "p":Landroid/os/PatternMatcher;
    .end local v22    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v23    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_d

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 646
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v27, v0

    .line 647
    .local v27, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 648
    .local v7, "bestMatch":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v25, v0

    .line 650
    .local v25, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v27, v17

    .line 652
    move-object/from16 v0, v25

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, v25

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 648
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 590
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v17    # "i":I
    .end local v25    # "r":Landroid/content/pm/ResolveInfo;
    .end local v27    # "set":[Landroid/content/ComponentName;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 591
    .local v16, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 624
    .end local v16    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v22    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v24    # "port":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 654
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v22    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v24    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v17    # "i":I
    .restart local v27    # "set":[Landroid/content/ComponentName;
    :cond_c
    if-eqz p3, :cond_f

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 670
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v27    # "set":[Landroid/content/ComponentName;
    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    .line 671
    if-eqz p3, :cond_10

    .line 673
    :try_start_1
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 676
    .local v20, "newIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 679
    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 680
    const/high16 v2, 0x800000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 705
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v20    # "newIntent":Landroid/content/Intent;
    :cond_e
    :goto_5
    return-void

    .line 659
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "data":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v27    # "set":[Landroid/content/ComponentName;
    :cond_f
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 663
    :catch_1
    move-exception v26

    .line 664
    .local v26, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 684
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v26    # "re":Landroid/os/RemoteException;
    .end local v27    # "set":[Landroid/content/ComponentName;
    :catch_2
    move-exception v16

    .line 685
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 686
    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v16

    .line 687
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 688
    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 694
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    if-eqz v2, :cond_11

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->checkBtWifiStatus(Landroid/content/Intent;)V

    .line 699
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 700
    :catch_4
    move-exception v16

    .line 701
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 512
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridDevice:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_0

    .line 513
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->deviceItemClick(I)V

    .line 529
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 518
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x1

    .line 519
    .local v1, "hasValidSelection":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_4

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 521
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 522
    if-eqz v1, :cond_2

    .line 523
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 525
    :cond_2
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    goto :goto_0

    .end local v1    # "hasValidSelection":Z
    :cond_3
    move v1, v2

    .line 518
    goto :goto_1

    .line 527
    .restart local v1    # "hasValidSelection":Z
    :cond_4
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 440
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 443
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->clearDeviceList(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initDeviceList()V

    .line 447
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceAdapter:Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 449
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->startSconnect()V

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 455
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 458
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 496
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 498
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 500
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 501
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 502
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 503
    if-eqz v1, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 507
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 498
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 464
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyResolverAdv:Z

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->stopSconnect()V

    .line 475
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 479
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 491
    :cond_3
    return-void
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 395
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 396
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 708
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 711
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 712
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 562
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 564
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
