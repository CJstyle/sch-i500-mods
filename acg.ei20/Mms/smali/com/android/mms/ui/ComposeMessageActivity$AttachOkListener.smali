.class Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachOkListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ZJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    .line 5414
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5415
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mContext:Landroid/content/Context;

    .line 5416
    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mSave:Z

    .line 5417
    iput-wide p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mMsgId:J

    .line 5418
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5421
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 5422
    .local v5, lv:Landroid/widget/ListView;
    if-nez v5, :cond_1

    .line 5460
    :cond_0
    :goto_0
    return-void

    .line 5427
    :cond_1
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/AttachmentListAdapter;

    .line 5428
    .local v4, la:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5429
    .local v6, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v8

    sub-int v3, v8, v9

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_4

    .line 5430
    invoke-virtual {v4, v3, v10, v10}, Lcom/android/mms/ui/AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 5431
    .local v7, rowItem:Landroid/view/View;
    const v8, 0x7f080005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 5432
    .local v2, cb:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5433
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 5434
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mSave:Z

    if-eqz v8, :cond_3

    .line 5436
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5429
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5438
    .restart local v1       #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5442
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v2           #cb:Landroid/widget/CheckBox;
    .end local v7           #rowItem:Landroid/view/View;
    :cond_4
    iget-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mSave:Z

    if-eqz v8, :cond_6

    .line 5443
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 5444
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->mMsgId:J

    invoke-static {v8, v6, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;J)V

    goto :goto_0

    .line 5447
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 5450
    :cond_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5451
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5452
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v8

    if-nez v8, :cond_0

    .line 5453
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 5454
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5455
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$AttachOkListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0
.end method
