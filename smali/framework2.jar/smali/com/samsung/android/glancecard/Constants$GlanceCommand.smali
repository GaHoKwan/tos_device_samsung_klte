.class public Lcom/samsung/android/glancecard/Constants$GlanceCommand;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glancecard/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlanceCommand"
.end annotation


# static fields
.field public static final ADD_ALL_CARDS_TO_TRAY:I = 0x0

.field public static final ADD_CARD_TO_TRAY:I = 0x1

.field public static final CLOSE_TRAY:I = 0x7

.field public static final HIDE_TRAY:I = 0x6

.field public static final REMOVE_ALL_CARDS_FROM_TRAY:I = 0x3

.field public static final REMOVE_CARD_FROM_TRAY:I = 0x4

.field public static final SHOW_TRAY:I = 0x5

.field public static final TOGGLE_TRAY_BY_ACTIONBAR:I = 0x14

.field public static final UPDATE_CARDS_TO_TRAY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
