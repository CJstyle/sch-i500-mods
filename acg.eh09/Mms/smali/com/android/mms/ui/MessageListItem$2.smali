.class Lcom/android/mms/ui/MessageListItem$2;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->hasDrmContents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$2;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$2;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V

    goto :goto_0
.end method
