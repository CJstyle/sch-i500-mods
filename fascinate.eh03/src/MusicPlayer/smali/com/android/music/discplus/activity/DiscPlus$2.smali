.class Lcom/android/music/discplus/activity/DiscPlus$2;
.super Landroid/content/BroadcastReceiver;
.source "DiscPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/activity/DiscPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/activity/DiscPlus;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/activity/DiscPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v1, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->setPlaying()V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$100(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/TopView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$100(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/TopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/TopView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$100(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/TopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/TopView;->setPlayButtonImage()V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus$2;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v1}, Lcom/android/music/discplus/activity/DiscPlus;->access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->setPlaying()V

    goto :goto_0
.end method
