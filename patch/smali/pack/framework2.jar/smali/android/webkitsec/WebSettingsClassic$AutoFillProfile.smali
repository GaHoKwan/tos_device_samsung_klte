.class public Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
.super Ljava/lang/Object;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettingsClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoFillProfile"
.end annotation


# instance fields
.field private mAddressLine1:Ljava/lang/String;

.field private mAddressLine2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mUniqueId:I

.field private mZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # I
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "companyName"    # Ljava/lang/String;
    .param p5, "addressLine1"    # Ljava/lang/String;
    .param p6, "addressLine2"    # Ljava/lang/String;
    .param p7, "city"    # Ljava/lang/String;
    .param p8, "state"    # Ljava/lang/String;
    .param p9, "zipCode"    # Ljava/lang/String;
    .param p10, "country"    # Ljava/lang/String;
    .param p11, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mUniqueId:I

    .line 225
    iput-object p2, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mFullName:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    .line 227
    iput-object p4, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    .line 228
    iput-object p5, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    .line 229
    iput-object p6, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    .line 230
    iput-object p7, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCity:Ljava/lang/String;

    .line 231
    iput-object p8, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mState:Ljava/lang/String;

    .line 232
    iput-object p9, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mZipCode:Ljava/lang/String;

    .line 233
    iput-object p10, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCountry:Ljava/lang/String;

    .line 234
    iput-object p11, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mUniqueId:I

    return v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;->mZipCode:Ljava/lang/String;

    return-object v0
.end method
