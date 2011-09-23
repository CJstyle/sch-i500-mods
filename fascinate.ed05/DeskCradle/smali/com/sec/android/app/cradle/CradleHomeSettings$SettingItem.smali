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
    .line 462
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->this$0:Lcom/sec/android/app/cradle/CradleHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    .line 464
    iput-object p3, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 465
    iput p4, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    .line 466
    iput-boolean p5, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 468
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mMainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 479
    iget v0, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 480
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mStateChecked:Z

    .line 482
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "_enabled"

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mEnabled:Z

    .line 476
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subString"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleHomeSettings$SettingItem;->mSubTitle:Ljava/lang/String;

    .line 472
    return-void
.end method
