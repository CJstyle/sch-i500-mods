.class public Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "JobManagerActivity.java"


# instance fields
.field private tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    return-void
.end method

.method private switchTabByIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v5, "tab1"

    .line 62
    const-string v2, "monitor_widget_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 63
    .local v1, fromWidget:Z
    const-string v2, "recent_app_dialog_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, fromRecentAppDialog:Z
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    const-string v3, "activetabString"

    const-string v4, "tab1"

    invoke-static {p0, v3, v5}, Lcom/sec/android/app/controlpanel/Utils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.controlpanel.service.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v2, "tab1"

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v2, "tab2"

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v2, "tab3"

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v2, "tab4"

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const-string v2, "tab5"

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/HelpActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 58
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "activetabString"

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/controlpanel/Utils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/Utils;->writeLocaleConfig(Landroid/content/Context;)V

    .line 52
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V

    .line 53
    return-void
.end method
