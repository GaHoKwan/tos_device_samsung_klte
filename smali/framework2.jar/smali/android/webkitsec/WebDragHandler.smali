.class Landroid/webkitsec/WebDragHandler;
.super Ljava/lang/Object;
.source "WebDragHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "WebDragHandler"

.field private static final TYPE_HTML:I = 0x2

.field private static final TYPE_IMAGE:I = 0x3

.field private static final TYPE_TEXT:I = 0x1

.field private static isDragSelection:Z

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mInstance:Landroid/webkitsec/WebDragHandler;

.field private static mPicture:Landroid/graphics/Picture;

.field private static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/webkitsec/WebDragHandler;->mType:I

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/webkitsec/WebDragHandler;->mType:I

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method static getInstance()Landroid/webkitsec/WebDragHandler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/webkitsec/WebDragHandler;->mInstance:Landroid/webkitsec/WebDragHandler;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/webkitsec/WebDragHandler;

    invoke-direct {v0}, Landroid/webkitsec/WebDragHandler;-><init>()V

    sput-object v0, Landroid/webkitsec/WebDragHandler;->mInstance:Landroid/webkitsec/WebDragHandler;

    .line 45
    :cond_0
    sget-object v0, Landroid/webkitsec/WebDragHandler;->mInstance:Landroid/webkitsec/WebDragHandler;

    return-object v0
.end method

.method static isDragSelection()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    return v0
.end method

.method static startDragSelection(Landroid/webkitsec/WebViewClassic;)V
    .locals 9
    .param p0, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "copyString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 54
    .local v2, "dragData":Landroid/content/ClipData;
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v4

    if-nez v4, :cond_0

    .line 81
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_1

    .line 58
    const-string v4, "WebDragHandler"

    const-string/jumbo v5, "startDragSelection: HtmlComposerView "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    check-cast v4, Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "copyHtmlString":Ljava/lang/String;
    invoke-static {v8, v1, v0}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    .line 61
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;

    move-result-object v4

    sput-object v4, Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 62
    const/4 v4, 0x2

    sput v4, Landroid/webkitsec/WebDragHandler;->mType:I

    .line 72
    .end local v0    # "copyHtmlString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 74
    new-instance v4, Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v4, v3}, Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v2, v4, v8, v6}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    const-string v4, "WebDragHandler"

    const-string/jumbo v5, "startDragSelection: starDrag failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sput-boolean v6, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    goto :goto_0

    .line 65
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;

    move-result-object v4

    sput-object v4, Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 67
    sput v7, Landroid/webkitsec/WebDragHandler;->mType:I

    goto :goto_1

    .line 79
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    sput-boolean v7, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    goto :goto_0
.end method

.method static startDragSelection(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "webView"    # Landroid/webkitsec/WebViewClassic;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 90
    .local v0, "dragData":Landroid/content/ClipData;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    sget-object v2, Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 92
    const-string v2, "WebDragHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDragSelection: Failed to decode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    const/4 v2, 0x3

    sput v2, Landroid/webkitsec/WebDragHandler;->mType:I

    .line 96
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/webkitsec/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    const-string v2, "WebDragHandler"

    const-string/jumbo v3, "startDragSelection: starDrag failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput-boolean v5, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    goto :goto_0
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 150
    .local v0, "action":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 152
    :cond_0
    sput-boolean v1, Landroid/webkitsec/WebDragHandler;->isDragSelection:Z

    .line 154
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return v1

    .line 157
    :pswitch_0
    sput-object v3, Landroid/webkitsec/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 158
    sput-object v3, Landroid/webkitsec/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
