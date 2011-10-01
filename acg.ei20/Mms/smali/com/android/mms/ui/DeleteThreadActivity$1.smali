.class Lcom/android/mms/ui/DeleteThreadActivity$1;
.super Ljava/lang/Object;
.source "DeleteThreadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeleteThreadActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteThreadActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 329
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const v1, 0x7f080038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteThreadActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/mms/ui/MessageListAdapter;->toggle(Landroid/view/View;II)V

    .line 337
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeleteThreadActivity$1;->this$0:Lcom/android/mms/ui/DeleteThreadActivity;

    iget-object v0, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
