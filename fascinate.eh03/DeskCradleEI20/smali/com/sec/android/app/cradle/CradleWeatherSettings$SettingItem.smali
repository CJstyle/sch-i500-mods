.class public Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleWeatherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingItem"
.end annotation


# instance fields
.field public mEnabled:Z

.field private mMainTitle:Ljava/lang/String;

.field public mStateChecked:Z

.field private mSubTitle:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/CradleWeatherSettings;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 416
    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 417
    iput p4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    .line 418
    iput-boolean p5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 420
    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 431
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 434
    :cond_0
    return-void
.end method
