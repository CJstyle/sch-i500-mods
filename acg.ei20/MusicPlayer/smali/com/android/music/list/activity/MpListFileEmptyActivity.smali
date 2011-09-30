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
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    .line 20
    const-string v0, "MpListFileEmptyActivity"

    iput-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;-><init>(Lcom/android/music/list/activity/MpListFileEmptyActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpListFileEmptyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/list/activity/MpListFileEmptyActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 27
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->setContentView(I)V

    .line 28
    const v2, 0x7f0c0034

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, text:Landroid/widget/TextView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const v2, 0x7f0a00f2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void

    .line 32
    .end local v0           #intentMediaStateFilter:Landroid/content/IntentFilter;
    :cond_0
    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : String status = Environment.getExternalStorageState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity;->mReceive:Z

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->finish()V

    .line 70
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
