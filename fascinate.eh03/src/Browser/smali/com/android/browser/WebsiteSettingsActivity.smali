.class public Lcom/android/browser/WebsiteSettingsActivity;
.super Landroid/app/ListActivity;
.source "WebsiteSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;,
        Lcom/android/browser/WebsiteSettingsActivity$Site;
    }
.end annotation


# static fields
.field private static sMBStored:Ljava/lang/String;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/WebsiteSettingsActivity;->sMBStored:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    const-string v0, "WebsiteSettingsActivity"

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->LOGTAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/WebsiteSettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/browser/WebsiteSettingsActivity;->sMBStored:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/WebsiteSettingsActivity;)Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->backKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 584
    if-eqz p1, :cond_1

    .line 586
    const/4 v0, 0x0

    .line 589
    .local v0, restart:Z
    if-eqz p1, :cond_0

    .line 590
    const-string v1, "key_restart"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 591
    :cond_0
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity;->finish()V

    .line 595
    .end local v0           #restart:Z
    :cond_1
    sget-object v1, Lcom/android/browser/WebsiteSettingsActivity;->sMBStored:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 596
    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/android/browser/WebsiteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/browser/WebsiteSettingsActivity;->sMBStored:Ljava/lang/String;

    .line 598
    :cond_2
    new-instance v1, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    const v2, 0x7f03002a

    invoke-direct {v1, p0, p0, v2}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;-><init>(Lcom/android/browser/WebsiteSettingsActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    .line 599
    iget-object v1, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {p0, v1}, Lcom/android/browser/WebsiteSettingsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 601
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/browser/WebsiteSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 613
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 614
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 626
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 646
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 629
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090105

    new-instance v2, Lcom/android/browser/WebsiteSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/android/browser/WebsiteSettingsActivity$1;-><init>(Lcom/android/browser/WebsiteSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 644
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x7f0d00e5
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->currentSite()Lcom/android/browser/WebsiteSettingsActivity$Site;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/WebsiteSettingsActivity;->mAdapter:Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/WebsiteSettingsActivity$SiteAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 606
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 607
    const-string v0, "key_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 608
    return-void
.end method
