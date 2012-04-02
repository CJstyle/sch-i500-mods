.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.super Landroid/app/ListActivity;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

.field private mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Landroid/widget/TextView;

.field private mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

.field private mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

.field private mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private mStatus:Landroid/widget/TextView;

.field private mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

.field onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->DBG:Z

    .line 45
    const-string v0, "InstalledAppsListActivity"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->TAG:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 175
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$5;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 214
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$6;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$7;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    .line 313
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$8;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;)Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, "pkg"

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    const-string v1, "pkg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->intent:Landroid/content/Intent;

    const-string v2, "pkg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateInstalledPackageList(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->setContentView(I)V

    .line 58
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHelp:Landroid/widget/TextView;

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStatus:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 62
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mOnListButtonItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 66
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_0

    .line 352
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 331
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 332
    .local v1, sortOrder:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050001

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$9;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 341
    .end local v1           #sortOrder:I
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 343
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 345
    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$10;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v2, v0

    .line 350
    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 121
    const/16 v0, 0xb

    const v1, 0x7f060038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020104

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->saveCache()V

    .line 116
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 117
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 135
    .local v0, menuId:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->showDialog(I)V

    .line 145
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 137
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->loadPackageResource:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$LoadPackageResource;->cancel(Z)Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 105
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 128
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPackageInfoAdapter:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mAppInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/StorageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mStorageInfoObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/StorageInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 111
    return-void
.end method
