.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.super Landroid/app/ListActivity;
.source "InstalledAppsListActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/activity/ControlPanelActivityImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;,
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InstalledAppsListActivity"


# instance fields
.field private final DBG:Z

.field private mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mHelp:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus:Landroid/widget/TextView;

.field private mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->DBG:Z

    .line 98
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 107
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private reloadPkgInfo()V
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getThirdPartyPkgList()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    invoke-direct {v2, p0, p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    .line 87
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 88
    .local v1, lv:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .end local v1           #lv:Landroid/widget/ListView;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->refreshObservedPkgList(Ljava/util/List;)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfo;->startGettingPackageInformation()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->setList(Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->requestWindowFeature(I)Z

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->requestWindowFeature(I)Z

    .line 48
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->setContentView(I)V

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->initInstalledPkgList()V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->initInstalledPkgList()V

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->reloadPkgInfo()V

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 78
    return-void
.end method
