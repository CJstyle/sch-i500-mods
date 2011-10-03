.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.super Landroid/app/ListActivity;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

.field private mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

.field private mHandler:Landroid/os/Handler;

.field private mKillAll:Landroid/widget/Button;

.field private mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

.field private mObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->DBG:Z

    .line 44
    const-string v0, "RunningAppsListActivity"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 125
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 140
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 207
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$6;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    .line 220
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$7;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$8;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/MemoryInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateKillAllBtn(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->updateStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$LoadPackageResource;

    return-object p1
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
    .line 410
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isThereAppCanBeKilled(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    .line 175
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

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    .line 61
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus1:Landroid/widget/TextView;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mStatus2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnClickListenerKillAll:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mKillAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 74
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mOnListItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 371
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 372
    .local v1, sortOrder:I
    packed-switch p1, :pswitch_data_0

    .line 406
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 374
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f05

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$9;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    const-string v3, "position"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 384
    .local v0, packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050002

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$10;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 180
    const/16 v0, 0xb

    const v1, 0x7f060038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020104

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, menuId:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 195
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->showDialog(I)V

    .line 204
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 196
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$5;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 109
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 187
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

    .line 188
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mCpuInfo:Lcom/sec/android/app/controlpanel/CpuInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mMemoryInfo:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 100
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 86
    return-void
.end method
