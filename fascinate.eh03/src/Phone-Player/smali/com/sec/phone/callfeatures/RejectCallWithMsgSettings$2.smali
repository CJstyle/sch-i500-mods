.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 180
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$000(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 184
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    add-int/lit8 v3, p3, 0x1

    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mSelectedItem:I
    invoke-static {v2, v3}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$102(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 185
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    const/4 v3, 0x4

    #setter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v2, v3}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$002(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;I)I

    .line 186
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #calls: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->alertdialogRejectMessage()V
    invoke-static {v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$200(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    #getter for: Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mState:I
    invoke-static {v2}, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->access$000(Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteButton:Landroid/widget/Button;

    if-lez v0, :cond_4

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$2;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v3, v3, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 194
    goto :goto_2

    :cond_5
    move v3, v5

    .line 195
    goto :goto_3
.end method
