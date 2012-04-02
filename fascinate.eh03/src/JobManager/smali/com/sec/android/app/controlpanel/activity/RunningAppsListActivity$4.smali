.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 156
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$100(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$4;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$000(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->setButtonPressed(Z)V

    .line 166
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
