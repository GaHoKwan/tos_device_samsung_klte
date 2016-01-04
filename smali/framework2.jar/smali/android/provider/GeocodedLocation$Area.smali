.class public final Landroid/provider/GeocodedLocation$Area;
.super Ljava/lang/Object;
.source "GeocodedLocation.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GeocodedLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Area"
.end annotation


# static fields
.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final AREA_NAME:Ljava/lang/String; = "province"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PATH:Ljava/lang/String; = "area"


# instance fields
.field private mAreaId:J

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://geocoded_location/area"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/GeocodedLocation$Area;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "area_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/provider/GeocodedLocation$Area;->mAreaId:J

    .line 75
    const-string/jumbo v0, "province"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/GeocodedLocation$Area;->mName:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getAreaId()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Landroid/provider/GeocodedLocation$Area;->mAreaId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/provider/GeocodedLocation$Area;->mName:Ljava/lang/String;

    return-object v0
.end method
