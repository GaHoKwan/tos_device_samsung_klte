.class Landroid/webkitsec/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# static fields
.field static final REASON_ACCESSIBILITY_INJECTOR:I = 0x1

.field static final REASON_SELECT_WORD:I = 0x2

.field static final REASON_UNKNOWN:I


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mSelectionReason:I

.field mStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "selectTextPtr"    # I

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 1161
    iput p1, p0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    .line 1162
    iput p2, p0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    .line 1163
    iput p3, p0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    .line 1164
    return-void
.end method
