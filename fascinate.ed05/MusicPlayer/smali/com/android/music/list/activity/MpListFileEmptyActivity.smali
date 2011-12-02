.class public Lcom/android/music/list/activity/MpListFileEmptyActivity;
.super Landroid/app/Activity;
.source "MpListFileEmptyActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mReceive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    .line 23
    const-string v0, "MpListFileEmptyActivity"

    iput-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;-><init>(Lcom/android/music/list/activity/MpListFileEmptyActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpListFileEmptyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/list/activity/MpListFileEmptyActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f0c0034

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, text:Landroid/widget/TextView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void

    .line 35
    .end local v0           #intentMediaStateFilter:Landroid/content/IntentFilter;
    :cond_0
    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume : String status = Environment.getExternalStorageState() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, mainStart:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->finish()V

    .line 73
    .end local v0           #mainStart:Landroid/content/Intent;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
