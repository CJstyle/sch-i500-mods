.class public Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleHomeSettings;
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

.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/cradle/CradleHomeSettings;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter "_title"
    .parameter "_subText"
    .parameter "_type"
    .parameter "_enabled"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 501
    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 502
    iput p4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    .line 503
    iput-boolean p5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 505
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 516
    iget v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 517
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 519
    :cond_0
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subString"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 509
    return-void
.end method
