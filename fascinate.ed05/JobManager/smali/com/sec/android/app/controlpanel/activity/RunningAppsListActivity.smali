.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.super Landroid/app/ListActivity;
.source "RunningAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/activity/ControlPanelActivityImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;,
        Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_LIST_VIEW:I = 0x0

.field static final TAG:Ljava/lang/String; = "RunningAppsListActivity"


# instance fields
.field private final DBG:Z

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKillAll:Landroid/widget/Button;

.field private mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

.field private mObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->DBG:Z

    .line 189
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    .line 220
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 279
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->sendUpdateListMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateKillAllBtn(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private isThereAppCanBeKilled(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 111
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    .line 115
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reloadRunningPkgs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    const v3, 0x7f060032

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningPackageInfo()Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-direct {v2, p0, p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    .line 134
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 135
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 136
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 144
    .end local v1           #lv:Landroid/widget/ListView;
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateKillAllBtn(Ljava/util/List;)V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->refreshObservedPkgList(Ljava/util/List;)V

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->addObservedPkgList(Ljava/util/List;)V

    .line 148
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->setList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendUpdateListMsg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    return-void
.end method

.method private updateKillAllBtn(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->isThereAppCanBeKilled(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->requestWindowFeature(I)Z

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->requestWindowFeature(I)Z

    .line 72
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->setContentView(I)V

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 82
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v2, 0x7f060039

    const/high16 v3, 0x7f05

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getSortOrder()I

    move-result v0

    .line 255
    .local v0, sortOrder:I
    packed-switch p1, :pswitch_data_0

    .line 274
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 257
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 266
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 172
    const/16 v0, 0xb

    const v1, 0x7f060038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 173
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 184
    .local v0, menuId:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->showDialog(I)V

    .line 187
    :cond_0
    return v2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 107
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 178
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 179
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->initInstalledPkgList()V

    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->reloadRunningPkgs()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateStatus()V

    .line 164
    return-void
.end method
