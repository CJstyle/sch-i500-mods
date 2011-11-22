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
    .line 503
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->this$0:Lcom/sec/android/app/cradle/CradleWeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 506
    iput p4, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    .line 507
    iput-boolean p5, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mEnabled:Z

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 509
    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 520
    iget v0, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 521
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleWeatherSettings$SettingItem;->mStateChecked:Z

    .line 523
    :cond_0
    return-void
.end method
