.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;


# direct methods
.method constructor <init>(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, checkedNum:I
    const/4 v3, 0x0

    .line 334
    .local v3, isDeleted:Z
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    sub-int v2, v4, v7

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 337
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$400(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, del_id:I
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->deleteRejectMessage(I)V
    invoke-static {v4, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$500(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)V

    .line 341
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$400(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    const/4 v3, 0x1

    .line 345
    .end local v1           #del_id:I
    :cond_0
    const-string v4, "RejectCallWithMsgSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=======OnmDeleteClickListener======="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 348
    :cond_1
    if-nez v3, :cond_3

    .line 350
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    const v6, 0x7f0d0016

    invoke-virtual {v5, v6}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->displayToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$700(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;Ljava/lang/String;)V

    .line 379
    :cond_2
    :goto_1
    return-void

    .line 354
    :cond_3
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    const v6, 0x7f0d0015

    invoke-virtual {v5, v6}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->displayToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$700(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->softkeyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$800(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    .line 371
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    :cond_4
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v5, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v7

    :goto_2
    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v4, v5}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 376
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v4}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$000(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 377
    iget-object v4, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$7;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v4, v4, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 374
    :cond_5
    const/4 v5, 0x2

    goto :goto_2
.end method
