.class Lcom/android/music/list/activity/MpListReorderActivity$3;
.super Ljava/lang/Object;
.source "MpListReorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListReorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListReorderActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListReorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/music/list/activity/MpListReorderActivity$3;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity$3;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListReorderActivity;->showDialog(I)V

    .line 249
    iget-object v0, p0, Lcom/android/music/list/activity/MpListReorderActivity$3;->this$0:Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListReorderActivity;->access$100(Lcom/android/music/list/activity/MpListReorderActivity;)Lcom/android/music/list/view/MpListReorderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/list/view/MpListReorderView;->submitReorder()V

    .line 251
    return-void
.end method
