.class Lcom/sec/android/app/videoplayer/activity/VideoList$11;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->createListbyPopup()V
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
    .line 1316
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1319
    packed-switch p2, :pswitch_data_0

    .line 1339
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1341
    return-void

    .line 1322
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x5

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2102(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    goto :goto_0

    .line 1326
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2102(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    goto :goto_0

    .line 1330
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x7

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2102(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    goto :goto_0

    .line 1334
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x6

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2102(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$11;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    goto :goto_0

    .line 1319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
