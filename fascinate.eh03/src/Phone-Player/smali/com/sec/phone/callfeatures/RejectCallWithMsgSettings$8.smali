.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;
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
    .line 383
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 396
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v0, v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$800(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v0, v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v0, v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v0, v0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->softkeyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$8;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$600(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v0, v1}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 403
    return-void

    .line 402
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
