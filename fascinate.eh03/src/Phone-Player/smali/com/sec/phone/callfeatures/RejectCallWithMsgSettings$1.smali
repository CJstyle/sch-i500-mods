.class Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 168
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    move v3, v5

    :goto_1
    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 170
    goto :goto_1

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->selectAllCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget-object v2, p0, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings$1;->this$0:Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;

    iget-object v2, v2, Lcom/sec/phone/callfeatures/RejectCallWithMsgSettings;->mDeleteButton:Landroid/widget/Button;

    if-nez v0, :cond_3

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    return-void

    :cond_2
    move v3, v4

    .line 173
    goto :goto_2

    :cond_3
    move v3, v4

    .line 174
    goto :goto_3
.end method
