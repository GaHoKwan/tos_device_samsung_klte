.class public final Lcom/samsung/android/fingerprint/FingerprintEvent;
.super Ljava/lang/Object;
.source "FingerprintEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPTURE_STATUS_KEY_BADSWIPES:Ljava/lang/String; = "badSwipes"

.field public static final CAPTURE_STATUS_KEY_IMAGEQUALITY:Ljava/lang/String; = "imageQuality"

.field public static final CAPTURE_STATUS_KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CAPTURE_STATUS_KEY_TEMPLATERESULT:Ljava/lang/String; = "templateResult"

.field public static final CAPTURE_STATUS_KEY_TOTALSWIPES:Ljava/lang/String; = "totalSwipes"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/fingerprint/FingerprintEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field public static final EVENT_ENROLL_FINISHED:I = 0x4

.field public static final EVENT_ENROLL_READY:I = 0x1

.field public static final EVENT_ENROLL_STARTED:I = 0x2

.field public static final EVENT_ENROLL_STATUS:I = 0x3

.field public static final EVENT_FINGER_REMOVED:I = 0x3f3

.field public static final EVENT_FINGER_SWIPE_SPEED:I = 0x3f5

.field public static final EVENT_GESTURE:I = 0x3f2

.field public static final EVENT_IDENTIFY_FINISHED:I = 0xd

.field public static final EVENT_IDENTIFY_READY:I = 0xb

.field public static final EVENT_IDENTIFY_STARTED:I = 0xc

.field public static final EVENT_IDENTIFY_STATUS:I = 0xe

.field public static final EVENT_IDLE:I = 0x2710

.field public static final EVENT_NAVIGATION_EVENT:I = 0x3e8

.field public static final IDENTIFY_INFO_KEY_FINGERINDEX:Ljava/lang/String; = "fingerIndex"

.field public static final IDENTIFY_INFO_KEY_PERMISSION:Ljava/lang/String; = "permission"

.field public static final IDENTIFY_INFO_KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final IMAGE_QUALITY_BAD_SWIPE:I = 0x2000

.field public static final IMAGE_QUALITY_FINGER_OFFSET:I = 0x1000

.field public static final IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_LEFT:I = 0x20000

.field public static final IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_RIGHT:I = 0x40000

.field public static final IMAGE_QUALITY_FINGER_TOO_THIN:I = 0x2000000

.field public static final IMAGE_QUALITY_GOOD:I = 0x0

.field public static final IMAGE_QUALITY_PRESSURE_TOO_HARD:I = 0x80000

.field public static final IMAGE_QUALITY_PRESSURE_TOO_LIGHT:I = 0x10000

.field public static final IMAGE_QUALITY_SKEW_TOO_LARGE:I = 0x8000

.field public static final IMAGE_QUALITY_SOMETHING_ON_THE_SENSOR:I = 0x200

.field public static final IMAGE_QUALITY_STICTION:I = 0x1

.field public static final IMAGE_QUALITY_TOO_FAST:I = 0x2

.field public static final IMAGE_QUALITY_TOO_SHORT:I = 0x4

.field public static final IMAGE_QUALITY_TOO_SLOW:I = 0x10

.field public static final IMAGE_QUALITY_WET_FINGER:I = 0x1000000

.field public static final IMAGE_QUALITY_WRONG_FINGER:I = 0x20000000

.field public static final RESULT_FAILED:I = -0x1

.field public static final RESULT_INVALID_TOKEN:I = -0x3

.field public static final RESULT_IN_PROGRESS:I = -0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final STATUS_ALREADY_REGISTERED:I = 0x1

.field public static final STATUS_ALTERNATIVE_PASSWORD:I = 0x64

.field public static final STATUS_CAPTURE_FAILED:I = 0x14

.field public static final STATUS_GOOD:I = 0x0

.field public static final STATUS_OPERATION_DENIED:I = 0x33

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SENSOR_ERROR:I = 0x7

.field public static final STATUS_TIMEOUT:I = 0x4

.field public static final STATUS_UNKNOWN:I = 0x10

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field public static final STATUS_USER_VERIFICATION_FAILED:I = 0xb

.field public static final SWIPE_DIRECTION_DOWN:I = 0x1

.field public static final SWIPE_DIRECTION_LEFT:I = 0x3

.field public static final SWIPE_DIRECTION_REST:I = 0x5

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x4

.field public static final SWIPE_DIRECTION_UNKNOWN:I = -0x1

.field public static final SWIPE_DIRECTION_UP:I = 0x0

.field public static final SWIPE_KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final SWIPE_KEY_SPEED:Ljava/lang/String; = "swipeSpeed"

.field private static final TAG:Ljava/lang/String; = "FingerprintEvent"

.field private static final eventIdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventImageQualityNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventResultNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventStatusNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventSwipeDirectionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventData:Landroid/os/Bundle;

.field public eventId:I

.field public eventResult:I

.field public eventStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->DEBUG:Z

    .line 432
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    .line 442
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    .line 447
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    .line 452
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    .line 462
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    const-string v1, "EVENT_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    const-string v1, "RESULT_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    const-string v1, "STATUS_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    const-string v1, "IMAGE_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    const-string v1, "SWIPE_DIRECTION_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 49
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 54
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 49
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 54
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    .line 479
    iput p1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 480
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 49
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 54
    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    .line 490
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 491
    return-void
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 667
    :cond_0
    return-void

    .line 646
    :cond_1
    const-class v7, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 648
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 649
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 648
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 654
    :cond_3
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 656
    .local v3, "fieldValue":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 657
    .end local v3    # "fieldValue":I
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "FingerprintEvent"

    const-string v8, "generateNameMap: failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget-boolean v7, Lcom/samsung/android/fingerprint/FingerprintEvent;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 661
    if-eqz v1, :cond_2

    .line 662
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public getBadSwipes()I
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string v1, "badSwipes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEventIdName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventResultName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventStatusName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFingerIndex()I
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string v1, "fingerIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGrantedPermissions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v8, "permission"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "permissions":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 632
    :cond_0
    return-object v6

    .line 622
    :cond_1
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "permNames":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 625
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 626
    .local v3, "permName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 627
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIdentifiedUserId()I
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImageQuality()I
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string v1, "imageQuality"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageQualityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 706
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSwipeDirection()I
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string v1, "direction"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSwipeDirectionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getSwipeDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSwipeSpeed()I
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "swipeSpeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTemplateResult()I
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "templateResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalSwipes()I
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "totalSwipes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 519
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 524
    return-void
.end method
