.class public Lcom/sec/android/app/controlpanel/activity/SummaryActivity;
.super Landroid/app/Activity;
.source "SummaryActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/activity/ControlPanelActivityImpl;


# static fields
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUGGABLE:Z = false

.field static final TAG:Ljava/lang/String; = "SummaryActivity"


# instance fields
.field mDBData:Landroid/widget/TextView;

.field mDBDataProg:Landroid/widget/ProgressBar;

.field mData:Landroid/widget/TextView;

.field mDataProg:Landroid/widget/ProgressBar;

.field mExternalSdCard:Landroid/widget/TextView;

.field mExternalSdProg:Landroid/widget/ProgressBar;

.field mInternalSdCard:Landroid/widget/TextView;

.field mInternalSdProg:Landroid/widget/ProgressBar;

.field mStartMonitoring:Landroid/widget/Button;

.field mStopMonitoring:Landroid/widget/Button;

.field private mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
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
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 192
    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 193
    .local v0, dbdata_layout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 203
    .local v1, externalSD_layout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 211
    const v3, 0x7f070026

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mData:Landroid/widget/TextView;

    .line 212
    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBData:Landroid/widget/TextView;

    .line 213
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdCard:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdCard:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDataProg:Landroid/widget/ProgressBar;

    .line 216
    const v3, 0x7f07002a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBDataProg:Landroid/widget/ProgressBar;

    .line 217
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdProg:Landroid/widget/ProgressBar;

    .line 218
    const v3, 0x7f070032

    invoke-virtual {p0, v3}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdProg:Landroid/widget/ProgressBar;

    .line 221
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->requestWindowFeature(I)Z

    .line 49
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->init()V

    .line 53
    const v2, 0x7f070035

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, startMonitoring:Landroid/widget/Button;
    const v2, 0x7f070036

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 56
    .local v1, stopMonitoring:Landroid/widget/Button;
    sget-boolean v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 242
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mStorageObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/BatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/BatteryInfo;->refresh()V

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    return-void
.end method
