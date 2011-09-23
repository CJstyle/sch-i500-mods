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
    .line 493
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 495
    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 496
    iput p4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    .line 497
    iput-boolean p5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 499
    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 510
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 513
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "_enabled"

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    .line 507
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subString"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 503
    return-void
.end method
