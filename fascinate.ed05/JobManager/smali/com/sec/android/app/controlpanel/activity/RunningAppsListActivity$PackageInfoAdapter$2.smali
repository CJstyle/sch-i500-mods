.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;
.super Ljava/lang/Object;
.source "RunningAppsListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return v2

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;Z)Z

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;->this$1:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;

    invoke-static {v0, v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;Z)Z

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
