.class Lcom/android/music/list/activity/MpListActivity$2;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->checkPlayButtonEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$100(Lcom/android/music/list/activity/MpListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 896
    return-void
.end method
