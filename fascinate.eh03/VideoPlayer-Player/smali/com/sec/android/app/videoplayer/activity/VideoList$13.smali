.class Lcom/sec/android/app/videoplayer/activity/VideoList$13;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$13;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$13;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$13;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2702(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1478
    return-void
.end method
