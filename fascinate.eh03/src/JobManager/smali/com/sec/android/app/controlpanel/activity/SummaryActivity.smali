.class public Lcom/sec/android/app/controlpanel/activity/SummaryActivity;
.super Landroid/app/Activity;
.source "SummaryActivity.java"


# static fields
.field static final DEBUGGABLE:Z


# instance fields
.field mDBData:Landroid/widget/TextView;

.field mDBDataProg:Landroid/widget/ProgressBar;

.field mData:Landroid/widget/TextView;

.field mDataProg:Landroid/widget/ProgressBar;

.field mExternalSdCard:Landroid/widget/TextView;

.field mExternalSdProg:Landroid/widget/ProgressBar;

.field mInternalSdCard:Landroid/widget/TextView;

.field mInternalSdProg:Landroid/widget/ProgressBar;

.field private mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 223
    const v5, 0x7f070023

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    .local v1, dbdata_textview:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 227
    .local v0, dbdata_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    const v5, 0x7f07002b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    .local v3, externalSD_textview:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    const v5, 0x7f07002c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 251
    .local v2, externalSD_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    const v5, 0x7f070027

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 254
    .local v4, textview:Landroid/widget/TextView;
    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 260
    const v5, 0x7f070021

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mData:Landroid/widget/TextView;

    .line 261
    const v5, 0x7f070025

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBData:Landroid/widget/TextView;

    .line 262
    const v5, 0x7f070029

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdCard:Landroid/widget/TextView;

    .line 263
    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdCard:Landroid/widget/TextView;

    .line 264
    const v5, 0x7f070022

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDataProg:Landroid/widget/ProgressBar;

    .line 265
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBDataProg:Landroid/widget/ProgressBar;

    .line 266
    const v5, 0x7f07002a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdProg:Landroid/widget/ProgressBar;

    .line 267
    const v5, 0x7f07002e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdProg:Landroid/widget/ProgressBar;

    .line 270
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 51
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->init()V

    .line 55
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, startMonitoring:Landroid/widget/Button;
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 58
    .local v1, stopMonitoring:Landroid/widget/Button;
    sget-boolean v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 121
    .local v0, menuId:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterReceiver()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerReceiver()V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/BatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->refresh()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    return-void
.end method
