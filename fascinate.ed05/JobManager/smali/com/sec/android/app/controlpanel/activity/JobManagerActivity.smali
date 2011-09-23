.class public Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "JobManagerActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "JobManagerActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    return-void
.end method

.method private switchTabByIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v5, "tab1"

    .line 61
    const-string v2, "monitor_widget_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    .local v1, fromWidget:Z
    const-string v2, "recent_app_dialog_start"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .local v0, fromRecentAppDialog:Z
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    const-string v3, "tab1"

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 68
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
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->requestWindowFeature(I)Z

    .line 20
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    .line 24
    .local v0, tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020008

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

    .line 28
    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020009

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

    .line 32
    const-string v1, "tab3"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 36
    const-string v1, "tab4"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060018

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

    const-class v3, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 40
    const-string v1, "tab5"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

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

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 47
    new-instance v1, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 52
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->switchTabByIntent(Landroid/content/Intent;)V

    .line 57
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V

    .line 75
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->destroyAllInfos()V

    .line 76
    return-void
.end method
