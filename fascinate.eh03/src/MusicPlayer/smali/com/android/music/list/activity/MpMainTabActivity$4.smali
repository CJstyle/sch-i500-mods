.class Lcom/android/music/list/activity/MpMainTabActivity$4;
.super Landroid/os/Handler;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$4;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$4;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusUtils;->setDefaultImage(Landroid/content/Context;)V

    .line 794
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 795
    return-void
.end method
